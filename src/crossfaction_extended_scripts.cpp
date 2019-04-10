/**
    This plugin can be used to extend the core's support of cross-faction play.
 */

#include "ScriptMgr.h"
#include "Configuration/Config.h"

class WS_ModCrossFactionExtended : public WorldScript{
public:

    WS_ModCrossFactionExtended() : WorldScript("WS_ModCrossFactionExtended") { }

    void OnBeforeConfigLoad(bool reload) override
    {
        if (!reload) {
            std::string conf_path = _CONF_DIR;
            std::string cfg_file = conf_path + "/mod_crossfaction_extended.conf";
            sConfigMgr->LoadMore(cfg_file.c_str());
        }
    }
};

class PS_ModCrossFactionExtended : public PlayerScript{
public:

    PS_ModCrossFactionExtended() : PlayerScript("PS_ModCrossFactionExtended") { }

    void OnLogin(Player* player) override {
        if (sConfigMgr->GetBoolDefault("CrossFaction.Extended.Enabled", false)) {
            ChatHandler(player->GetSession()).SendSysMessage("Hello World from mod-crossfaction-extended!");
        }
    }
};

void AddSC_crossfaction_extended() {
    new WS_ModCrossFactionExtended();
    new PS_ModCrossFactionExtended();
}