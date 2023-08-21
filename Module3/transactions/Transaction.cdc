// Import BookStruct Contract
import BookStruct from 0x01

// Transaction to add a book
transaction(id: UInt64, title: String, author: String) {
    
    prepare(acct: AuthAccount) {}

    execute {
      BookStruct.addBook(id: id, title: title, author: author)
      log("Added Successfully")
    }
}