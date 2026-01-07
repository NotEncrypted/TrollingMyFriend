-- This is made to troll Rich not for public use.. please
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local Player = game.Players.LocalPlayer

local Module = {}

Module.debug = function(output)
    print("Debug Console: ",output)
end

Module.Start = function(target)
    local character = Players:CreateHumanoidModelFromUserIdAsync(111209416, Enum.HumanoidRigType.R15)
    character.Parent = workspace
    character.Name = "theRReal67Noob"
    character.Animate:Destroy()
    character.HumanoidRootPart.CFrame = target.CFrame * CFrame.new(0,5,35)
    task.wait(8)
    character.Humanoid.WalkToPoint = (target.CFrame * CFrame.new(-5,0,-5)).Position
    task.wait(3)
    TextChatService:DisplayBubble(character.Head, "yo "..string.lower(target.Parent.Name))
    character.Humanoid.WalkToPoint = (target.CFrame * CFrame.new(-5,0,-5)).Position
    task.wait(4)
    character.HumanoidRootPart.CFrame = CFrame.new(character.HumanoidRootPart.CFrame.Position, target.CFrame.Position)
    TextChatService:DisplayBubble(character.Head, "what script?")
    task.wait(2)
    character.Humanoid.Jump = true
    task.wait(2)
    character.Humanoid.Jump = true
    task.wait(10)
    TextChatService:DisplayBubble(character.Head, "k.. enjoy the lag")

    task.wait(5)

    local folder = Instance.new("Folder",workspace)
    folder.Name = "_folder"

    for i = 1,500,1 do
        p = Instance.new("Part",folder)
        p.Transparency = 1 
        p.CanCollide = true
        p.CFrame = CFrame.new(0,1000,1)
    end

    task.wait(5)

    folder:Destroy()

    TextChatService:DisplayBubble(character.Head, "i leave u alone for now ")

    task.wait(2)

    character:Destroy()
end

return Module
