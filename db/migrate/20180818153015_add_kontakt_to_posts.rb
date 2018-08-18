class AddKontaktToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :kontakt, :string
  end
end
