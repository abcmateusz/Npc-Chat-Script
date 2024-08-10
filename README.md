# NPC Chat Script for Roblox

## Overview

This script enables an NPC (Non-Player Character) in Roblox to display a series of chat messages with different colors. The messages will be shown above the NPC's head and will cycle through the predefined messages indefinitely, pausing for 10 seconds between each message.

## Features

- Displays messages at the NPC's head.
- Supports multiple messages with customizable colors.
- Cycles through messages with a 10-second interval.

## Installation

1. **Add the Script**:
   - Insert this script into the NPC model in your Roblox game. Ensure that the script is a child of the NPC's `Head` part for proper functionality.

2. **Configure Messages**:
   - Modify the `messages` table in the script to include your desired chat texts and colors.

## Script Example

```lua
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
---
Author @abcMateusz
