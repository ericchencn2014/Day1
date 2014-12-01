require_relative 'participant'
require_relative 'oracle'
require_relative 'numbergame'

class PlayRandom < NumberGame

  def set_num
    @num = Kernel.rand(@lower..@upper)
  end

  def apply_guessing_method(result)
    set_num
  end

=begin
  def guess_number(player_obj, lower, upper)
    num = Kernel.rand(lower..upper)
    player_obj.num_attempts+=1
    while player_obj.oracle.is_this_the_number?(num)!=:correct && (player_obj.num_attempts <= player_obj.max_num_attempts) do
      # puts "#{__method__}:I guessed #{num}"
      num = Kernel.rand(lower..upper)
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
