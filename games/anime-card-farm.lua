-- ===================================================
-- Auto Conveyor Roll Script (เวอร์ชันปรับปรุงการยิง Remote)
-- ===================================================

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local ConveyorRE = Remotes:WaitForChild("ConveyorRE")

_G.AutoRollConveyor = true 

task.spawn(function()
    print("🚀 เริ่มต้นระบบ Auto Roll (ปรับปรุงระบบยิง)...")
    
    while _G.AutoRollConveyor do
        pcall(function()
            -- ยิงหลายแบบเผื่อเกมต้องการค่าส่งไปที่ Remote
            ConveyorRE:FireServer()
            ConveyorRE:FireServer(true)
            ConveyorRE:FireServer(1)
        end)
        
        task.wait(0.1) 
    end
end)
