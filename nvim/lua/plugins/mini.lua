-- Define the function

function get_random_ayat()
	math.randomseed(os.time())

	return math.random(1, 6236)
end

function get_random_quran_verse()
	local url = "http://api.alquran.cloud/v1/ayah/" .. get_random_ayat() .. "/en.asad"
	local cmd = "curl -s '" .. url .. "'"
	local handle = io.popen(cmd)
	local result = handle:read("*a")
	handle:close()
	local json = vim.fn.json_decode(result)
	local text = json["data"]["text"]
	local verseName = json["data"]["surah"]["englishName"]
	local ayat = json["data"]["numberInSurah"]
	local final =  text .. "\n\n" .. verseName .. " - " ..  ayat
	print(final)
	return final
end

-- Set the header on VimEnter autocmd with the random Quran verse
local starter = require('mini.starter')
starter.setup({
	autoopen = true,
	evaluate_single = false,
	header = get_random_quran_verse,
	footer = nil,
	content_hooks = nil,
	query_updaters = 'abcdefghijklmnopqrstuvwxyz0123456789_-.',
	silent = false,
	remove_filter_section = true,
})

-- Setup mini.starter after setting the header

-- Setup the other mini plugins
require("mini.cursorword").setup({})
require("mini.indentscope").setup({})
require("mini.surround").setup({})
require("mini.pairs").setup({})
