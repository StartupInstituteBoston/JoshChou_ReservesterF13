class AddMenuToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :menu, :string
  end
end
