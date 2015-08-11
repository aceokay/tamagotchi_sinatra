class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @food = 10
    @sleep = 10
    @play = 10
    @time = Time.now().to_i()
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
    time_since_update = Time.now().to_i() - @time

    time_since_update./(hour).times() do
      @food -= 1
      @sleep -= 1
      @play -= 1
      @time = Time.now().to_i()
    end
  end
end
