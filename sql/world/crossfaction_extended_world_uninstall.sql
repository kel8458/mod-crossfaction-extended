/*
 * Forge of Souls quest chain
 */

DELETE FROM `creature_queststarter` WHERE id = 37597 AND quest = 24511;
DELETE FROM `creature_queststarter` WHERE id = 37597 AND quest = 24682;
DELETE FROM `creature_queststarter` WHERE id = 38160 AND quest = 24682;
DELETE FROM `creature_queststarter` WHERE id = 36993 AND quest = 24507;
DELETE FROM `creature_queststarter` WHERE id = 37591 AND quest = 24712;
DELETE FROM `creature_queststarter` WHERE id = 38188 AND quest = 24713;
DELETE FROM `creature_queststarter` WHERE id = 37582 AND quest = 24802;

DELETE FROM `creature_questender` WHERE id = 37597 AND quest = 24506;
DELETE FROM `creature_questender` WHERE id = 38160 AND quest = 24511;
DELETE FROM `creature_questender` WHERE id = 37597 AND quest = 24682;
DELETE FROM `creature_questender` WHERE id = 36993 AND quest = 24682;
DELETE FROM `creature_questender` WHERE id = 37591 AND quest = 24507;
DELETE FROM `creature_questender` WHERE id = 38188 AND quest = 24712;
DELETE FROM `creature_questender` WHERE id = 37221 AND quest = 24713;
DELETE FROM `creature_questender` WHERE id = 36955 AND quest = 24802;

UPDATE `creature_template` SET `faction` = 714 WHERE `entry` IN (37596, 37592);

DELETE FROM `creature_queststarter` WHERE id = 37596 AND quest = 24499;
DELETE FROM `creature_queststarter` WHERE id = 38161 AND quest = 24683;
DELETE FROM `creature_queststarter` WHERE id = 36990 AND quest = 24498;
DELETE FROM `creature_queststarter` WHERE id = 37592 AND quest = 24710;
DELETE FROM `creature_queststarter` WHERE id = 38189 AND quest = 24711;
DELETE FROM `creature_queststarter` WHERE id = 37779 AND quest = 24500;

DELETE FROM `creature_questender` WHERE id = 37596 AND quest = 24510;
DELETE FROM `creature_questender` WHERE id = 38161 AND quest = 24499;
DELETE FROM `creature_questender` WHERE id = 36990 AND quest = 24683;
DELETE FROM `creature_questender` WHERE id = 37592 AND quest = 24498;
DELETE FROM `creature_questender` WHERE id = 38189 AND quest = 24710;
DELETE FROM `creature_questender` WHERE id = 37223 AND quest = 24711;
DELETE FROM `creature_questender` WHERE id = 37554 AND quest = 24500;
