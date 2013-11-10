Entity = class("Entity")

function Entity:initialize(image)
	self.image = image
	self.x = 0
	self.y = 0
	self.origin_x = image:getWidth() * 0.5
	self.origin_y = image:getHeight() * 0.5
	self.rotation = 0
	self.scale_x = 1.0
	self.scale_y = 1.0
	self.vel_x = 0
	self.vel_y = 0
	self.color = Color:new()
	self.source_x = 0
	self.source_y = 0
	self.source_width = image:getWidth()
	self.source_height = image:getHeight()
	self.quad = love.graphics.newQuad(0, 0, image:getWidth(), image:getHeight(), image:getWidth(), image:getHeight())
	self.behaviors = {}
end

function Entity:add_behavior(b)
	table.insert(self.behaviors, b)
end

function Entity:update(dt)
	for i=1,#self.behaviors do
		self.behaviors[i]:update(dt, self)
	end
	self.rotation = self.rotation + dt * 0.1
end

function Entity:draw()
	self.color:set()
	love.graphics.drawq(self.image, self.quad, self.x, self.y, MathHelper.to_degrees(self.rotation), self.scale_x, self.scale_y, self.origin_x, self.origin_y)
end