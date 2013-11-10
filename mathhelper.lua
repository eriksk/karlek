MathHelper = class("MathHelper")

function MathHelper:initialize()
end

MathHelper.static.to_degrees = function(rads)
	return rads * 180.0 / math.pi
end

MathHelper.static.to_radiens = function(deg)
	return deg * math.pi / 180.0
end

MathHelper.static.lerp = function(x, y, w)
	return x + (y - x) * w
end