package com.microsoft.identity.common.java.util;

import com.google.gson.a;
import com.google.gson.b;
import com.google.gson.reflect.TypeToken;
import defpackage.dj7;
import defpackage.km4;
import defpackage.nn4;
import defpackage.t14;
import defpackage.tl4;
import defpackage.xs1;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class QueryParamsAdapter extends b {
    private static final a mGson;

    static {
        t14 t14Var = new t14();
        t14Var.c(new QueryParamsAdapter(), TypeToken.getParameterized(List.class, TypeToken.getParameterized(Map.Entry.class, String.class, String.class).getRawType()).getType());
        mGson = new a(t14Var);
    }

    public static String _toJson(List<Map.Entry<String, String>> list) {
        return mGson.j(list, TypeToken.getParameterized(List.class, TypeToken.getParameterized(Map.Entry.class, String.class, String.class).getRawType()).getType());
    }

    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) throws IOException {
        int iA = dj7.A(tl4Var.peek());
        if (iA != 0) {
            if (iA != 2) {
                return new ArrayList();
            }
            ArrayList arrayList = new ArrayList();
            tl4Var.beginObject();
            while (tl4Var.hasNext()) {
                arrayList.add(new AbstractMap.SimpleEntry(tl4Var.nextName(), tl4Var.nextString()));
            }
            tl4Var.endObject();
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        tl4Var.beginArray();
        while (tl4Var.hasNext()) {
            tl4Var.beginObject();
            String strNextString = "";
            String strNextString2 = "";
            while (tl4Var.hasNext()) {
                String strNextName = tl4Var.nextName();
                if (StringUtil.equalsIgnoreCase(strNextName, "first")) {
                    strNextString = tl4Var.nextString();
                } else {
                    if (!StringUtil.equalsIgnoreCase(strNextName, "second")) {
                        throw new km4(xs1.j("Unexpected NAME field: ", strNextName));
                    }
                    strNextString2 = tl4Var.nextString();
                }
            }
            arrayList2.add(new AbstractMap.SimpleEntry(strNextString, strNextString2));
            tl4Var.endObject();
        }
        tl4Var.endArray();
        return arrayList2;
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) throws IOException {
        nn4Var.b();
        for (Map.Entry entry : (List) obj) {
            nn4Var.g();
            nn4Var.n("first");
            nn4Var.S((String) entry.getKey());
            nn4Var.n("second");
            nn4Var.S((String) entry.getValue());
            nn4Var.m();
        }
        nn4Var.j();
    }
}
