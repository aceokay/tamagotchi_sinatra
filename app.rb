require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")

get("/") do
  erb(:index)
end

get("/tamagotchi") do
  tamagotchis = Tamagotchi.all()
  monster = tamagotchis[0]
  @name = monster.name()
  @food_level = monster.food_level()
  @sleep_level = monster.sleep_level()
  @play_level = monster.play_level()
  erb(:tamagotchi)
end

post("/tamagotchi") do
  name = params.fetch("name")
  monster = Tamagotchi.new(name)
  monster.save()
  @name = monster.name()
  @food_level = monster.food_level()
  @sleep_level = monster.sleep_level()
  @play_level = monster.play_level()
  erb(:tamagotchi)
end

post("/success_feed") do
  tamagotchis = Tamagotchi.all()
  monster = tamagotchis[0]
  monster.feed()
  erb(:success_feed)
end

post("/success_sleep") do
  tamagotchis = Tamagotchi.all()
  monster = tamagotchis[0]
  monster.nap()
  erb(:success_sleep)
end

post("/success_play") do
  tamagotchis = Tamagotchi.all()
  monster = tamagotchis[0]
  monster.play()
  erb(:success_play)
end
