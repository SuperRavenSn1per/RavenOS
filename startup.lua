apis = {"ru.lua"}

options = {
  [0] = "os/login.lua",
  [1] = "",
  [2] = "os/terminal.lua",
  [3] = "os/shutdown.lua",
}

local sOption = 0

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
while true do
    term.clear()
    ru.centerWrite("-[ RavenOS Startup ]-", -3)
    ru.centerWrite((sOption == 0 and "> Normal <" or "Normal"), -1)
    ru.centerWrite((sOption == 1 and "> Safe <" or "Safe"), 0)
    ru.centerWrite((sOption == 2 and "> Terminal <" or "Terminal"), 1)
    ru.centerWrite((sOption == 3 and "> Shutdown <" or "Shutdown"), 2)
    event, key = os.pullEvent("key")
    if key == 208 then
        if sOption <= 2 then
            sOption = sOption + 1    
        else
            sOption = 0
        end
    elseif key == 200 then
        if sOption >= 1 then
          sOption = sOption - 1
        else
          sOption = 3
        end
    elseif key == 28 then
        shell.run(options[sOption])
        break
    end
end
