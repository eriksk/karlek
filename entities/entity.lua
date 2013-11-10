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
end

function Entity:update(dt)
	self.rotation = self.rotation + dt * 2
end

function Entity:draw()
	self.color:set()
	love.graphics.draw(self.image, self.x, self.y, MathHelper.to_degrees(self.rotation), self.scale_x, self.scale_y, self.origin_x, self.origin_y)
end