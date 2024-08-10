local ChatService = game:GetService("Chat")
local characterHead = script.Parent.Head

local messages = {
    {text = "Your Text", color = Enum.ChatColor.Blue},
    {text = "Your Text", color = Enum.ChatColor.Blue},
    {text = "Your Text", color = Enum.ChatColor.Red}
}

while true do
    for _, message in ipairs(messages) do
        ChatService:Chat(characterHead, message.text, message.color)
        wait(10)
    end
end

--@abcMateusz