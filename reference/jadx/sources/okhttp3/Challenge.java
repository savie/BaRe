package okhttp3;

import defpackage.dj7;
import defpackage.fz5;
import defpackage.pe4;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Challenge {
    public final String a;
    public final Map b;

    public Challenge(Map map, String str) {
        String strQ;
        this.a = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            String str2 = (String) entry.getKey();
            String str3 = (String) entry.getValue();
            if (str2 != null) {
                Locale locale = Locale.US;
                strQ = dj7.q(locale, str2, locale);
            } else {
                strQ = null;
            }
            linkedHashMap.put(strQ, str3);
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        mapUnmodifiableMap.getClass();
        this.b = mapUnmodifiableMap;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Challenge)) {
            return false;
        }
        Challenge challenge = (Challenge) obj;
        return challenge.a.equals(this.a) && pe4.d(challenge.b, this.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + fz5.g(899, 31, this.a);
    }

    public final String toString() {
        return this.a + " authParams=" + this.b;
    }
}
