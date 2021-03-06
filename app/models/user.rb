class User < ActiveRecord::Base
  has_many :posts
  attr_accessible :image, :location, :name, :nickname, :provider, :uid

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.nickname = auth['info']['nickname']
      user.name = auth['info']['name']
      user.location = auth['info']['location']
      user.image = auth['info']['image']
    end
  end
end
