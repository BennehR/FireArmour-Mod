--control.lua

script.on_event({defines.events.on_tick},
    function (e)
        if e.tick % 20 == 0 then --common trick to refude how often this runs, we dont want it running every tick just 1/second
            for index,player in pairs(game.connected_players) do --loop through all online players

                --if theyre wearing the fire armour
                if player.character and player.get_inventory(defines.inventory.player_armor).get_item_count("Fire-Armour") >= 1 then
                    --create the fire
                    player.surface.create_entity{name="fire-flame", position=player.position, force="neutral"}
                end
            end
        end
    end
)