function love.load()
    -- tile colors
    colors = {
        ['_'] = {.9, .9, .9},
        r = {0.992, 0.184, 0.09},
        g = {0.553, 0.761, 0.008},
        b = {0, 0.663, 0.996},
        y = {1, .733, 0.008},
        p = {.71, .314, .918}
    }

    -- 7x7 game area (49 tiles) initally empty
    tiles = {}
    for y = 1, 7 do
        tiles[y] = {}
        for x = 1, 7 do
            -- empty tile
            tiles[y][x] = '_'
        end
    end

    -- Get a table with all empty/free tiles
    freeTiles = getFreeTiles()

    -- Pick the first three random tiles
    nextTiles(3)

    -- Player's cursor 
    cursorX = 1
    cursorY = 1
    cursorColor = {0, 0, 0}
    tilePicked = false

end


-- Get a table with all the free tiles
function getFreeTiles()
    freeTiles = {}
    for y = 1, 7 do
         for x = 1, 7 do
             if tiles[y][x] == '_' then
                 table.insert(freeTiles, {y, x})
             end
         end
     end
     return freeTiles
 end


-- Get n random tiles from freeTiles with random color
function nextTiles(n)
    -- Color table keys
    local colorKeys = {'r', 'g', 'b', 'y', 'p'}

    for i = 1, n do
        -- Get random index for freeTile and random key for colors
        local freeTileIndex = love.math.random(#freeTiles)
        local randomColorKey = colorKeys[love.math.random(5)]
        -- Get random tile coordinates
        local randomTileY = freeTiles[freeTileIndex][1]
        local randomTileX = freeTiles[freeTileIndex][2]
        -- Add new random tile to tiles and remove it from freeTiles
        print('x=' .. randomTileX .. ' y= ' .. randomTileY .. ' ' .. randomColorKey)
        tiles[randomTileY][randomTileX] = randomColorKey
        table.remove(freeTiles,freeTileIndex)
    end
end


function love.update(dt)
    -- TEMP
    -- Quit with no warnings if less than 3 tiles
    if (#freeTiles) < 2 then
        love.event.quit()
    end
end

function love.keypressed(key)
    -- TEMP
    -- 'c' key to get three new tiles
    if key == 'c' then
        nextTiles(3)
    end
    if key == 't' then
        print(tiles[3][2])
    end
    -- Cursor movement
    if key == 'left' and cursorX > 1 then
        cursorX = cursorX - 1
    elseif key == 'right' and cursorX < 7 then
        cursorX = cursorX + 1
    elseif key == 'up' and cursorY > 1 then
        cursorY = cursorY - 1
    elseif key == 'down' and cursorY < 7 then
        cursorY = cursorY + 1
    end
    print('x ' .. cursorX .. ' y ' .. cursorY)
    -- Tile pick and place
    if (key == 'space') then
        print(tilePicked)
        print(tiles[cursorY][cursorX]) 
        -- if (tilePicked == false) and (tiles[cursorY][cursorX] ~= '_') then
        -- tilePicked = true
        -- cursorColor = {1, 0, 0}
    end
end


function love.draw()
    -- Draw white grid
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle('fill', 0, 0, 2 + 50 * 7, 2 + 50 * 7)
    -- Draw tiles
    for i = 0, 6 do
        for j = 0, 6 do
            -- Get tile color and draw a tile
            love.graphics.setColor(colors[tiles[i + 1][j + 1]])
            love.graphics.rectangle('fill', 2 + (i * 50), 2 + (j * 50), 48, 48)
       end
    end

    -- Draw player's cursor (black outline)
    love.graphics.setColor(cursorColor)
    love.graphics.rectangle('line', 1 + ((cursorX -1) * 50), 1 + ((cursorY - 1) * 50), 50, 50)
end
