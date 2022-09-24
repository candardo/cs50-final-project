local class = require 'middleclass'

Tile = class('Tile')
function Tile:initialize(x, y, color)
    self.x = x
    self.y = y
    self.color = color
end



