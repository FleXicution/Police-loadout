RegisterCommand("loadout", function()
    GiveWeaponToPed(GetPlayerPed(-1), "weapon_pumpshotgun", 999, false, false)
    weaponComponent("weapon_pumpshotgun", "COMPONENT_AT_AR_FLSH")

    GiveWeaponToPed(GetPlayerPed(-1), "weapon_stungun", 999, false, false)

    GiveWeaponToPed(GetPlayerPed(-1), "weapon_carbinerifle", 999, false, false)
    weaponComponent("weapon_carbinerifle", "COMPONENT_AT_AR_FLSH")

    GiveWeaponToPed(GetPlayerPed(-1), "weapon_pistol", 999, false, false)
    weaponComponent("weapon_pistol", "COMPONENT_AT_PI_FLSH")

    GiveWeaponToPed(GetPlayerPed(-1), "weapon_flashlight", 999, false, false)

    GiveWeaponToPed(GetPlayerPed(-1), "weapon_nightstick", 999, false, false)

    GiveWeaponToPed(GetPlayerPed(-1), "weapon_bzgas", 999, false, false)


end)

function weaponComponent(weaponHash, component)
    if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(weaponHash), false) then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(weaponHash), GetHashKey(component))
     end
end

--https://wiki.rage.mp/index.php?title=Weapons_Components