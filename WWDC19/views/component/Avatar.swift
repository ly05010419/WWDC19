import SwiftUI

struct Avatar: View {
    var imageName:String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
            .navigationBarTitle(Text("Avatar"),displayMode: .inline)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        Avatar(imageName: "chilkoottrail")
    }
}





