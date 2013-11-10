TmxLayer = class("TmxLayer")

function TmxLayer:initialize(json_data)
	self.data = json_data["data"]
	self.width = json_data["width"]
	self.height = json_data["height"]
	self.name = json_data["name"]
	self.opacity = json_data["opacity"]
	self.visible = json_data["visible"]
	self.properties = json_data["properties"]
	self.x = json_data["x"]
	self.y = json_data["y"]
end

function TmxLayer:load()
end

function TmxLayer:update(dt)
end

function TmxLayer:draw(image, tile_width, tile_height, sources)
	for col=0,self.width - 1 do
		for row=0,self.height - 1 do
			local cell = self.data[1 + (col + row * self.width)]
			if(cell > 0) then
				love.graphics.drawq(image, sources[cell], col * tile_width, row * tile_height)
			end
		end
	end
end