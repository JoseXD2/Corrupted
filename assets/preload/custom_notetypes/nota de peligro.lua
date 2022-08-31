function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'nota de peligro' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Nota de alerta'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	
function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'nota de peligro' then
		health = getProperty('health')
		setProperty('health', health- 0.3);
			playSound('sonido de disparo', 1)
		characterPlayAnim('bf', 'dodge', true);
		characterPlayAnim('pico', 'down', true);

	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'nota de peligro' then
		playSound('sonido de disparo', 1)
		characterPlayAnim('bf', 'dodge', true);
		characterPlayAnim('pico', 'down', true);
	end
end