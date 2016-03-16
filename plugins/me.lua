local function run(msg.matches )
 if matches[1] == "me" then
  return "your id4⃣ \n"..msg.from.id
 end
end

return {
 patterns ={
  "^[!/#](me)$"
 },
 run = run
}
