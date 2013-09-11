local lovelog = {}
lovelog.saveFile = "log.txt"
lovelog._buffer = {}

function lovelog.setFile(name)
  lovelog.saveFile = name
end

function lovelog.clearBuffer()
  lovelog._buffer = {}
end

function lovelog.log(str)
  lovelog._buffer[#lovelog._buffer + 1] = str
end

function lovelog.save()
  local file = love.filesystem.newFile(lovelog.saveFile)
  file:open("w")
  for i,v in ipairs(lovelog._buffer) do 
    file:write(v .. "\n")
  end
  file:close()
end

function lovelog.read(mode) -- mode is "all" or the line number
  if type(mode) == "string" then
    if mode == "all" then 
      for i,v in ipairs(lovelog._buffer) do 
        print(v)
      end
    end
  elseif type(mode) == "number" then
    if lovelog._buffer[mode] ~= nil then
      print(lovelog._buffer[mode])
    else
      return nil
    end
  end
end

return lovelog
