apis = {"ru.lua"}

term.clear()
term.setCursorPos(1,1)
print("> Loading RavenOS...")
print("> Loading APIs...")

for i,api in pairs(apis) do
  os.loadAPI("apis/"..api)
  print("> "..api.." loaded...")
end
print("> APIs loaded")

term.clear()
