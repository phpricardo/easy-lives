class Vote < ApplicationRecord
  belongs_to :live, counter_cache: true
  belongs_to :user

  validates :live, uniqueness: {
    scope: :user,
    message: 'Você já realizou a votação.'
  }
end