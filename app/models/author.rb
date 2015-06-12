class Author < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :title, :body, :username, :email, :password, :password_confirmation
  validates_confirmation_of :password, message: "should match confirmation", if: :password
end
