lovelog
=======

Very simple log library for LÖVE games.

# How to add into your game
```lua
logger = require 'lovelog'
```

# How to use it once you've added the library
```lua
logger.setFile("savefile.txt") -- This sets the file being used


logger.log("Hello world!")     -- Logs a line of code into save buffer
logger.log("What's up?")       -- Logs a line of code into save buffer

logger.save()                  -- Saves the buffer to the file

logger.read("all")             -- Prints all the contents of the file being used
logger.read(1)                 -- Prints the first line of the file, if it exists

logger.clearBuffer()           -- Clears the buffer
```

What is a buffer?
The buffer is all your 'logs' into a table.

# Suggestions
Please make an 'issue', and submit it. You are also welcome to submit a pull request. :-)
