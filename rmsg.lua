-- WTF.
function getCategories()
	--[[--
	Gets all available categories from the json file.

	@Return: Table
		list of all categories available
	--]]--

end

function getStringCount(category)
	--[[--
	Gets the number of strings in $category.
	
	@Parameter: category
		Category whose strings shall be counted

	@Return: number
		Number of strings in $category. not null.
	--]]--

end

function getString(category, num)
	--[[--
	Loads $num string from $category.
	
	@Parameter: category
		Category in which the string is located

	@Parameter: num
		Position of the string.
	
	@Return: String
	--]]--

end

function getMailSubject(category)
	--[[-- 
	Generates a mail subject. If category is empty, it will choose one randomly.

	@Parameter: category
		String -- see getCategories()
	
	@Return: String
		2 - 5 keywords that'll help you to defend your ranking on the terror list.
	--]]--

end

function displayHelp()
	--[[--
	writes all commands available to STDOUT
	--]]--
	dofile("help.lua")
end

function displayAbout()
	--[[--
	writes about section to STDOUT
	--]]--
	dofile("about.lua")
end

function displayCategories()
	--[[--
	display categories
		prints available categories taken from getCategories()
	--]]--
	print("Available Categories:", "n/a") --has to be edited!
end

function displayError(error)
	--[[--
	display error message
	
	@Parameter: error
		String -- what to display
	--]]--

	print("ERROR:",error)
end

function getopt( arg, options )
	--[[--
	get POSIX-styled arguments from commands line input.
	
	@Parameter: arg
		Arguments to check. Type: table/array

	@Parameter: options
		character to accept.

	@Return: tab
		List of arguments.
	--]]--
		local tab = {}
		for k, v in ipairs(arg) do
			if string.sub( v, 1, 2) == "--" then
				local x = string.find( v, "=", 1, true )
				if x then 
					tab[ string.sub( v, 3, x-1 ) ] = string.sub( v, x+1 )
				else      
					tab[ string.sub( v, 3 ) ] = true
				end
			elseif string.sub( v, 1, 1 ) == "-" then
				local y = 2
				local l = string.len(v)
				local jopt
				while ( y <= l ) do
					jopt = string.sub( v, y, y )
					if string.find( options, jopt, 1, true ) then
					  	if y < l then
					    	tab[ jopt ] = string.sub( v, y+1 )
					    	y = l
					  	else
					    	tab[ jopt ] = arg[ k + 1 ]
					  	end
					else
					  	tab[ jopt ] = true
					end
					y = y + 1
				end
			end
		end
  	return tab
end

-- Test code

--[[--
Validate and save arguments
--]]--
opts = getopt( arg, "cw" ) --list of arguments to search
debug = false
for k, v in pairs(opts) do
	if k == "d" or k == "debug" then --debugging mode
  		debug = true
  		break
	elseif k == "h" or k == "help" then --help set
  		displayHelp()
  		break
  	elseif k == "about" then --about set
  		displayAbout()
  		break
  	elseif k == "w" or k == "words" then --words+param set
  	elseif k == "c" or k == "category" then --category+param set
  	elseif k == "s" or k == "show" then --show set
  		displayCategories()
  		break
  	else -- r or random or nothing set. 
		print("random")
  	end
end

--[[--
debugging mode
--]]--
if debug then
	print("\n\n\n\n--------- DEBUGGING MODE ---------")
	for key, value in pairs(opts) do
		print(key, value)
	end
end

--[[-- 
execute commands
--]]--
if