require 'pry'

class User
  attr_accessor :eamil
  attr_accessor :age
  @@all_users = []

  def initialize(email_to_save,age_to_save)
    @@all_users.push(self)
    @email = email_to_save
    @age = age_to_save
  end

  def self.all
    return @@all_users
  end
end

#binding.pry