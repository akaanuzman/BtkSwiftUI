import SwiftUI

struct SpecialCircleImage: View {
    let url: String
    let borderColor: Color
    var body: some View {
        Image(url).resizable().aspectRatio(contentMode: .fit)
            .clipShape(Circle()).overlay(Circle().stroke(borderColor, lineWidth: 5)).shadow(radius: 10)
            .padding()
    }
}

struct SpecialCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        SpecialCircleImage(url: "user_icon2", borderColor: Color.black)
    }
}
