import SwiftUI

struct TodoView: View {
    var body: some View {
        NavigationView {
            List(TodoModel.todos) {
                todo in
                NavigationLink(destination: TodoDetailView(title: todo.todoName, subtitle: todo.todoContent), label: {
                    Text(todo.todoContent)
                })
            }.navigationTitle(Text("Todos"))
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
