class AddDetailsToUrLs < ActiveRecord::Migration[5.2]
  def change
    add_column :shortened_urls, :long_url, :string, null: false
    add_column :shortened_urls, :short_url, :string, unique: true
    add_column :shortened_urls, :user_id, :integer

    add_index :shortened_urls, :short_url
    add_index :shortened_urls, :user_id
  end
end
