package com.microsoft.identity.common.java.util;

import com.google.gson.a;
import com.google.gson.reflect.TypeToken;
import defpackage.f6;
import java.io.StringReader;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class HeaderSerializationUtil {
    public static HashMap<String, List<String>> fromJson(String str) {
        if (str != null) {
            return (HashMap) new a().b(new StringReader(str), TypeToken.get(TypeToken.getParameterized(HashMap.class, String.class, TypeToken.getParameterized(List.class, String.class).getRawType()).getType()));
        }
        f6.n("jsonIn is marked non-null but is null");
        return null;
    }
}
