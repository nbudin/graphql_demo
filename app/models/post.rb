class Post < ApplicationRecord
  belongs_to :user, counter_cache: true
  belongs_to :topic
end
