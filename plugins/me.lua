local function run(msg, matches ) 
  local user = 'user#id'..msg.to.id
local chat = 'chat#id'..msg.from.id
  if matches[1] == "me" then
    return "آيدي شما\n "..msg.from.id\n..msg.to.id
  end
end

return {
  patterns ={
    "^[/! #](me)$",
    "^(me)$"
 }, 
  run = run 
}
