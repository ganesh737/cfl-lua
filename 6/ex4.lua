
function room1()
    print("you are in room1")
    local move = io.read()
    if move == "south" then room3()
    elseif move == "east" then room2()
    else
        print("invalid move")
        room1() -- stay in the same room
    end
end

function room2()
    print("you are in room2")
    local move = io.read()
    if move == "south" then room4()
    elseif move == "west" then room1()
    else
        print("invalid move")
        room2()
    end
end

function room3()
    print("you are in room3")
    local move = io.read()
    if move == "north" then room1()
    elseif move == "east" then room4()
    else
        print("invalid move")
        room3()
    end
end

function room4()
    print("you are in room4")
    print("Congratulations, you won!")
end


room1() -- initial room