function onCreate()
    makeLuaSprite('chirutext', 'cirno/chiru/chirutext', -1280, 0);
	setScrollFactor('chirutext', 0, 0);

	makeLuaSprite('chirutext2', 'cirno/chiru/chirutext2', 1280, 0);
	setScrollFactor('chirutext2', 0, 0);
	
	makeLuaSprite('Black','',0,0)
    makeGraphic('Black',1280,720,'000000')
    setScrollFactor('Black',0,0)
    
    addLuaSprite('BG', false);
    addLuaSprite('idiot',false);
    addLuaSprite('idiot2',false);
    addLuaSprite('chirutext', false);
    addLuaSprite('chirutext2', false);
    addLuaSprite('floor', false)
end	
	
function onEvent(name, value1, value2)
    if name == "Cirno Change BG" then
    	choose = tonumber(value2);
		if (choose == 1) then
	    doTweenX('chirutext','chirutext',0,0.75,'linear')
	    doTweenX('chirutext2','chirutext2',1280,0.75,'linear')
	    addLuaSprite('chirutext', false);
	    setProperty('idiot.alpha', 0.75)
	    setProperty('idiot2.alpha', 0.75)
	    runTimer('Text1', 0.75);
	end   
	   	if (choose == 0) then
	    doTweenX('chirutext','chirutext',-1280,0.75,'linear')
	    doTweenX('chirutext2','chirutext2',1280,0.75,'linear')
	    setProperty('idiot.alpha', 1)
	    setProperty('idiot2.alpha', 1)
	    runTimer('Text0', 0.75);
    end
        if (choose == 2) then
	    doTweenX('chirutext2','chirutext2',0,0.75,'linear')
	    doTweenX('chirutext','chirutext',-1280,0.75,'linear')
	    addLuaSprite('chirutext2', false);
	    setProperty('idiot.alpha', 0.75)
	    setProperty('idiot2.alpha', 0.75)
	    runTimer('Text2', 0.75);
	end  
	    if (choose == 3) then
	    addLuaSprite('Black',false)
	    playSound('fnf_loss_sfx', 1, 0.4)
	    setProperty('defaultCamZoom',1.25)
	end
	    if (choose == 4) then
	    removeLuaSprite('Black', false);
	    setProperty('defaultCamZoom',1)
	end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Text1' then
removeLuaSprite('chirutext2', false);
elseif tag == 'Text2' then
removeLuaSprite('chirutext', false);
elseif tag == 'Text0' then
removeLuaSprite('chirutext', false);
removeLuaSprite('chirutext2', false);
end
end
