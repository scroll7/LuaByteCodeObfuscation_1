local read = io.open("Input.txt", "r")
local h = read:read()


local toByte = string.format([[%s]], h)
local bytes = {}

read:close()

local stringValue = "\\"

function run()
	for i = 0,#toByte do
		local byteForm = toByte:byte(i)
		table.insert(bytes, byteForm)
	end
end

function compile()
	for i,v in pairs(bytes) do
		stringValue = stringValue..v.."\\"
	end
end


run()
compile()


local fname = string.format("ByteEncrypted %s.txt", "_")

local file = io.open(fname, "w")
file:write(stringValue)
file:close()
