-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Camera Fade' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('camera.alpha', targetAlpha);
		else
			doTweenAlpha('cameraFadeEventTween', 'camera', targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end