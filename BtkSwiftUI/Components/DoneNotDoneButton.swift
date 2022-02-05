import SwiftUI

struct DoneNotDoneButton: View {
    @Binding var isDone : Bool
    var body: some View {
        Button {
            isDone.toggle()
        } label: {
            Text("Done / Not Done")
        }.padding()
    }
}

