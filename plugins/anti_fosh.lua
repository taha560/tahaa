local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['antitag'] then
                lock_tag = data[tostring(msg.to.id)]['settings']['antitag']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_tag == "yes" then
        send_large_msg(chat, 'به دلیل استفاده از کلمه غیراخلاقی از بقیه چت محروم می شوید')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 
return {
  patterns = {
    "کس(.*)",
    "کون(.*)",
    "کیر(.*)",
    "ممه(.*)",
    "سکس(.*)",
    "سیکتیر(.*)",
    "قهبه(.*)",
    "بسیک(.*)",
    "بیناموس(.*)",
    "اوبی(.*)",
    "کونی(.*)",
    "بیشرف(.*)",
    "کس ننه(.*)",
    "ساک(.*)",
    "کیری(.*)",
    "خار کوسه(.*)",
    "ننه(.*)",
    "خواهرتو(.*)",
    "سکسی(.*)",
    "کسکش(.*)",
    "سیک تیر(.*)",
    "گاییدم(.*)",
    "میگام(.*)",
    "میگامت(.*)",
    "بسیک(.*)",
    "خواهرت(.*)",
    "خارتو(.*)",
    "کونت(.*)",
    "کوست(.*)",
    "شورت(.*)",
    "سگ(.*)",
    "کیری(.*)",
    "دزد(.*)",
    "ننت(.*)",
    "ابمو(.*)",
    "جق(.*)",
    "kos(.*)",
    "koni(.*)",
    "sik(.*)",
    "jende(.*)",
    "obi(.*)",
    "nane(.*)"
  },
  run = run
}
--Copyright and edit; @behroozyaghi
--Persian Translate; @behroozyaghi
--ch : @nod32team
--کپی بدون ذکر منبع حرام است--
