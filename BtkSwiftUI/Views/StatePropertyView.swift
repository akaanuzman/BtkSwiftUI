import SwiftUI

struct StatePropertyView: View {
    @State var myString: String = "My Text"
    @State var counter: Int = 1
    var textFieldWidth: Double = UIScreen.main.bounds.width * 0.8
    var body: some View {
        VStack {
            Text(myString).font(.largeTitle).bold().padding()
            Text("Count : \(counter)")
                .font(.largeTitle).padding()
            Button {
                counter += 1
            } label: {
                Text("Increment")
            }
            TextField("Enter a text.", text: $myString).frame(width: textFieldWidth, height: 70, alignment: .center).foregroundColor(Color.gray).multilineTextAlignment(.center)
        }


    }
}

struct StatePropertyView_Previews: PreviewProvider {
    static var previews: some View {
        StatePropertyView()
    }
}
