class Search < ApplicationRecord
	
	def search_books

		arr=[]

		books = Book.all



		#if(title = "" && author = "" && isbn = "")

		#	return arr
		#elsif(title != "" || author != "" || isbn != "")
			
			books = books.where(["title LIKE ?", title]) if title.present?
			books = books.where(["author LIKE ?", author]) if author.present?
			books = books.where(["isbn LIKE ?", isbn]) if isbn.present?
		 
			return books
		#end
	end
end
