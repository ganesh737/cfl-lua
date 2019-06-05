
map = {
    ["room1"] = {["south"] = "room3", ["east"] = "room2"},
    ["room2"] = {["south"] = "room4", ["west"] = "room1"},
    ["room3"] = {["north"] = "room1", ["east"] = "room4"},
}

curr_room = "room1"

repeat
    print ("you are in " .. curr_room)
    print ("available moves: north, east, south, west")
    local move = io.read()
    local next_room = map[curr_room][move]
    if next_room == nil then
        print ("invalid move")
    else
        curr_room = next_room
    end
until curr_room == "room4"

print("Congratulations, you won!")
