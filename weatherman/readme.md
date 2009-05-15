# The Weather Man

This coding kata will exercise different skills.
The intent of this exercise, is that after you run your Ruby script, you should hear the weather man giving you today and tomorrow's forecast:

"Hello SDRuby, we are [day of the week, i.e: Tuesday] the [day of the month, i.e: first] of [month, i.e: May], the current weather is [current conditions] with a temperature of [temperature] degrees [temperature unit].
Tomorrow should be [tomorrow's conditions] with an average temperature of [average temperature] degrees [temperature unit]."

First, try to generate the voice only using Ruby and its standard library. Then try using 3rd party tool and compare the results, try to see which approach you would use in production and why.

If you don't have internet or don't want to access a weather service via internet, I provided you with find 3 xml files with the weather report of 3 different locations:

* San Diego,  USA,       location id: USCA0982
* Paris,      France,    location id: FRXX0076
* Melbourne,  Australia, location id: ASXX0075


## The Weather Man Server

If you want to push the exercise further, you can build a server accepting connections and returning a weather report as a string.
You might want to allow multiple concurrent client connections and even support various query options (location, temperature unit, ...)