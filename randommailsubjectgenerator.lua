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

local userArguments = {} --construct an empty table


for posn,val in ipairs (arg) do

end


displayHelp()














