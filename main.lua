local function SetTimeout(fn, duration)
    local frame = CreateFrame("Frame")

    local ag = frame:CreateAnimationGroup()
    ag:SetLooping("NONE")

    local ani = ag:CreateAnimation("Animation");
    ani:SetOrder(1);
    ani:SetDuration(duration)

    ag:SetScript("OnFinished", function(self)
        fn()
    end)

    ag:Play()
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ACHIEVEMENT_EARNED")
frame:SetScript("OnEvent", function()
    SetTimeout(Screenshot, 1)
end)