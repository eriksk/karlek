TmxTileSet = class("TmxTileSet")

function TmxTileSet:initialize(json_data)
	self.name = json_data["name"]
	self.properties = json_data["properties"]
	self.tilewidth = json_data["tilewidth"]
	self.tileheight = json_data["tileheight"]
	self.image = nil
	self.sources = {}
end

function TmxTileSet:load()
	self.image = love.graphics.newImage("temp/" .. self.name .. ".png")

	for row=0, (self.image:getHeight() / self.tileheight) - 1 do
		for col=0,(self.image:getWidth() / self.tilewidth) - 1 do
			local x = col * self.tilewidth
			local y = row * self.tileheight
			local quad = love.graphics.newQuad(x, y, self.tilewidth, self.tileheight, self.image:getWidth(), self.image:getHeight())
			table.insert(self.sources, quad)
		end
	end
end