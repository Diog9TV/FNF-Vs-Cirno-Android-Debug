function onCreate()
    makeLuaSprite('BG', 'cirno/chiru/cirnobg', 0, 0);
	setScrollFactor('BG', 0, 0);
	addLuaSprite('BG', false);
	
    makeAnimatedLuaSprite('idiot', 'cirno/chiru/idiot', 0, 0);
	addAnimationByPrefix('idiot', 'BG','BG',32,true)
	setScrollFactor('idiot', 0, 0);
	objectPlayAnimation('idiot', 'BG',false)
	scaleObject('idiot',1, 1)  
	addLuaSprite('idiot',false);
	
	makeAnimatedLuaSprite('idiot2', 'cirno/chiru/idiot2', 0, 0);
	addAnimationByPrefix('idiot2', 'BG','BG',32,true)
	setScrollFactor('idiot2', 0, 0);
	objectPlayAnimation('idiot2', 'BG',false)
	scaleObject('idiot2',1, 1)  
	addLuaSprite('idiot2',false);
	
    makeLuaSprite('floor', 'cirno/chiru/cirnofloor', 0, -150)
    addLuaSprite('floor', false)

end