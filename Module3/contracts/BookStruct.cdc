// Define the contract
pub contract BookStruct {

    // Define the struct
    pub struct Book {
        pub let id: UInt64
        pub let title: String
        pub let author: String

        // Constructor for the struct
        init(id: UInt64, title: String, author: String) {
            self.id = id
            self.title = title
            self.author = author
        }
    }

    // Declare a dictionary to hold Book structs
    pub var books: {UInt64: Book}

    // Initialize the contract
    init() {
        self.books = {}
    }

    // Function to add a Book to the dictionary
    pub fun addBook(id: UInt64, title: String, author: String) {
        let book = Book(id: id, title: title, author: author)
        self.books[id] = book
    }

    // Function to get a Book by it's Id
    pub fun getBook(id: UInt64): Book? {
        return self.books[id]
    }
}