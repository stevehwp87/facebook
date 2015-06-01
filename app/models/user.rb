class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts

  validates :email, presence: true
  validates :password, presence: true
  validates :firstname, presence: true 
  validates :lastname, presence: true
  validates :age, presence: true
  validates :gender, presence: true



  def self.authenticate(email, password)
    if self.where(email: email)[0] == self.where(password: password)[0]
      return self.where(email: email)
    else
      return nil
    end
  end
end
