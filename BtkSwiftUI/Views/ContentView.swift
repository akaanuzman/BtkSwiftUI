import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                SpecialCircleImage(url: "user_icon1", borderColor: Color.green)
                SpecialCircleImage(url: "user_icon2", borderColor: Color.black)
                Button(action: {
                    print("click")
                }, label: { Text("Click me !") }
                )

                NavigationLink(destination: SecondaryPageView(), label: {
                    Text("Go to next page")
                }).navigationTitle(Text("First Title"))
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
