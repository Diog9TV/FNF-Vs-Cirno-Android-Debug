local angleshit = 1;
local anglevar = 1;

function onCreatePost()
    setProperty('boyfriend.visible',false)
    setProperty('camHUD.visible', false);
end

function onBeatHit()
    if curBeat == 1 then
    doTweenY('sign', 'sign',  0, 0.5, 'linear')
end
    if curBeat == 10 then
    doTweenY('Sign', 'sign',  -1000, 1.5, 'linear')
end
    if curBeat == 15 then
    removeLuaSprite('sign', false);
end
    if curBeat == 30 then
    setProperty('defaultCamZoom', 1.3)
end
    if curBeat == 32 then
    setProperty('Flash.alpha', 1);
	doTweenAlpha('Flash', 'Flash', 0, 1, 'linear');      
    setProperty('camHUD.visible', true);
	addLuaSprite('bgScroll',false);
    addLuaSprite('bus', false);
    removeLuaSprite('BG1', false);
	removeLuaSprite('desks', false);
end
	if curBeat == 64 then
    setProperty('Flash.alpha', 1);
	doTweenAlpha('Flash', 'Flash', 0, 1, 'linear');  	
	addLuaSprite('bgIce', false);
	addLuaSprite('bgScrollingIceBACK',true);
	addLuaSprite('bgScrollingIce',true);
	removeLuaSprite('Overlay', true);
	removeLuaSprite('bgScroll', false);
	removeLuaSprite('bus', false);
end
    if curBeat == 128 then
    setProperty('Flash.alpha', 1);
	doTweenAlpha('Flash', 'Flash', 0, 1, 'linear');      
    addLuaSprite('bgScroll',false);
    addLuaSprite('bus', false);
    makeLuaSprite('Overlay', 'cirno/pmath/phase1/addOverlay', 0, -50);
    addLuaSprite('Overlay', true);
    setBlendMode('Overlay','add')
    removeLuaSprite('bgIce', false);
    removeLuaSprite('bgScrollingIceBACK', true);
    removeLuaSprite('bgScrollingIce', true);
end
    if curBeat == 288 then
    setProperty('Flash.alpha', 1);
	doTweenAlpha('Flash', 'Flash', 0, 1, 'linear');      
	makeAnimatedLuaSprite('bgScrollingIceBACK', 'cirno/pmath/phase3/bgScrollingIceBACK', 0, 0);
	addAnimationByPrefix('bgScrollingIceBACK', 'BG','BG',600,true)
	setScrollFactor('bgScrollingIceBACK', 0, 0);
	objectPlayAnimation('bgScrollingIceBACK', 'BG',true)
	scaleObject('bgScrollingIceBACK',1, 1)
	addLuaSprite('bgScrollingIceBACK',true);
	
	makeAnimatedLuaSprite('bgScrollingIce', 'cirno/pmath/phase3/bgScrollingIce', 125, 0);
	addAnimationByPrefix('bgScrollingIce', 'BG','BG',600,true)
	setScrollFactor('bgScrollingIce', 0, 0);
	objectPlayAnimation('bgScrollingIce', 'BG',true)
	scaleObject('bgScrollingIce',1, 1)
	addLuaSprite('bgScrollingIce',true);
    removeLuaSprite('Overlay', false);
	removeLuaSprite('bgScroll', false);
	removeLuaSprite('bus', false);
	addLuaSprite('bgIce', false);
end
if curBeat > 288 then
		triggerEvent('Add Camera Zoom', 0.04,0.05)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end
		
end

function onStepHit()
	if curBeat > 288 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	end
end