class AddImageUrlToKitten < ActiveRecord::Migration
  def change
    add_column :kittens, :image_url, :string
  end
end
