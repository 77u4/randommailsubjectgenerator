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
	print("Available Categories:", "n/a")
end

function displayError(error)
	--[[--
	display error message
	
	@Parameter: error
		String -- what to display
	--]]--

	print("ERROR:",error)
end

--[[--
Begin interactive command line tool
--]]--

local userArguments = {} --construct an empty table for the user-given arguments
local finalCommand = {}  --construct an empty table for the commands to be executed

--[[ get user arguments ]]
for posn,val in ipairs (arg) do
	if string.find(val,"^%-[a-zA-Z]$") then 		--a command starting with a single dash (like -h)
		local insert = string.sub(val,2,2)
		table.insert(userArguments, posn, insert)
	elseif string.find(val,"^%-%-[a-zA-Z]+$") then 	--a command starting with a double dash (like --help)
		local insert = string.sub(val,3,3)
		table.insert(userArguments, posn, insert)
	end
end


-- [[ process user input ]]
for pos, argument in ipairs(userArguments) do
	if argument == "h" then 						--help
		displayHelp()
	elseif argument == "w" then						--words
		local parameter = arg[pos+1]
		if parameter == nil then --parameter is nil
			displayError("The wordcount parameter expects to be set.")
		elseif string.find("9"..parameter.."9","^[0-9]+$") then --parameter is a number
			table.insert(finalCommand,"w;"..parameter)
		else 									--parameter is not a number
			displayError("The wordcount parameter expects to be a numeric value.")
		end --end type check
	elseif argument == "c" then
		local parameter = arg[pos+1]
		if parameter == nil or string.find(parameter,"^%-[a-zA-Z]$") or string.find(parameter,"^%-%-[a-zA-Z]+$") then --check if it is an argument
			displayCategories()
		else -- parameter set
			table.insert(finalCommand,"c;"..parameter)
		end
	elseif argument == "a" then 					--about
		displayAbout()
	else 											--random && default
		--[[ This line of code does not exist. ]]
	end --end if $argument
end --end for

-- [[ start generating ]]











