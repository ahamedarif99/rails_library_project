class Patron < ApplicationRecord
	
	def patron_books

		books = Book.all

		books = books.where(["title LIKE ?", title]) if title.present?
		books = books.where(["author LIKE ?", author]) if author.present?
		books = books.where(["isbn LIKE ?", isbn]) if isbn.present?
		
		return books
	end
end
