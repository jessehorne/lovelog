lovelog
=======

Very simple log library for LÖVE games.

# How to add into your game
```
logger = require 'lovelog'
```

# How to use it once you've added the library
```
logger.setFile("savefile.txt") -- This sets the file being used


logger.log("Hello world!")     -- Logs a line of code into "savefile.txt"
logger.log("What's up?")       -- Logs a line of code into "savefile.txt"

logger.read("all")             -- Prints all the contents of the file being used
logger.read(1)                 -- Prints the first line of the file, if it exists
```

# Suggestions
Please make an 'issue', and submit it. You are also welcome to send your pull requests. :-)
