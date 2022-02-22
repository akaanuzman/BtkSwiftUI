import SwiftUI

struct PreviewView: View {
    var body: some View {
        HStack {
            Image("kütahya").resizable().frame(width: 100, height: 75, alignment: .leading)
            Spacer()
            VStack {
                Text("City: Kutahya").font(.title2)
                Text("Region: Aegean").font(.title3)
            }
            Spacer()
        }.padding()
    }
}

struct PreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView().previewLayout(.sizeThatFits)
    }
}
