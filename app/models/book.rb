class Book < ApplicationRecord
	has_many :reviews

	validates :title, presence: true

	validates :author, presence: true

	validates :isbn, presence: true, length: { is: 10 }, uniqueness: true, numericality: { only_integer: true }

	validates :copies, presence: true, numericality: { only_integer: true }

end
