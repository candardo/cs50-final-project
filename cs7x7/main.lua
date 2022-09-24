function love.load()
    -- tile colors
    colors = {
        [' '] = {.9, .9, .9},
        r = {1, 0, 0},
        g = {0, 1, 0},
        b = {0, 0, 1},
        y = {1, .73, 0},
        p = {.75, .41, .94}
    }

    -- 7x7 game area
    tiles = {}
    -- initially empty
    for y = 0, 6 do
        tiles[y] = {}
        for x = 0, 6 do
            -- empty tile
            tiles[y][x] = ' '
        end
    end

    -- three random tiles each turn
    -- nextTiles = {}
    getFreeTiles()
end


-- Get a table with all the free tiles
function getFreeTiles()
    freeTiles = {}
    for y = 0, 6 do
         for x = 0, 6 do
             print('y= ' .. y .. ' x= ' .. x)
             if tiles[y][x] == ' ' then
                 print('pizza!')
                 -- table.insert(freeTiles, {y, x})
             end
         end
     end
     -- for t = 0, #freeTiles do
     --     print(t)
     --     for i,v in ipairs(freeTiles[t]) do
     --         print(v)
     --     end
     -- end
     -- return freeTiles
 end



-- function randomTiles()
--     local tiles = {}
--     for i = 0, 2 do
--         local color = love.math.random(5)
--     end
-- end


function love.update(dt)
    -- update stuff
end

function love.draw()
    -- white grid
    love.graphics.setColor(1, 1, 1)
    for i = 0, 6 do
        for j = 0, 6 do
           love.graphics.rectangle("line", 0 + (i * 50), 0 + (j * 50), 50, 50)
       end
    end
end

