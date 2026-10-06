package com.microsoft.identity.common.java.opentelemetry;

import com.microsoft.identity.common.java.logging.Logger;
import defpackage.p18;
import defpackage.pn8;
import defpackage.q18;
import defpackage.r18;
import defpackage.sn8;
import defpackage.t40;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class TextMapPropagatorExtension {

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.opentelemetry.TextMapPropagatorExtension$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements r18 {
        @Override // defpackage.r18
        public final void set(HashMap map, String str, String str2) {
            map.put(str, str2);
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.opentelemetry.TextMapPropagatorExtension$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 implements p18 {
        @Override // defpackage.p18
        public final String get(Object obj, String str) {
            return (String) ((Map) obj).get(str);
        }
    }

    public static t40 extract(HashMap map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    try {
                        return q18.d(sn8.g, pn8.b).c(t40.a(), map, new AnonymousClass2());
                    } catch (NoSuchMethodError e) {
                        e = e;
                        Logger.error("TextMapPropagatorExtension:extract", "Failed to extract context", e);
                        return null;
                    }
                }
            } catch (Exception | NoSuchMethodError e2) {
                e = e2;
            }
        }
        return t40.a();
    }

    public static HashMap<String, String> inject(t40 t40Var) {
        try {
            HashMap<String, String> map = new HashMap<>();
            if (t40Var == null) {
                t40Var = t40.a();
            }
            try {
                q18.d(sn8.g, pn8.b).a(t40Var, map, new AnonymousClass1());
                return map;
            } catch (NoSuchMethodError e) {
                e = e;
                Logger.error("TextMapPropagatorExtension:inject", "Failed to inject context", e);
                return new HashMap<>();
            }
        } catch (Exception | NoSuchMethodError e2) {
            e = e2;
        }
    }
}
