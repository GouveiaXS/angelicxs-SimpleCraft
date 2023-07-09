----------------------------------------------------------------------
-- Thanks for supporting AngelicXS Scripts!							--
-- Support can be found at: https://discord.gg/tQYmqm4xNb			--
-- More paid scripts at: https://angelicxs.tebex.io/ 				--
-- More FREE scripts at: https://github.com/GouveiaXS/ 				--
----------------------------------------------------------------------

Config = {}

Config.UseESX = false						-- Use ESX Framework
Config.UseQBCore = true					-- Use QBCore Framework (Ignored if Config.UseESX = true)

Config.UseCustomNotify = false				-- Use a custom notification script, must complete event below.

-- Only complete this event if Config.UseCustomNotify is true; mythic_notification provided as an example
RegisterNetEvent('angelicxs-SimpleCraft:CustomNotify')
AddEventHandler('angelicxs-SimpleCraft:CustomNotify', function(message, type)
    --exports.mythic_notify:SendAlert(type, message, 4000)
end)

Config.NHInput = false						-- Use NH-Input [https://github.com/nerohiro/nh-keyboard]
Config.NHMenu = false						-- Use NH-Menu [https://github.com/whooith/nh-context]
Config.QBInput = true						-- Use QB-Input (Ignored if Config.NHInput = true) [https://github.com/qbcore-framework/qb-input]
Config.QBMenu = true						-- Use QB-Menu (Ignored if Config.NHMenu = true) [https://github.com/qbcore-framework/qb-menu]
Config.OXLib = false						-- Use the OX_lib (Ignored if Config.NHInput or Config.QBInput = true) [https://github.com/overextended/ox_lib]  !! must add shared_script '@ox_lib/init.lua' and lua54 'yes' to fxmanifest!!

Config.UseThirdEye = true					-- If true, allows use of third eye
Config.ThirdEyeName = 'qb-target'			-- If Config.UseThirdEye = true, name of third eye program
Config.Show3DText = true					-- If true, will show 3D text when near crafting point.
Config.PropName =  'prop_tool_bench02'		-- Name of prop is used for location.

--[[
	EXAMPLE/TEMPLATE OF CONFIGS MENU
Config.ItemMenu = {
	['CATEGORYNAME'] = {
		ItemList = {
			['ITEMLABELHERE'] = {
				ItemName = 'ITEMNAMEHERE',
				NumberReceived = QUANTITYGAINED,
				CraftingItems = {
					{itemname = 'ITEMNAMEHERE', label = 'ITEMLALABELHERE', quantity = QUANTITYREMOVED/REQURIED},
					{itemname = 'ITEMNAMEHERE', label = 'ITEMLALABELHERE', quantity = QUANTITYREMOVED/REQURIED},
				},
			},
			['Weather P2 Pistol'] = {
				ItemName = 'weapon_pistol',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'plastic', label = 'Plastic', quantity = 10},
					{itemname = 'metalscrap', label = 'Metal Scrap', quantity = 15}, 
				},
			},
		},
	},
}

Config.LocationInfo = {
	[1] = {
		Location = vector4(),
		Categories = {
			'CATEGORYNAME',
			'CATEGORYNAME',
		},
		RequireMenuItem = true,
		RequiredMenuItemName = 'REQUIREDMENUITEMNAME',
	},
}
]]

Config.ItemMenu = {
	['Assault Rifle'] = {
		ItemList = {
			['Assault Rifle'] = {
				ItemName = 'weapon_assaultrifle',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'plastic', label = 'Plastic', quantity = 5},
					{itemname = 'metalscrap', label = 'Metal Scrap', quantity = 10},
				},
			},
			['Carbine Rifle'] = {
				ItemName = 'weapon_carbinerifle',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'plastic', label = 'Plastic', quantity = 10},
					{itemname = 'metalscrap', label = 'Metal Scrap', quantity = 15},
				},
			},
		},
	},
	['Pistols'] = {
		ItemList = {
			['Walther P99'] = {
				ItemName = 'weapon_pistol',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'plastic', label = 'Plastic', quantity = 1},
					{itemname = 'metalscrap', label = 'Metal Scrap', quantity = 5},
				},
			},
		},
	},
}

Config.LocationInfo = {
	[1] = {
		Location = vector4(1675.32, -1620.22, 112.48, 81.68),
		Categories = {
			'Assault Rifle',
			'Pistols',
		},
		RequireMenuItem = false,
		RequiredMenuItemName = 'weapon_pistol',
		SpawnTableProp = true,
	},
	[2] = {
		Location = vector4(1687.59, -1618.28, 112.49, 7.51),
		Categories = {
			'Pistols',
		},
		RequireMenuItem = false,
		RequiredMenuItemName = 'weapon_pistol',
		SpawnTableProp = true,
	},
}

-- Language Configuration
Config.LangType = {
	['error'] = 'error',
	['success'] = 'success',
	['info'] = 'primary'
}

Config.Lang = {
	['PressEOpenMenu'] = 'Press ~r~[E]~w~ to Open.',
	['OpenMenu'] = 'Open Menu',
	['noaccess'] = 'You do not have the required item to access this.',
	['menu_header'] = 'Conversion Menu',
	['menu_header_items'] = 'Item Menu',
	['item_collect'] = 'You have successfully received the ',
	['no_item'] = 'You do not have the prerequisite items!',
	['cancel'] = 'Cancel',
	['confirm'] = 'Confirm',
	['required'] = 'Items Required to trade:',

}
