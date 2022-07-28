function onCreate()
	-- background shit
	makeLuaSprite('wall back', 'wall back', -550, -200);
	setScrollFactor('wall back', 1, 1);
	
	makeLuaSprite('floor', 'floor', -1000, 420);
	setScrollFactor('floor', 1, 1);
	scaleObject('floor', 1.5, 1.2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('wall front1', 'wall front', -1730, -300);
		setScrollFactor('wall front1', 0.15, 0.2);
		scaleObject('wall front1', 1.5, 2.5);
		
		makeLuaSprite('wall front2', 'wall front', -100, -300);
		setScrollFactor('wall front2', 0.15, 0.2);
		scaleObject('wall front2', 1.5, 2.5);
		setProperty('wall front2.flipX', true); --mirror sprite horizontally
	end

	addLuaSprite('wall back', false);
	addLuaSprite('floor', false);
	addLuaSprite('wall front1', true);
	addLuaSprite('wall front2', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end