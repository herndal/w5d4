# == Schema Information
#
# Table name: shortened_urls
#
#  id        :bigint           not null, primary key
#  long_url  :string           not null
#  short_url :string
#  user_id   :integer
#
class ShortenedUrl < ApplicationRecord
    validates :long_url, presence: true
    validates :user_id, presence: true

    belongs_to :submitter,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    def self.random_code
        random_str = SecureRandom.urlsafe_base64

        until !ShortenedUrl.exists?(:short_url => random_str)
            random_str = SecureRandom.urlsafe_base64 
        end
        
        random_str
    end

    def self.generate(user, long_url)
        short_url = ShortenedUrl.random_code 
        ShortenedUrl.create!(:user_id => user.id, :long_url => long_url, :short_url => short_url)
    end
end


# Person.exists?(:name => "David")

# ShortenedUrl.exists?(:short_url => random_str)