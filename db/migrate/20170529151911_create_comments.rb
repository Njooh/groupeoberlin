class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :commenter_name
      t.text :comment_message

      t.timestamps
    end
  end
end
