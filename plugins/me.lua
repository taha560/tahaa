do
local function (msg.matches)
if matches[1] == 'me'
return 'me"..msg.from.id
end
end

return {
patterns ={
"^me$"
},
run = run
}
