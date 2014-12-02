require_relative 'numbergame'

class PlayBinary < NumberGame

  def set_num
    @num = (@lower+@upper)/2
  end

  def apply_guessing_method(result)
    if result == :less_than
      @upper = @num-1
    elsif result == :greater_than
      @lower = @num+1
    end
    @num=(@lower+@upper)/2
  end

=begin
  def guess_number(player_obj, lower, upper)
    num = (lower+upper)/2
    player_obj.num_attempts+=1
    while ((result = player_obj.oracle.is_this_the_number?(num)) != :correct) && (player_obj.num_attempts <= player_obj.max_num_attempts) do
      # puts "#{__method__}:I guessed #{num}"
      if result == :less_than
        upper = num-1
      elsif result == :greater_than
        lower = num+1
      end
      num=(lower+upper)/2
      player_obj.num_attempts+=1
    end
    if (player_obj.num_attempts <= player_obj.max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      :success
    else
      :fail
    end
  end
=end

end
