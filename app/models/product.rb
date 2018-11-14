class Product < ApplicationRecord
	validates :name, presence: true

	has_many :orders
  has_many :comments
  def self.search(search_term)
		if Rails.env.production?
      Product.where("name ilike ? OR description ilike ? OR color ilike ?", "%#{search_term}%" , "%#{search_term}%" , "%#{search_term}%")
		else
			Product.where("name LIKE ? OR description LIKE ? OR color LIKE ?", "%#{search_term}%" , "%#{search_term}%" , "%#{search_term}%")
		end
  end
end
