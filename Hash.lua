local hash = {}

function hash.hash1(x)--lol
	return x
end

function hash.hash2(x, y)
	return x + (x + y)*(x + y + 1)/2
end

function hash.hash3(x, y, z)
	return x + (x + y)*(x + y + 1)/2 + (x + y + z)*(x + y + z + 1)*(x + y + z + 2)/6
end

function hash.hashn(...)
	local r = 0
	local f = 1
	local v = {...}
	local n = #v
	for i = 1, n do
		local s = 0
		for i = 1, i do
			s = s + v[i]
		end
		local t = s
		for i = 1, i - 1 do
			t = t*(s + i)
		end
		f = f*i
		r = r + t/f
	end
	return r
end

return hash
