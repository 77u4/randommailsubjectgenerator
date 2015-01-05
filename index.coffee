getCategories = ->
	
    data = fs.readFileSync('strings.json').toString()
    data = JSON.parse data

getSubject = (type) -> 
