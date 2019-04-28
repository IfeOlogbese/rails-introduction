# If current directory
# ===========================
# require_relative 'greetings'
# $LOAD_PATH << "."
# require 'greetings'
# require '../module/greetings'
require File.expand_path("../../module/greetings", __FILE__)
class Student
  include Greet

  attr_accessor :first_name, :last_name, :email, :username, :password
  # attr_reader :username

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  # def first_name=(name)
  #   @first_name = name
  # end

  # def first_name
  #   return @first_name
  # end

  def to_s
    Greet.night()
    "First name is #{@first_name}"
  end
end

mashur = Student.new("Mashur", "Hossain", "mashur1", "mash@example.com", 1234)
mashur.afternoon
puts mashur