

table.insert(graphics, {
  Type = "Text",
  Text = "IP Address",
  Position = {0 , 10},
  Size = {80, 16},
  FontSize = 12,
  HTextAlign = "Left"
})
layout["ipaddress"] = {
  Legend = "ipaddress",
  Color = {153, 156, 161},
  FontSize = 12,
  Style = "Text",
  Position = {70 , 10},
  Size = {100, 16}
} 



table.insert(graphics, {
  Type = "Text",
  Text = "Status:",
  Position = {0, 30},
  Size = {50, 16},
  FontSize = 10,
  HTextAlign = "Left"
})

layout["Status"] = {
  PrettyName = "Connection Status", 
  Style = "Text",
  Position = {70, 30}, 
  Size = {100, 16}
}



for a = 1, 10 do
  layout["SendGet"..string.format("%d",a)] = {
  PrettyName = "snd"..string.format("%d",a),
  Style = "Button",
  Legend = "Send",
  Position = {0, 50 + 25 * a}, 
  Size = {40, 20}
}
end

for b = 1, 10 do
layout["filename "..b] = {
  PrettyName = "filename", 
  Style = "Text",
  Position = {35, 50 + 25 * b}, 
  Size = {120, 20}
}
end