local banned_chars = {'"', "'", "<", ">", "=", "script"}
local kick_when_found = true
local check_on_connect = true
local check_during_playing = true

local function checkName(name)
  for key, ply in pairs(GetPlayers()) do
      if string.find(name, name) then
        return true
      end
  end
  return falsez
end

AddEventHandler('playerConnecting', function(playername, setKickReason)
  if check_on_connect then
    if checkName(playername) then
      if kick_when_found then
        TriggerClientEvent('chatMessage', -1, ':fsn_server:', {255,0,0}, GetPlayerIdentifiers(source)[1]..' was removed from the server due to disallowed characters in their Steam name.')
        DropPlayer(source, '[SERVER] You have been removed from the session due to your Steam name.')
        setKickReason('[SERVER] You have been removed from the session due to your Steam name.')
      else
        
      end
    end
  end
end)
