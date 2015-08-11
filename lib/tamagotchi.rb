class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @food = 10
    @sleep = 10
    @play = 10
    @feed_time = Time.now().to_i()
    @sleep_time = Time.now().to_i()
    @play_time = Time.now().to_i()
  end

  define_method(:name) do
    time_passes
    @name
  end

  define_method(:food_level) do
    time_passes
    @food
  end

  define_method(:sleep_level) do
    time_passes
    @sleep
  end

  define_method(:play_level) do
    time_passes
    @play
  end

  define_method(:set_food_level) do |level|
    time_passes
    @food = level
  end

  define_method(:set_sleep_level) do |level|
    time_passes
    @sleep = level
  end

  define_method(:set_play_level) do |level|
    time_passes
    @play = level
  end

  define_method(:timer) do
    @time
  end

  define_method(:is_alive) do
    if @food <= 0
      false
    elsif @sleep <= 0
      false
    elsif @play <= 0
      false
    else
      true
    end
  end

  define_method(:time_passes) do
    hour = 3600
    time_array = [@feed_time,@sleep_time,@play_time]

    time_array.each() do |time|
      time_since_update = Time.now().to_i() - time
      time_since_update./(hour).times() do
        if time == @feed_time
          @food -= 1
        elsif time == @sleep_time
          @sleep -= 1
        elsif time == @play_time
          @play -= 1
        end
      end
    end
  end

  define_method(:feed) do
    time_passes
    if @food < 7
      @food += 3
    end
  end

  define_method(:nap) do
    time_passes
    if @sleep <= 4
      @sleep = 10
    end
  end

  define_method(:play) do
    time_passes
    if @play < 10
      @play += 2
    end
  end
end
