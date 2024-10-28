local ____lualib = require("lualib_bundle")
local Map = ____lualib.Map
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 8,["20"] = 10,["21"] = 14,["22"] = 18,["23"] = 22,["24"] = 24,["25"] = 26,["26"] = 26,["27"] = 26,["28"] = 26,["29"] = 26,["30"] = 26,["31"] = 26,["32"] = 26,["33"] = 26,["34"] = 26,["35"] = 37,["36"] = 38,["37"] = 37,["38"] = 41,["39"] = 43,["40"] = 43,["41"] = 43,["42"] = 43,["43"] = 43,["44"] = 43,["45"] = 43,["46"] = 43,["47"] = 43,["48"] = 43,["49"] = 43,["50"] = 43,["51"] = 43,["52"] = 42,["53"] = 44,["54"] = 44,["55"] = 44,["56"] = 44,["57"] = 44,["58"] = 44,["59"] = 44,["60"] = 44,["61"] = 42,["62"] = 45,["63"] = 45,["64"] = 45,["65"] = 45,["66"] = 45,["67"] = 45,["68"] = 45,["69"] = 45,["70"] = 42,["71"] = 46,["72"] = 46,["73"] = 46,["74"] = 46,["75"] = 42,["76"] = 41,["77"] = 50,["78"] = 54,["79"] = 55,["80"] = 56,["81"] = 60,["82"] = 61,["83"] = 61,["84"] = 62,["85"] = 62,["86"] = 62,["87"] = 61,["88"] = 63,["89"] = 63,["90"] = 63,["91"] = 61,["92"] = 64,["93"] = 64,["94"] = 64,["95"] = 61,["96"] = 65,["97"] = 65,["98"] = 65,["99"] = 61,["100"] = 66,["101"] = 66,["102"] = 66,["103"] = 61,["104"] = 67,["105"] = 67,["106"] = 67,["107"] = 61,["108"] = 68,["109"] = 68,["110"] = 68,["111"] = 61,["112"] = 69,["113"] = 69,["114"] = 69,["115"] = 61,["116"] = 70,["117"] = 70,["118"] = 70,["119"] = 61,["120"] = 71,["121"] = 71,["122"] = 71,["123"] = 61,["124"] = 72,["125"] = 72,["126"] = 72,["127"] = 61,["128"] = 61,["129"] = 60,["130"] = 76,["131"] = 78,["132"] = 79,["133"] = 81,["134"] = 81,["135"] = 81,["136"] = 81,["137"] = 81,["138"] = 81,["139"] = 81,["140"] = 81,["141"] = 81,["142"] = 90,["143"] = 92,["144"] = 93,["145"] = 94,["146"] = 95,["147"] = 96,["148"] = 98,["149"] = 99,["150"] = 100,["151"] = 101,["152"] = 102,["153"] = 103,["154"] = 104,["156"] = 107,["157"] = 108,["158"] = 109,["159"] = 111,["160"] = 111,["161"] = 111,["162"] = 112,["163"] = 113,["164"] = 114,["165"] = 115,["166"] = 116,["168"] = 118,["169"] = 119,["170"] = 119,["171"] = 119,["172"] = 119,["173"] = 120,["174"] = 121,["175"] = 123,["177"] = 124,["178"] = 124,["179"] = 125,["180"] = 126,["181"] = 127,["182"] = 128,["184"] = 124,["187"] = 131,["188"] = 132,["190"] = 111,["191"] = 111,["192"] = 136,["193"] = 136,["194"] = 136,["195"] = 137,["196"] = 138,["197"] = 139,["198"] = 140,["199"] = 141,["200"] = 142,["201"] = 143,["202"] = 144,["203"] = 146,["204"] = 147,["205"] = 148,["206"] = 149,["207"] = 146,["208"] = 136,["209"] = 136,["210"] = 81,["211"] = 81,["212"] = 155,["213"] = 157,["214"] = 157,["215"] = 157,["216"] = 157,["217"] = 157,["218"] = 157,["219"] = 164,["220"] = 169,["221"] = 170,["222"] = 171,["223"] = 172,["224"] = 174,["225"] = 180,["226"] = 180,["227"] = 180,["228"] = 180,["229"] = 185,["230"] = 186,["231"] = 187,["232"] = 187,["233"] = 187,["234"] = 188,["235"] = 189,["236"] = 190,["237"] = 191,["238"] = 192,["239"] = 193,["240"] = 194,["242"] = 197,["243"] = 198,["244"] = 199,["245"] = 200,["247"] = 203,["248"] = 204,["249"] = 205,["250"] = 206,["251"] = 187,["252"] = 187,["253"] = 185});
local ____exports = {}
local ____input = require("components.input")
local InputStateTypes = ____input.InputStateTypes
local ____location = require("components.location")
local LayerTypes = ____location.LayerTypes
local ____Sizes = require("Sizes")
local Sizes = ____Sizes.Sizes
local ____item = require("systems.item")
local ItemSystem = ____item.ItemSystem
local ____scheduler = require("systems.scheduler")
local scheduler = ____scheduler.scheduler
local ____world = require("world")
local World = ____world.World
local prefab = Prefab.getCurrent()
prefab:addTransform({origin = Vector.new(37, 80)})
prefab:addLocation({layer = LayerTypes.Player})
prefab:addRender("otto-1", {layer = 9})
prefab:addIllumination(1)
prefab:addAnimation({})
prefab:addPhysics({
    type = PhysicsBody.Kinematic,
    body = Rect.new(0, 0, 12, 27),
    offset = Vector.new(-6, -25),
    terminalVelocity = Vector.new(10, 7),
    friction = 1,
    restitution = 0,
    layer = PhysicsLayers.PLAYER,
    filter = bit.bor(PhysicsLayers.GROUND, PhysicsLayers.ITEM)
})
local function filterOutCurrencies(item)
    return not ItemSystem.currencies:has(item.entityID)
