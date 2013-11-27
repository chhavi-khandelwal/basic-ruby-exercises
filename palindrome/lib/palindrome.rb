require_relative 'string'

class Palindrome
  def check_palindromic(text)
      text.upcase.palindrome? ? true : false
  end 
end