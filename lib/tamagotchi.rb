class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    # @food = 10
    # @sleep = 10
    # @play = 10
  end

  define_method(:name) do
    @name
  end
end
