class AddTextToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :text, :text
  end
end
