/*
 * Forge of Souls quest chain
 */

-- Allow Horde quest-line to interact with Alliance quest creatures
REPLACE INTO `creature_queststarter` (id, quest) VALUES
    (37597, 24511), -- Echoes of Tortured Souls from Jaina
    (37597, 24682), -- The Pit of Saron from Jaina
    (38160, 24682),
    (36993, 24507), -- The Path to the Citadel from Jaina
    (37591, 24712), -- Deliverance from the Pit from Martin Victus
    (38188, 24713), -- Frostmourne from Jaina
    (37582, 24802); -- Wrath of the Lich King from Archmage Koreln

REPLACE INTO `creature_questender` (id, quest) VALUES
    (37597, 24506), -- Inside the Frozen Citadel to Jaina
    (38160, 24511), -- Echoes of Tortured Souls to Jaina
    (37597, 24682), -- The Pit of Saron to Jaina
    (36993, 24682),
    (37591, 24507), -- The Path to the Citadel to Martin Victus
    (38188, 24712), -- Deliverance from the Pit to Jaina
    (37221, 24713), -- Frostmourne to Jainacrossfaction_extended_world_install.sql
    (36955, 24802); -- Wrath of the Lich King to Jaina

-- Allow Alliance quest-line to interact with Horde quest creatures
UPDATE `creature_template` SET `faction` = 1770 WHERE `entry` IN (37596, 37592);

REPLACE INTO `creature_queststarter` (id, quest) VALUES
    (37596, 24499), -- Echoes of Tortured Souls from Sylvanas
    (38161, 24683), -- The Pit of Saron from Sylvanas
    (36990, 24498), -- The Path to the Citadel from Sylvanas
    (37592, 24710), -- Deliverance from the Pit from Gorkun Ironskull
    (38189, 24711), -- Frostmourne from Sylvanas
    (37779, 24500); -- Wrath of the Lich King from Dark Ranger Loralen

REPLACE INTO `creature_questender` (id, quest) VALUES
    (37596, 24510), -- Inside the Frozen Citadel to Sylvanas
    (38161, 24499), -- Echoes of Tortured Souls to Sylvanas
    (36990, 24683), -- The Pit of Saron to Sylvanas
    (37592, 24498), -- The Path to the Citadel to Gorkun Ironskull
    (38189, 24710), -- Deliverance from the Pit to Sylvanas
    (37223, 24711), -- Frostmourne to Sylvanas
    (37554, 24500); -- Wrath of the Lich King to Sylvanas
