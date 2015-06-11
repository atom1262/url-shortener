class Url < ActiveRecord::Base
  validates :original_url, presence: true
  after_create :create_token


  def short_url
    "#{ENV.fetch("HOST")}#{token}"
  end

  private

  def create_token
    update(token: create_unique_token)
  end

  def create_unique_token
    id.to_s(36)
  end

end