end
prefab:addInventory({inventories = {
    {
        size = 40,
        filter = filterOutCurrencies,
        features = bit.bor(
            bit.bor(
                bit.bor(
                    bit.bor(InventoryFeatures.Collect, InventoryFeatures.Deposit),
                    InventoryFeatures.Withdraw
                ),
                InventoryFeatures.Craftable
            ),
            InventoryFeatures.Transfer
        )
    },
    {
        name = "ancient_tech",
        size = 1,
        filterPrefabs = {Prefab.getID("material.ancient_tech")},
        features = bit.bor(
            bit.bor(InventoryFeatures.Collect, InventoryFeatures.Deposit),
            InventoryFeatures.Transfer
        )
    },
    {
        name = "void_matter",
        size = 1,
        filterPrefabs = {Prefab.getID("material.void_matter")},
        features = bit.bor(
            bit.bor(InventoryFeatures.Collect, InventoryFeatures.Deposit),
            InventoryFeatures.Transfer
        )
    },
    {
        name = "trash",
        size = 1,
        features = bit.bor(InventoryFeatures.Deposit, InventoryFeatures.Withdraw)
    }
}})
prefab:addGatherer({range = 64})
prefab:addPlayer()
prefab:addInteraction()
prefab:addQuickbar({size = 4})
prefab:addStats({stats = __TS__New(
    Map,
    {
        {
            "HP",
            Stat.new(4, 99, 4)
        },
        {
            "HPRegen",
            Stat.new(0, 99)
        },
        {
            "ATK",
            Stat.new(5, 99)
        },
        {
            "RNG",
            Stat.new(1, 99)
        },
        {
            "DEF",
            Stat.new(4, 99)
        },
        {
            "MOVE",
            Stat.new(1, 2)
        },
        {
            "CRAFT",
            Stat.new(0.75, 10)
        },
        {
            "HARVEST",
            Stat.new(2, 10)
        },
        {
            "SPEED",
            Stat.new(1, 2)
        },
        {
            "REACH",
            Stat.new(Sizes.TILE * 8, 999)
        },
        {
            "ammo",
            Stat.new(5, 5, 5)
        }
    }
)})
prefab:addInput()
local recovery_cube_intro_hs = HashString("recovery_cube.intro")
local recovery_cube_idle_hs = HashString("recovery_cube.idle")
prefab:addCombat({
    team = CombatTeam.Player,
    priority = CombatPriority.Maximum,
    destroyOnDeath = false,
    isAttacking = false,
    fx = {"action_fx.sword_slash", "action_fx.sword_slash2"},
    takeHitSfx = "event:/PLAYER/OTTO_TAKEHIT",
    deathSfx = "event:/PLAYER/OTTO_DEATH",
    pushback = Vector.new(2, 0.5),
    onDeath = function(self, entity, killer)
        local realm = World:get(entity.location.realm)
        local apotheos = EntityManager.get(realm.apotheos)
        local transform = entity.transform
        local physics = entity.physics
        physics.velocity:reset()
        local player = entity.player
        local position = entity.transform.position
        local regionID = realm.regions:getRegionId(position)
        local region = realm.regions:get(regionID)
        if not region.isEmitted then
            position:set(player.lastSafePosition.x, player.lastSafePosition.y)
            physics.body:setPosition(position.x + physics.offset.x, position.y + physics.offset.y)
        end
        animator.play(entity, "death_true")
        entity.input:lock()
        entity.combat.isInvincible = true
        scheduler:add(
            seconds(3),
            function()
                local playerInventory = entity.inventory:get()
                if not playerInventory:isEmpty() then
                    local position = physics.body:center()
                    if position:getDistance(player.lastSafePosition) > Sizes.TILE then
                        position = player.lastSafePosition
                    end
                    position.x = position.x + transform.scale.x * -14
                    local recovery = EntityManager.create(
                        Prefab.get("player.recovery_cube"),
                        position
                    )
                    animator.play(recovery, recovery_cube_intro_hs)
                    animator.queue(recovery, recovery_cube_idle_hs, true)
                    local recoveryInventory = recovery.inventory:get()
                    do
                        local index = 0
                        while index < #playerInventory.items do
                            local item = playerInventory.items[index + 1]
                            if item.entityID ~= INVALID_ENTITYID and not item:entity().item:hasCategory("retain") then
                                recoveryInventory:set(index, item)
                                playerInventory:erase(index)
                            end
                            index = index + 1
                        end
                    end
                    playerInventory:sort()
                    World:get(entity.location.realm):add(recovery, true)
                end
            end
        )
        scheduler:add(
            seconds(4),
            function()
                entity.input:changeState(InputStateTypes.Idle)
                animator.play(entity, "awaken")
                physics:setAwake(true)
                local hp = entity.stats:get("HP")
                hp:setCurrent(hp:get())
                local position = apotheos.transform.position
                transform.position:set(position.x, position.y - physics.body.height)
                physics.body:setPosition(transform.position.x + physics.offset.x, transform.position.y + physics.offset.y)
                entity.animation.onFinished:listen(function(____, name)
                    entity.combat.isInvincible = false
                    entity.input.locked = false
                    return false
                end)
            end
        )
    end
})
prefab:addEffect()
prefab:addConsumer({
    isAutonomous = true,
    idlePower = 0,
    activePower = 0,
    state = bit.bor(ConsumerState.On, ConsumerState.Powered)
})
prefab:addResearch({type = ResearcherType.Player, speed = 1})
prefab:addAttachment()
prefab:addCrafter()
prefab:addArmory()
prefab:addCosmetic()
prefab:addMarker({category = MarkerCategory.Character, icon = "map_icons_otto", isTransient = true})
prefab:addLight({
    intensity = 120,
    color = Color.new(200, 255, 255)
})
prefab.onCreate:listen(function(entity)
    local entityID = entity.id
    scheduler:add(
        1,
        function()
            local entity = EntityManager.get(entityID)
            local paletteMaterial = Renderer.getMaterialHandle("sprite_palette")
            entity.render.material = paletteMaterial
            local cosmeticComponent = entity.cosmetic
            if cosmeticComponent.cosmetic:isEmpty() then
                cosmeticComponent.cosmetic = HashString("Default")
                cosmeticComponent.palette = HashString("palette_otto_default")
            end
            if not cosmetic.apply(entity, cosmeticComponent.cosmetic, cosmeticComponent.palette) then
                cosmeticComponent.cosmetic = HashString("Default")
                cosmeticComponent.palette = HashString("palette_otto_default")
                cosmetic.apply(entity, cosmeticComponent.cosmetic, cosmeticComponent.palette)
            end
            local arm = EntityManager.get(entity.attachment:get("arm"))
            arm.render.material = paletteMaterial
            cosmetic.apply(arm, cosmeticComponent.cosmetic, cosmeticComponent.palette)
            animator.setAssociation(arm, "otto_right_arm")
        end
    )
end)
return ____exports
