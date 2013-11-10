TmxMap = class("TmxMap")

function TmxMap:initialize(json_data)
	self.width = json_data["width"]
	self.height = json_data["height"]
	self.tilewidth = json_data["tilewidth"]
	self.tileheight = json_data["tileheight"]
	self.properties = json_data["properties"]
	self.layers = {}
	for i=1,#json_data["layers"] do
		local l = TmxLayer:new(json_data["layers"][i])
		table.insert(self.layers, l)
	end
	self.tilesets = {}
	for i=1,#json_data["tilesets"] do
		table.insert(self.tilesets, TmxTileSet:new(json_data["tilesets"][i]))
	end
end

function TmxMap:load()
	for i=1,#self.tilesets do
		self.tilesets[i]:load()
	end
end

function TmxMap:update(dt)
	for i=1,#self.layers do
		self.layers[i]:update(dt)
	end
end

function TmxMap:draw()
	for i=1,#self.layers do
		self.layers[i]:draw(self.tilesets[1].image, self.tilewidth, self.tileheight, self.tilesets[1].sources)
	end
end