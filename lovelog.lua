local lovelog = {}
lovelog.saveFile = "log.txt"
function lovelog.setFile(name)
  lovelog.saveFile = name
end
function lovelog.log(str, m)
  local file = love.filesystem.newFile(lovelog.saveFile)
  file:open("w")
  file:write(str)
  file:close()
end
function lovelog.read(mode) -- mode is "all" or the line number
  contents = love.filesystem.read(lovelog.saveFile)
  local text = {}
  local allText = {}
  local counter = 1
  for i=1, #contents do
    if string.sub(contents, i, i) == "\n" or i == #contents then
      if i == #contents then table.insert(text, string.sub(contents, i, i)) end
      table.insert(allText, table.concat(text))
      text = {}
    else
      table.insert(text, string.sub(contents, i, i))
    end
  end
  if type(mode) == "string" then
    if mode == "all" then print(table.concat(allText)) end
  elseif type(mode) == "number" then
    if allText[mode] ~= nil then
      print(allText[mode])
    else
      return nil
    end
  end
end
return lovelog
