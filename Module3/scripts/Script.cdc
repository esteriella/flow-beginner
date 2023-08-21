// Import BookStruct Contract
import BookStruct from 0x01

pub fun main(id: UInt64): BookStruct.Book? {
  return BookStruct.getBook(id: id)!
}
