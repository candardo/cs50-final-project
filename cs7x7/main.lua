function love.load()
    -- stuff
end

function love.update(dt)
    -- update stuff
end

function love.draw()
    -- draw stuff
    for i = 0, 6 do
        for j = 0, 6 do
           love.graphics.rectangle("line", 0 + (i * 100), 0 + (j * 100), 100, 100)
       end
    end
end

