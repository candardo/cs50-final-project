Entity = Object:extend()

function Entity:new(x, y, image_path)
	self.x = x
	self.y = y
	self.image = love.graphics.newImage(image_path)
	self.width = self.image:getWidth()
	self.height = self.image:getHeight(Width())
end

function Entity:update(dt)

end

function Entity.draw()
	love.graphics.draw(self.image, self.x, self.y)
end

function Entity:checkCollision(e)
	-- e is the other entity
	return self.x + self.width > e.x
	and self.x < x.e + e.width
	and self.y + self.height > e.y
	and self.y < e.y + e.height
end
