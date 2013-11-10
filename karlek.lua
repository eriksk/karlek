-- third party libraries
class = require 'lib/middleclass/middleclass'
require 'lib/json4lua/json4lua/json/json'

-- dependencies
require 'color'
require 'io_helpers'
require 'tmx/tmx_tile_set'
require 'tmx/tmx_layer'
require 'tmx/tmx_map'
require 'tmx/tmx_loader'
require 'mathhelper'
require 'entities/entity'

local e = nil
local map = nil

function love.load()
	love.graphics.setBackgroundColor(200, 200, 200)

	e = Entity:new(love.graphics.newImage("temp/box.png"))
	e.x = 1280 * 0.5
	e.y = 720 * 0.5

	print("loading map")
 	map = TmxLoader.load("temp/test_map.json")
	map:load()
end

function love.keypressed(key, code)
	if key == 'escape' then
		love.event.push("quit")
	end
end

function love.update(dt)
	local delta = dt * 1000.0

	e:update(dt)
	map:update(dt)
end

function love.draw()
	map:draw()
	e:draw()
end