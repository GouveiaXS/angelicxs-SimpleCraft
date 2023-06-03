ESX = nil
QBcore = nil
 
if Config.UseESX then
    ESX = exports["es_extended"]:getSharedObject()
elseif Config.UseQBCore then
    QBCore = exports['qb-core']:GetCoreObject()
end

RegisterNetEvent('angelicxs-SimpleCraft:Server:CraftItem', function(item)
    local src = source
    local hasItems = 0
    local allItems = 0
    local inventory = {}
    local Player = nil
    if Config.UseESX then
        Player = ESX.GetPlayerFromId(source)
        inventory = Player.getInventory()
    elseif Config.UseQBCore then
        Player = QBCore.Functions.GetPlayer(src)
        inventory = Player.PlayerData.items
    end
    for x, y in pairs(item.CraftingItems) do
        hasItems = hasItems + 1
        for k,v in pairs (inventory) do
            local amount = 0
            if Config.UseESX then
                amount = v.count
            elseif Config.UseQBCore then
                amount = v.amount
            end
            if v.name == y.itemname and amount >= y.quantity then
                allItems = allItems + 1
            end
        end
    end
    if hasItems == allItems then
        for x, y in pairs(item.CraftingItems) do
            if Config.UseESX then
                Player.removeInventoryItem(y.itemname,y.quantity)
            elseif Config.UseQBCore then
                Player.Functions.RemoveItem(y.itemname,y.quantity)
            end
        end
        if Config.UseESX then
            Player.addInventoryItem(item.ItemName, item.NumberReceived)
        elseif Config.UseQBCore then
            Player.Functions.AddItem(item.ItemName, item.NumberReceived)
        end
        TriggerClientEvent('angelicxs-SimpleCraft:Notify', src, Config.Lang['item_collect']..tostring(item.name), Config.LangType['success'])
    else
        TriggerClientEvent('angelicxs-SimpleCraft:Notify', src, Config.Lang['no_item'], Config.LangType['error'])
    end
end)