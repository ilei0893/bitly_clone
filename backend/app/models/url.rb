class Url < ApplicationRecord
    validates :short_url, :original_url, presence: true
end
