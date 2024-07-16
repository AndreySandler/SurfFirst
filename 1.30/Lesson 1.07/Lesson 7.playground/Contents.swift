import UIKit

//: # Lesson 7
//: ## Классы

let postTitle = "Classes"
let postBody = "Text of the article"
let postAuthor = "Alexey Efimov"

let postTitle2 = "Properties of classes"
let postBody2 = "Text of the article"
let postAuthor2 = postAuthor

class Post {
    var title = ""
    var body = ""
    var author = ""
    var numberOfComments: Int {
        comments.count
    }
    private var comments: [String] = []
    
    func addComment(_ comment: String) {
        comments.append(comment)
    }
    
    func showAllComments() {
        for comment in comments {
            print(comment)
        }
    }
}

let firstPost = Post()
firstPost.title = "This is my first post"
firstPost.body = "Hello"
firstPost.author = "Efimov Alexey"
firstPost.addComment("Thank you so much")
firstPost.addComment("New comment")
firstPost.numberOfComments
firstPost.showAllComments()

let secondPost = Post()
secondPost.title = "Second post"
secondPost.body = "A lot of text"
secondPost.author

print("The number of comments to the post \(firstPost.title) is \(firstPost.numberOfComments)")
print("The number of comments to the post \(secondPost.title) is \(secondPost.numberOfComments)")

//print("Author \(firstPost.author) has published new post '\(firstPost.title)' with text '\(firstPost.body)'")
//print("Author \(secondPost.author) has published new post '\(secondPost.title)' with text '\(secondPost.body)'")

firstPost === secondPost

//: ### Методы классов. Инициализаторы

class Human {
    let name: String
    var age = 0
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let person = Human(name: "Tim Cook", age: 61)
person.name
person.age

let tim = Human(name: "Tim Cook")
tim.name
tim.age
