-- Script by Rhyan57

function onCreatePost()
    -- Desativar a pista de notas do inimigo
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'visible', false)
    end

    -- Desativar as notas do adversário
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
            setPropertyFromGroup('unspawnNotes', i, 'visible', false)
        end
    end

    -- Centralizar a pista de notas do jogador
    for i = 0, 3 do
        setPropertyFromGroup('playerStrums', i, 'x', screenWidth / 2 - 200 + (i * 100))
    end
end

