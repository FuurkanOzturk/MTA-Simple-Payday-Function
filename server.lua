function payday()
    for _, player in ipairs(getElementsByType('player')) do
        plr = player
        if not isGuestAccount(plr) then
            value = 200 -- Hourly Wage
            GivePlayerMoney(plr, value)
            outputChatBox('[PAYDAY] #FFFFFF Success, you have been given $'..value..'.', plr, 255, 0, 0, true)
        end
    end
end
Timer(payday, 60*60*1000, 0)
