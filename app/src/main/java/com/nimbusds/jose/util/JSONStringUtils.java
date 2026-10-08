package com.nimbusds.jose.util;

import com.nimbusds.jose.shaded.gson.Gson;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JSONStringUtils {
    private JSONStringUtils() {
    }

    public static String toJSONString(String str) {
        return new Gson().toJson(str);
    }
}
