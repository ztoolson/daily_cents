class User < ApplicationRecord
  has_many :accounts, primary_key: 'guid', foreign_key: 'user_guid'

  # Include default devise modules. Others available are:
  # :confirmable, # require a user to confirm their email address by clicking a link in a confirmation email before they can sign in
  # :lockable, # proves extra security by automatically locking accounts after a giver number of failed sign in attempts
  # :timeoutable, # provies extra security by automatically logging out users who haven't been active for a given amount of time
  # :omniauthable # adds support for omniauth which will allow susers to auth through services such a facebook or twitter

  devise :database_authenticatable, # allows user to sing in using credentials stored in the db, such as email address and password
         :registerable, # allows users to register or sign up
         :recoverable, # allows a user who forgets their password to reset it via email
         :rememberable, # remembers a user's session in your application
         :trackable, # tracks information such as last sign-in time and IP for each user
         :validatable # validates the user's email address and password length. update length setting in config/initializers/devise.rb
end
