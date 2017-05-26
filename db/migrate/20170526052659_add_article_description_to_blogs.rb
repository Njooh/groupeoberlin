class AddArticleDescriptionToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :article_description, :text
  end
end
