
# Knows the number the participants are trying to guess
class Oracle
  attr_writer :secret_number

  def initialize(secret_num:0)
    @secret_number = secret_num
  end

  def is_this_the_number?(num)
    if num == @secret_number
 #     puts "correct"
      return :correct
    elsif num > @secret_number
#      puts "less_than"
      :less_than
    elsif num < @secret_number
 #     puts "greater_than"
      :greater_than
    end
  end

end
