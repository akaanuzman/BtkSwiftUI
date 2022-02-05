import SwiftUI

struct TodoDetailView: View {
    var title: String
    var subtitle: String
    @State var isDone: Bool = false
    var body: some View {
        VStack {
            Text(title)
                .bold().font(.largeTitle)
                .foregroundColor(isDone ? .green : .red).padding()
            Text(subtitle).font(.title3)
                .padding()
            DoneNotDoneButton(isDone: $isDone)
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(title: "Test Title", subtitle: "test content")
    }
}
