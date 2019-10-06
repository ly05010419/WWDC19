
import SwiftUI

struct WWDCHome: View {
    @State var schowProfile:Bool = false
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
//        List{
        ScrollView(.vertical, showsIndicators: false){
            Image("Los_Angeles").resizable().aspectRatio(contentMode: .fill)
                .frame(height: CGFloat(200))
                .clipped()
                .listRowInsets(EdgeInsets())
            RowViewWithCard(name: "All",items: Array(landmarkData))
                .frame(height: CGFloat(310))
                .listRowInsets(EdgeInsets())
            
            ForEach(categories.keys.sorted(), id: \.self) { key in
                RowView(name: key, items: self.categories[key]!)
                    .listRowInsets(EdgeInsets())
            }
            }.navigationBarTitle(Text("Featured"),displayMode: .inline)
//            .navigationBarItems(trailing: Button(action: {
//            self.schowProfile.toggle()
//        }){
//            Image(systemName: "person.crop.circle")
//                .imageScale(.large)
//                .padding(.vertical,30).padding(.leading,30).padding(.trailing,10)
//        }).sheet(isPresented: $schowProfile){
//            ProfileView()
//        }
        
    }
    
}










struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        WWDCHome().previewDevice(PreviewDevice(rawValue: "iPhone XR"))
    }
}
