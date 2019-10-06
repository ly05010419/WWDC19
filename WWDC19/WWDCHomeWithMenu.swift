
import SwiftUI

struct WWDCHomeWithMenu: View {
    @State var schowProfile:Bool = false
    @State var show = false
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            NavigationView{
//                List {
                ScrollView(.vertical, showsIndicators: false){
                    Image("Los_Angeles").resizable().aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .clipped()
                        .listRowInsets(EdgeInsets())
                    RowViewWithCard(name: "All",items: Array(landmarkData))
                        .frame(height: 310)
                        .listRowInsets(EdgeInsets())
                    ForEach(categories.keys.sorted(), id: \.self) { key in
                        RowView(name: key, items: self.categories[key]!).listRowInsets(EdgeInsets())
                    }
                }.navigationBarTitle(Text("Featured"),displayMode:.inline)
            }
        }
    }
    
}





struct MenuView: View {
    
    @Binding var show: Bool
    
    var items = [
        Menu(title: "Account", icon: "person.crop.circle"),
        Menu(title: "Profile", icon: "creditcard"),
        Menu(title: "Settings", icon: "gear"),
        Menu(title: "Sign out", icon: "arrow.uturn.down")
    ]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            ForEach(items) { item in
                MenuRow(image: item.icon, text: item.title)
            }
            Spacer()
        }
        .padding(.top, 20)
        .padding(20)
        .frame(minWidth: 0, maxWidth: 280)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .rotation3DEffect(Angle(degrees: show ? 0 : 60), axis: (x: 0, y: 10.0, z: 0))
        .animation(.easeOut)
        .offset(x: show ? 0 : -UIScreen.main.bounds.width)
        .onTapGesture {
            self.show.toggle()
        }
    }
}


struct MenuRow: View {
    
    var image = "creditcard"
    var text = "My Account"
    
    var body: some View {
        return HStack {
            Image(systemName: image)
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width: 32, height: 32)
            
            Text(text)
                .font(.headline)
                .foregroundColor(.primary)
            
            Spacer()
        }
    }
}

struct Menu: Identifiable {
    var id = UUID()
    var title: String
    var icon: String
}






struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        WWDCHomeWithMenu().previewDevice(PreviewDevice(rawValue: "iPhone XR"))
    }
}
