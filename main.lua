class = require 'lib/middleclass'

function love.load()
	love.graphics.setColor(0,0,0,255)
	love.graphics.setBackgroundColor(255,255,255)

end

function love.keypressed(key, code)
	if key == 'escape' then
		love.event.push("quit")
	end
end

function love.update(dt)
	local delta = dt * 1000.0

end

function love.draw()
end