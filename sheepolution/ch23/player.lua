Player = Entity:extend()

function Player:new(x, y)
	Player.super.new(self, x, y, "player.png")
end

