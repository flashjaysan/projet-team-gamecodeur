local ScreenManager = require('screen_manager')


function love.load()
    ScreenManager.Load()
end


function love.update(dt)
    ScreenManager.Update(dt)
end


function love.draw()
    ScreenManager.Draw()
end


function love.keypressed(key)
    -- quitte le jeu si la touche échap est enfoncée
    if key == 'escape' then
        love.event.quit()
    end
    ScreenManager.Keypressed(key)
end
