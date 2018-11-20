class Product < ApplicationRecord
	validates :name, presence: true
	validates :body, presence: true
	validates :user, presence: true
	validates :product, presence: true
	validates	:rating, numericality: { only_integer: true }
	has_many :orders
  has_many :comments
  def self.search(search_term)
		if Rails.env.production?
      Product.where("name ilike ? OR description ilike ? OR color ilike ?", "%#{search_term}%" , "%#{search_term}%" , "%#{search_term}%")
		else
			Product.where("name LIKE ? OR description LIKE ? OR color LIKE ?", "%#{search_term}%" , "%#{search_term}%" , "%#{search_term}%")
		end
  end
	def highest_rating_comment
			 comments.rating_desc.first
		 end

		 def lowest_rating_comment
			 comments.rating_asc.first
		 end

		 def average_rating
			 comments.average(:rating).to_f
		 end
end
