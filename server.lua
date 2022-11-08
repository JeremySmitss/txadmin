ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


namecache = {}

RegisterServerEvent('AdminPanel:join')
AddEventHandler('AdminPanel:join', function()
    namecache[tostring(source)] = GetPlayerName(source)
end)

AddEventHandler('txAdmin:events:playerBanned', function(eventData)
    local id = namecache[tostring(eventData.target)]
    local admin = eventData.author
    local reason = eventData.reason

    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(40, 40, 40, 0.6); border-radius: 13px;"><i class="fa fa-desktop"></i><span style="color: red;"> [Staff Panel]: </span> <span style="color: orange;">{0}</span> is op vakantie gestuurd door <span style="color: #37f60b;">{1}</span> voor <span style="color: orange;">{2}</span></div>',
        args = { id, admin, reason }
    })

end)

AddEventHandler('txAdmin:events:announcement', function(eventData)
    local id = namecache[tostring(eventData.target)]
    local admin = eventData.author
    local reason = eventData.reason

    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(40, 40, 40, 0.6); border-radius: 13px;"><i class="fa fa-desktop"></i><span style="color: red;"> [Staff Panel]: </span> <span style="color: orange;">{0}</span> heeft een compliment gekregen door <span style="color: #37f60b;">{1}</span> voor <span style="color: orange;">{2}</span></div>',
        args = { id, admin, reason }
    })

end)

AddEventHandler('txAdmin:events:playerWarned', function(eventData)
    local id = namecache[tostring(eventData.target)]
    local admin = eventData.author
    local reason = eventData.reason

    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(40, 40, 40, 0.6); border-radius: 13px;"><i class="fa fa-desktop"></i><span style="color: red;"> [Staff Panel]: </span> <span style="color: orange;">{0}</span> heeft een waarschuwing gekregen door <span style="color: #37f60b;">{1}</span> voor <span style="color: orange;">{2}</span></div>',
        args = { id, admin, reason }
    })

end)

AddEventHandler('txAdmin:events:playerKicked', function(eventData)
    local id = namecache[tostring(eventData.target)]
    local admin = eventData.author
    local reason = eventData.reason

    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(40, 40, 40, 0.6); border-radius: 13px;"><i class="fa fa-desktop"></i><span style="color: red;"> [Staff Panel]: </span> <span style="color: orange;">{0}</span> is gekicked door <span style="color: #37f60b;">{1}</span> voor <span style="color: orange;">{2}</span></div>',
        args = { id, admin, reason }
    })

end)

-- extra comms -- 

-- made by the one and only Pascal --


RegisterCommand("admincomment", function(source, args, rawCommand)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(40, 40, 40, 0.6); border-radius: 13px;"><i class="fa fa-desktop"></i><span style="color: red;"> [Staff Panel]: </span> <span style="color: orange;">{0}</span> heeft een compliment gekregen door <span style="color: #37f60b;">{1}</span> voor <span style="color: orange;">{2}</span></div>',
        args = { GetPlayerName(tonumber(args[1])), GetPlayerName(source), rawCommand:sub(string.len("/admincomment "..args[1] .. " ")) }
    })

end,true)
