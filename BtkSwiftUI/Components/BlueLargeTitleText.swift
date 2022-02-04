import SwiftUI

struct BlueLargeTitleText: View {
    var text: String
    var body: some View {
        Text(text).font(.largeTitle)
            .foregroundColor(.blue)
    }
}

struct BlueLargeTitleText_Previews: PreviewProvider {
    static var previews: some View {
        BlueLargeTitleText(text: "Test")
    }
}
