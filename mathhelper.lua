MathHelper = class("MathHelper")

function MathHelper:initialize()
end

MathHelper.static.to_degrees = function(rads)
	return rads * 180.0 / math.pi
end