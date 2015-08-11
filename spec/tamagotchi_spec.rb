require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe('#initialize') do
    it('sets the name and life levels of a new Tamagotchi') do
      my_pet = Tamagotchi.new("Lil' Wayne")
      expect(my_pet.name()).to(eq("Lil' Wayne"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.play_level()).to(eq(10))
    end
  end

  describe('#is_alive') do
    it("is dead if any level is below 0") do
      my_pet = Tamagotchi.new("Lil' Bow Wow")
      my_pet.set_food_level(0)
      expect(my_pet.is_alive()).to(eq(false))
    end

    it("is alive if levels are above 0") do
      my_pet = Tamagotchi.new("Lil' Bow Wow")
      my_pet.set_food_level(3)
      expect(my_pet.is_alive()).to(eq(true))
    end
  end

  describe('#time_passes') do
    it("decreases the amount of food the Tamagotchi has left by 1 if an hour has passed since last being fed") do
      my_pet = Tamagotchi.new("Lil' Smokey")
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(10))
    end

    it("decreases the amount of sleep the Tamagotchi has left by 1 if an hour has passed since last nap") do
      my_pet = Tamagotchi.new("Lil' Smokey")
      my_pet.time_passes()
      expect(my_pet.sleep_level()).to(eq(10))
    end

    it("decreases the amount of play the Tamagotchi has left by 1 if an hour has passed since last play session") do
      my_pet = Tamagotchi.new("Lil' Smokey")
      my_pet.time_passes()
      expect(my_pet.play_level()).to(eq(10))
    end
  end

  describe('#nap') do
    it('replenishes sleep level to 10 if napped at sleep level 4 or below') do
      my_pet = Tamagotchi.new("Lil' Sleepy")
      my_pet.set_sleep_level(4)
      my_pet.nap()
      expect(my_pet.sleep_level()).to(eq(10))
    end
  end
end
