class AddPostByToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :post_by, :string
  end
end
