require_relative 'participant'
require_relative 'oracle'

class NumberGame
  attr_accessor :num, :lower, :upper

  def initialize(p_lower, p_upper)
    @lower = p_lower
    @upper = p_upper
  end

  def guess_number(player_obj)
    set_num                               # This is unstable part
    player_obj.num_attempts += 1          # This is stable part

    while ((result = player_obj.oracle.is_this_the_number?(@num)) != :correct) && (player_obj.num_attempts <= player_obj.max_num_attempts) do
      self.apply_guessing_method(result)
      player_obj.num_attempts+=1
    end

    if (player_obj.num_attempts <= player_obj.max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      :success
    else
      #TODO: figure out way to do this using some other way.
      :fail
    end

  end

  def set_num
    raise 'exception'
  end

  def reset(lower, upper)
    @lower = lower
    @upper = upper
  end

end
