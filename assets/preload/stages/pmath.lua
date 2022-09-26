function onCreate()
    makeLuaSprite('BG1', 'cirno/pmath/phase1/BGphase1', 0, -50);
    setScrollFactor('BG1', 1, 1);
    scaleObject('BG1',1, 1)  
    addLuaSprite('BG1', false);

    makeAnimatedLuaSprite('desks', 'cirno/pmath/phase1/desks', 200, 300);
	addAnimationByPrefix('desks', 'BOP','BOP',24,true)
	objectPlayAnimation('desks', 'BOP',false)
	scaleObject('desks',0.75, 0.75)  
	addLuaSprite('desks',false);
	
	makeLuaSprite('sign', 'cirno/pmath/phase1/sign', 0,-550);
    setObjectCamera('sign', 'camother', false);
    addLuaSprite('sign', false);

    makeAnimatedLuaSprite('bgScroll', 'cirno/pmath/phase2/bgScroll', 0, 0);
	addAnimationByPrefix('bgScroll', 'BG','BG',600,true)
	setScrollFactor('bgScroll', 0, 0);
	objectPlayAnimation('bgScroll', 'BG',false)
	scaleObject('bgScroll',1, 1)  
	
	makeLuaSprite('bus', 'cirno/pmath/phase2/bus', 0, 0);
	 
    makeLuaSprite('Overlay', 'cirno/pmath/phase1/addOverlay', 0, -50);
    setBlendMode('Overlay','add')
    addLuaSprite('Overlay', true);
    
    makeLuaSprite('bgIce', 'cirno/pmath/phase3/bgIce', 0, -50);
    setScrollFactor('bgIce', 0, 0);
 
    makeAnimatedLuaSprite('bgScrollingIceBACK', 'cirno/pmath/phase3/bgScrollingIceBACK', 0, 0);
	addAnimationByPrefix('bgScrollingIceBACK', 'BG','BG',600,true)
	setScrollFactor('bgScrollingIceBACK', 0, 0);
	objectPlayAnimation('bgScrollingIceBACK', 'BG',true)
	scaleObject('bgScrollingIceBACK',1, 1)
    
    makeAnimatedLuaSprite('bgScrollingIce', 'cirno/pmath/phase3/bgScrollingIce', 125, 0);
	addAnimationByPrefix('bgScrollingIce', 'BG','BG',600,true)
	setScrollFactor('bgScrollingIce', 0, 0);
	objectPlayAnimation('bgScrollingIce', 'BG',true)
	scaleObject('bgScrollingIce',1, 1)

    makeLuaSprite('Flash','',0,-200)
    makeGraphic('Flash',1440,1280,'FFFFFF')
    addLuaSprite('Flash',true)
    setObjectCamera('Flash','hud')
    setScrollFactor('Flash',0,0)
    
end