-- function called at the start of game to load assets
function love.load()
    x, y, w, h = 20, 20, 20, 20
end


-- function called every frame with the delta (dt) since last frame
function love.update(dt)
    w = w + 1
    h = h + 1
end


-- callback function called whenever we press a key
function love.keypressed(key)
    local key_pressed = {
        left = function() x = x - speed end,
        right = function() x = x + speed end,
        up = function() y = y - speed end,
        down = function() y = y + speed end
        -- esc = function() end
    }

    if key_pressed(key) then
        key_pressed(key)
    end
end

-- function called each frame meant to render things to the screen
function love.draw()
    -- in versions prior to 11.0, color component values are (0, 102, 102)
    love.graphics.setColor(0, 0.4, 0.4)
    love.graphics.rectangle("fill", x, y, w, h)
end