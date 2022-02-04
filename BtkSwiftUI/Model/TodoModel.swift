import Foundation

struct TodoModel: Identifiable {
    var id: UUID = UUID()
    var todoName: String
    var todoContent: String
}

extension TodoModel {
    static let todos: [TodoModel] = [
        TodoModel(todoName: "Gym", todoContent: "Go to gym."),
        TodoModel(todoName: "Walk", todoContent: "Walk twenty minutes."),
        TodoModel(todoName: "Play ", todoContent: "Play video games one hours."),
        TodoModel(todoName: "Watch", todoContent: "Watch TV two hours.")
    ]

    static let fakeTodo: TodoModel = TodoModel(todoName: "", todoContent: "")
}
