class = require 'lib/middleclass/middleclass'

require 'color'
require 'mathhelper'
require 'entities/entity'

local e = nil

function love.load()
	love.graphics.setColor(0,0,0,255)
	love.graphics.setBackgroundColor(255,255,255)

	e = Entity:new(love.graphics.newImage("temp/box.png"))
	e.x = 1280 * 0.5
	e.y = 720 * 0.5
end

function love.keypressed(key, code)
	if key == 'escape' then
		love.event.push("quit")
	end
end

function love.update(dt)
	local delta = dt * 1000.0

	e:update(dt)
end

function love.draw()
	e:draw()
end