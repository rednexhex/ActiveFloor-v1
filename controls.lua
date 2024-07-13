
for b = 1, 10 do
table.insert(ctrls, {
  Name = "filename "..b,
  ControlType = "Text",
  Count = 1
})
end

table.insert(ctrls, {
  Name = "Status",
  ControlType = "Indicator",
  IndicatorType = "Status",
})

table.insert(ctrls, {
  Name = "ipaddress",
  ControlType = "Text",
  DefaultValue = "127.0.0.1",
  Count = 1
})
table.insert(ctrls, {
  Name = "ResponseText",
  ControlType = "Text",
  Count = 1
})