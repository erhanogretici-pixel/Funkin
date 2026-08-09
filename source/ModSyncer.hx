package;

import haxe.Http;
import sys.io.File;

class ModSyncer {
    public static var MANIFEST_URL:String = "https://raw.githubusercontent.com/KULLANICI_ADIN/REPO_ADIN/main/mods_manifest.json";

    public static function syncMods() {
        trace("Modlar kontrol ediliyor...");
        var http = new Http(MANIFEST_URL);
        http.onData = function(data:String) {
            trace("Mod listesi alındı: " + data);
        };
        http.request();
    }
}
