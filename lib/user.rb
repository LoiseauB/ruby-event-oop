require 'pry'

class User
  attr_accessor :email
  attr_accessor :age
  @@all_users = Array.new

  def initialize(email_to_save,age_to_save)
    @@all_users.push(self)
    @email = email_to_save
    @age = age_to_save
  end

  def self.all
    puts @@all_users
  end

  def self.find_by_email(email_to_find)
    @@all_users.each do |x|
      if x.email == email_to_find
        return x
      end
    end
  end
  
end

binding.pry