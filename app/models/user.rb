class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
          :registerable,
         :recoverable, 
         :rememberable, 
         :trackable, 
         :validatable

  # sets up authorization scenarios
  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  # user can have many training sessions and many races
  has_many :sessions
  has_many :races

  # sets default role for pundit authorization
  def set_default_role
    self.role ||= :user
  end
end
