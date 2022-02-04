import SwiftUI

struct SheetView: View {

    @State var number: Int = 0
    @State var isGoToNextPage: Bool = false

    var body: some View {
        VStack {
            HStack {
                Button {
                    number -= 1
                } label: {
                    BlueLargeTitleText(text: "-")
                }
                BlueLargeTitleText(text: "\(number)")
                Button {
                    number += 1
                } label: {
                    BlueLargeTitleText(text: "+")
                }
            }.padding()
            Button {
                number == 10 ?
                isGoToNextPage.toggle(): print("Number is not equal 10")
            } label: {
                Text("Click and go to next page !").font(.title)
                    .foregroundColor(Color.blue)

            }.sheet(isPresented: $isGoToNextPage) {
                SecondaryPageView()
            }
        }
    }

    struct SheetView_Previews: PreviewProvider {
        static var previews: some View {
            SheetView()
        }
    }
}
