-- gère les différents écrans de jeu
local ScreenManager = {}


function ScreenManager.Load()
    ScreenManager.currentScreen = 'title'
    ScreenManager.titleScreen = require('title')
    ScreenManager.gameScreen = require('game')
    ScreenManager.gameoverScreen = require('gameover')
end


function ScreenManager.Update(dt)
    if ScreenManager.currentScreen == 'title' then
        ScreenManager.titleScreen.Update(dt)
    elseif ScreenManager.currentScreen == 'game' then
        ScreenManager.gameScreen.Update(dt)
    elseif ScreenManager.currentScreen == 'gameover' then
        ScreenManager.gameoverScreen.Update(dt)
    end
end


function ScreenManager.Draw()
    if ScreenManager.currentScreen == 'title' then
        ScreenManager.titleScreen.Draw()
    elseif ScreenManager.currentScreen == 'game' then
        ScreenManager.gameScreen.Draw()
    elseif ScreenManager.currentScreen == 'gameover' then
        ScreenManager.gameoverScreen.Draw()
    end
end


function ScreenManager.Keypressed(key)
    if key == 'space' then
        if ScreenManager.currentScreen == 'title' then
            ScreenManager.currentScreen = 'game'
        elseif ScreenManager.currentScreen == 'game' then
            ScreenManager.currentScreen = 'gameover'
        elseif ScreenManager.currentScreen == 'gameover' then
            ScreenManager.currentScreen = 'title'
        end
    end
end


return ScreenManager