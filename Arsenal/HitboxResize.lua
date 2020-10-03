local V3 = Vector3.new;
local Size = V3(20, 20, 20)
function getPlrName()
  for i,v in pairs(game:GetChildren()) do
    if v.ClassName == "Players" then
      return v.Name
    end
  end
end

local Players = getPlrName()
local Plr = game:GetService("Players").LocalPlayer
coroutine.resume(coroutine.create(function()
    while wait(1) do
        coroutine.resume(coroutine.create(function()
            for _,v in pairs(game[Players]:GetPlayers()) do
                if v.Name ~= Plr.Name and v.Character then
                    v.Character.LowerTorso.CanCollide = false
                    v.Character.LowerTorso.Material = "Neon"
                    v.Character.LowerTorso.Size = Size
                    v.Character.LowerTorso.Transparency = 1
                    v.Character.HumanoidRootPart.Size = Size
                    v.Character.HumanoidRootPart.Transparency = 1
                    v.Character.HumanoidRootPart.CanCollide = false
                end
            end
        end))
    end
end))
