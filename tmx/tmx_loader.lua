TmxLoader = class("TmxLoader")

function TmxLoader:initialize()
end

TmxLoader.static.load = function(path)
	local data = file_to_string(path)
	local json_data = json.decode(data)

	return TmxMap:new(json_data)
end