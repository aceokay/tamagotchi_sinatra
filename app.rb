require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")

get("/") do
  erb(:index)
end

post("/tamagotchi") do
  name = params.fetch("name")
  monster = Tamagotchi.new(name)
  erb(:success)
end
