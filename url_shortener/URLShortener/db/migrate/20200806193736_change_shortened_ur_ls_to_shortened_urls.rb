class ChangeShortenedUrLsToShortenedUrls < ActiveRecord::Migration[5.2]
  def change
    rename_table :shortened_ur_ls, :shortened_urls
  end
end

