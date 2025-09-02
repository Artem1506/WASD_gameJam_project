/// @description Parse YaGames events
if (not isMap(async_load)) {
//    log("async_load got lost in cyberspace");
} else {
    if ((async_load[? "type"]== YaGames_AsyncEvent) and (async_load[? "request_id"] == req_id)) {
		// Logging
//        var _msg = json_encode(async_load);
//        log(_msg);
		//
        switch (async_load[? "event"]) {	
			
//            case YaGames_CallEnvironment:
			case "environment":
                // Environment data
//				var _data = json_parse(async_load[? "data"]);
				var data1 = async_load[? "data"];
				var data2 = data1[? "i18n"];
				lang = data2[? "lang"]
				done = true
//				var _app_id = _data.app.id;
				// _data.i18n.lang;
				// _data.i18n.tld;
				// _data.data.baseUrl;
				// _data.data.secondDomain;
				// _data.isTelegram;
//				log("App ID: " + _app_id);
            break;
			
//            case YaGames_CallNotInitSDK:
            case "notInitSDK":
                // SDK not initialized
            break;
//            case YaGames_CallRuntimeError:
			case "RuntimeError":
                var errCode = async_load[? "code"];
                var errName = async_load[? "name"];
                var errMessage = async_load[? "message"];	
                // SDK runtime error
            break;
        }
   }
}
