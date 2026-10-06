package defpackage;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import javax.security.auth.x500.X500Principal;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class mq8 {
    public static final String a(X500Principal x500Principal) {
        String name = x500Principal.getName();
        int i = 0;
        while (true) {
            if (i >= name.length()) {
                return null;
            }
            int length = name.length();
            boolean z = false;
            boolean z2 = false;
            int i2 = i;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                }
                char cCharAt = name.charAt(i2);
                if (cCharAt != '\"') {
                    if (cCharAt != '\\') {
                        if (cCharAt != '+' && cCharAt != ',') {
                            z = false;
                        } else if (!z && !z2) {
                            break;
                        }
                    } else {
                        z = !z;
                    }
                } else if (!z) {
                    z2 = !z2;
                }
                if (cCharAt != '\\') {
                    z = false;
                }
                i2++;
            }
            Integer numValueOf = i2 >= 0 ? Integer.valueOf(i2) : null;
            int iIntValue = numValueOf != null ? numValueOf.intValue() : name.length();
            String strSubstring = name.substring(i, iIntValue);
            int iG0 = nq7.g0('=', 0, 6, strSubstring);
            if (iG0 > 0) {
                String string = nq7.H0(strSubstring.substring(0, iG0)).toString();
                if (uq7.P(string, "CN", true) || pe4.d(string, "2.5.4.3")) {
                    String strS0 = nq7.s0(nq7.H0(strSubstring.substring(iG0 + 1)).toString());
                    StringBuilder sb = new StringBuilder(strS0.length());
                    boolean z3 = false;
                    for (int i3 = 0; i3 < strS0.length(); i3++) {
                        char cCharAt2 = strS0.charAt(i3);
                        if (z3) {
                            sb.append(cCharAt2);
                            z3 = false;
                        } else if (cCharAt2 == '\\') {
                            z3 = true;
                        } else {
                            sb.append(cCharAt2);
                        }
                    }
                    if (z3) {
                        sb.append('\\');
                    }
                    return sb.toString();
                }
            }
            i = iIntValue + 1;
        }
    }

    public static final void b(OkHttpClient.Builder builder, String str, String str2) {
        str.getClass();
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        ot9 ot9Var = new ot9();
        ot9Var.a = str;
        ot9Var.b = str2;
        jl2 jl2Var = new jl2(ot9Var);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("digest".toLowerCase(Locale.getDefault()), jl2Var);
        linkedHashMap.put("basic".toLowerCase(Locale.getDefault()), new lq8(str, str2));
        builder.h = new lz0(new dn2(linkedHashMap), concurrentHashMap);
        ch8 ch8Var = new ch8();
        ArrayList arrayList = builder.c;
        arrayList.add(ch8Var);
        arrayList.add(new r36(str, str2));
        arrayList.add(new g80(concurrentHashMap));
    }
}
