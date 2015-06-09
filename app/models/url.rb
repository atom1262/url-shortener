class Url < ActiveRecord::Base
  validates :original_url, presence: true
  after_create :create_token


  def short_url
    "http://localhost:3000/#{token}"
  end

  private

  def create_token
    update(token: create_unique_token)
  end

  def create_unique_token
    id.to_s(36)
  end

end
