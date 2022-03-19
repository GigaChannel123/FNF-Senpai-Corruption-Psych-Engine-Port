local canonMode = true

function onCreate()
    if canonMode then
          setPropertyFromClass('ClientPrefs', 'ghostTapping', false);
        end
end

function onEndSong()
        setPropertyFromClass('ClientPrefs', 'ghostTapping', true);
        return Function_Continue;
end