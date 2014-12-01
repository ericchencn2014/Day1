class PlayRandomly
  attr_accessor :lower, :upper, :oracle,

  def initialize(lower, upper, oracle)
    @lower = lower
    @upper = upper
    @oracle = oracle
  end

  def


  def play_linear(lower)
    num=lower
    @num_attempts+=1
    ## puts"num_attempts: #{@num_attempts}"
    while @oracle.is_this_the_number?(num)!=:correct && (@num_attempts <= @max_num_attempts) do
      # puts "#{__method__}:I guessed #{num}"
      num+=1
      @num_attempts+=1
      ## puts"num_attempts: #{@num_attempts}"
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      :success
    else
      fail
    end
  end

  def play_linear(lower)
    different
    @num_attempts+=1
    ## puts"num_attempts: #{@num_attempts}"
    while @oracle.is_this_the_number?(num)!=:correct && (@num_attempts <= @max_num_attempts) do
      # puts "#{__method__}:I guessed #{num}"
      different
      ## puts"num_attempts: #{@num_attempts}"
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      :success
    else
      fail
    end
  end
end
