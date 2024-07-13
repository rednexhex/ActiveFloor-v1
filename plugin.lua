-- BrightLogic ActiveFloor 
-- by Matty
-- March 2024

--[[ #include "info.lua" ]]

function GetColor(props)
  return { 155, 66, 245 }
end

function GetPrettyName(props) --The name that will initially display when dragged into a design
  return "BrightLogic ActiveFloor, ver. " .. PluginInfo.Version
end

function GetProperties()
  local props = {}
  --[[ #include "properties.lua" ]]
  return props
end

function GetControls(props)
  local ctrls = {}
  --[[ #include "controls.lua" ]]
  return ctrls
end

function GetControlLayout(props)
  local layout   = {}
  local graphics = {}
  --[[ #include "layout.lua" ]]
  return layout, graphics
end

--Start event based logic
if Controls then
  --[[ #include "runtime.lua" ]]
end