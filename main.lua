local Settings = {
    FPSBoost = true,
    RemoveEffects = true,
    ViewDistance = true,
    PotatoMode = false
}

print("🌙 Kyōka Suigetsu by kall2009 🌙")

local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")

-- FPS BOOST
if Settings.FPSBoost then
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    
    pcall(function()
        setfpscap(60)
    end)

    Lighting.GlobalShadows = false
    Lighting.Brightness = 1
end

-- VIEW DISTANCE
if Settings.ViewDistance then
    Lighting.FogEnd = 1000000
end

-- REMOVE EFFECT
if Settings.RemoveEffects then
    for _,v in pairs(game:GetDescendants()) do

        if v:IsA("ParticleEmitter") then
            v.Enabled = false

        elseif v:IsA("Trail") then
            v.Enabled = false

        elseif v:IsA("Smoke") then
            v.Enabled = false

        elseif v:IsA("Fire") then
            v.Enabled = false

        elseif v:IsA("Sparkles") then
            v.Enabled = false
        end
    end
end

-- POTATO MODE
if Settings.PotatoMode then
    for _,v in pairs(game:GetDescendants()) do

        if v:IsA("Texture") then
            v:Destroy()

        elseif v:IsA("Decal") then
            v.Transparency = 0.5

        elseif v:IsA("MeshPart") then
            v.Material = Enum.Material.Plastic
            v.Reflectance = 0
        end
    end
end

-- WATER OPTIMIZER
if Terrain then
    Terrain.WaterWaveSize = 0
    Terrain.WaterWaveSpeed = 0
    Terrain.WaterReflectance = 0
    Terrain.WaterTransparency = 0
end

print("⚡ Kyōka Suigetsu Loaded ⚡")