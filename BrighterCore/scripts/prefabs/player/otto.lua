local ____lualib = require("lualib_bundle")
local Map = ____lualib.Map
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 7,["18"] = 9,["19"] = 13,["20"] = 17,["21"] = 21,["22"] = 23,["23"] = 25,["24"] = 25,["25"] = 25,["26"] = 25,["27"] = 25,["28"] = 25,["29"] = 25,["30"] = 25,["31"] = 25,["32"] = 25,["33"] = 36,["34"] = 38,["35"] = 38,["36"] = 38,["37"] = 38,["38"] = 38,["39"] = 36,["40"] = 42,["41"] = 46,["42"] = 47,["43"] = 48,["44"] = 52,["45"] = 53,["46"] = 53,["47"] = 54,["48"] = 54,["49"] = 54,["50"] = 53,["51"] = 55,["52"] = 55,["53"] = 55,["54"] = 53,["55"] = 56,["56"] = 56,["57"] = 56,["58"] = 53,["59"] = 57,["60"] = 57,["61"] = 57,["62"] = 53,["63"] = 58,["64"] = 58,["65"] = 58,["66"] = 53,["67"] = 59,["68"] = 59,["69"] = 59,["70"] = 53,["71"] = 60,["72"] = 60,["73"] = 60,["74"] = 53,["75"] = 61,["76"] = 61,["77"] = 61,["78"] = 53,["79"] = 62,["80"] = 62,["81"] = 62,["82"] = 53,["83"] = 63,["84"] = 63,["85"] = 63,["86"] = 53,["87"] = 53,["88"] = 52,["89"] = 67,["90"] = 69,["91"] = 70,["92"] = 72,["93"] = 72,["94"] = 72,["95"] = 72,["96"] = 72,["97"] = 72,["98"] = 72,["99"] = 72,["100"] = 80,["101"] = 82,["102"] = 83,["103"] = 84,["104"] = 85,["105"] = 86,["106"] = 88,["107"] = 89,["108"] = 90,["109"] = 91,["110"] = 92,["111"] = 93,["112"] = 94,["114"] = 97,["115"] = 98,["116"] = 99,["117"] = 101,["118"] = 101,["119"] = 101,["120"] = 102,["121"] = 103,["122"] = 104,["123"] = 105,["124"] = 106,["126"] = 108,["127"] = 109,["128"] = 109,["129"] = 109,["130"] = 109,["131"] = 110,["132"] = 111,["133"] = 113,["135"] = 114,["136"] = 114,["137"] = 115,["138"] = 116,["139"] = 117,["140"] = 118,["142"] = 114,["145"] = 121,["146"] = 122,["148"] = 101,["149"] = 101,["150"] = 126,["151"] = 126,["152"] = 126,["153"] = 127,["154"] = 128,["155"] = 129,["156"] = 130,["157"] = 131,["158"] = 132,["159"] = 133,["160"] = 134,["161"] = 136,["162"] = 137,["163"] = 138,["164"] = 136,["165"] = 126,["166"] = 126,["167"] = 72,["168"] = 72,["169"] = 144,["170"] = 144,["171"] = 144,["172"] = 144,["173"] = 144,["174"] = 144,["175"] = 151,["176"] = 156,["177"] = 157,["178"] = 158,["179"] = 160,["180"] = 160,["181"] = 160,["182"] = 160});
local ____exports = {}
local ____input = require("components.input")
local InputStateTypes = ____input.InputStateTypes
local ____location = require("components.location")
local LayerTypes = ____location.LayerTypes
local ____Sizes = require("Sizes")
local Sizes = ____Sizes.Sizes
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
    filter = PhysicsLayers.GROUND
})
prefab:addInventory({inventories = {{
    size = 30,
    features = bit.bor(
        bit.bor(InventoryFeatures.Collect, InventoryFeatures.Deposit),
        InventoryFeatures.Withdraw
    )
}}})
prefab:addGatherer({range = 48})
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
                end)
            end
        )
    end
})
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
prefab:addLight({
    intensity = 120,
    color = Color.new(200, 255, 255)
})
return ____exports
