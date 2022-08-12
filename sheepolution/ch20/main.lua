function love.load()
    timer = 0
    show = true
end

function love.update(dt)
    show = false
    timer = timer + dt

    if timer > 1 then
        if love.keyboard.isDown("space") then
            show = true
        end
end
    if timer > 2 then
        timer = 0
    end 
end

function love.draw()
    if show then
        love.graphics.rectangle("fill", 100, 100, 100, 100)
    end
end
