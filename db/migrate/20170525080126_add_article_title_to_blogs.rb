class AddArticleTitleToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :article_title, :string
  end
end
