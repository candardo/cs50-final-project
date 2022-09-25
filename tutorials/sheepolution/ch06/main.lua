function love.load()
	x = 100
	y = 50
end

function love.update(dt)
	if love.keyboard.isDown("d") then
		x = x + 100 * dt
	elseif love.keyboard.isDown("a") then
		x = x - 100 * dt
	elseif love.keyboard.isDown("w") then
		y = y - 100 * dt
	elseif love.keyboard.isDown("s") then
		y = y + 100 * dt
	end
end

function love.draw()
	-- love.graphics.print("Hello World!", 100, 100)
	love.graphics.rectangle("line", x, y, 200, 150)
end
