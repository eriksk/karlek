print("loaded")
function file_to_string(file_name)
	local f = io.open(file_name, "rb")
	local content = f:read("*all")
	f:close()
	return content
end