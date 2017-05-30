class Blog < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :article_title, presence: true
	validates :article_description, presence: true
	validates :post_by, presence: true
	validates :category, presence: true
	validates :article_title, presence: true

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
