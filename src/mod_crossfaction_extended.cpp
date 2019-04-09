/**
    This plugin can be used to extend the core's support of cross-faction play.
 */

#include "ScriptMgr.h"
#include "Player.h"
#include "Configuration/Config.h"

class ModCrossFactionExtended : public PlayerScript{
public:

    ModCrossFactionExtended() : PlayerScript("ModCrossFaction") { }

    void OnLogin(Player* player) override {
        if (sConfigMgr->GetBoolDefault("CrossFaction.Extended.Enabled", false)) {
            ChatHandler(player->GetSession()).SendSysMessage("Hello World from mod-crossfaction-extended!");
        }
    }
};

void AddModCrossFactionExtendedScripts() {
    new ModCrossFactionExtended();
}

