class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username, :password
  validates_uniqueness_of :username

  enum role: %w(default admin)

  def to_param
    "dashboard"
  end

end
