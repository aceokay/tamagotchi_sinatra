class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @food = 10
    @sleep = 10
    @play = 10
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food
  end

  define_method(:sleep_level) do
    @sleep
  end

  define_method(:play_level) do
    @play
  end
end
