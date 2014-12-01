require_relative 'numbergame'

class PlayLinear < NumberGame

  def set_num
    @num=@lower
  end

  def apply_guessing_method(result)
    @num+=1
  end

=begin
  def guess_number(player_obj, lower, upper)
    num=lower
    player_obj.num_attempts+=1
    ## puts"num_attempts: #{@num_attempts}"
    while player_obj.oracle.is_this_the_number?(num)!=:correct && (player_obj.num_attempts <= player_obj.max_num_attempts) do
      # puts "#{__method__}:I guessed #{num}"
      num+=1
      player_obj.num_attempts+=1
      ## puts"num_attempts: #{@num_attempts}"
    end
    if (player_obj.num_attempts <= player_obj.max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      :success
    else
      #TODO: figure out way to do this using some other way.
      :fail
    end
  end
=end

end
