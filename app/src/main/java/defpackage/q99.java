package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q99 {
    public static final u50 a = new u50("GetTokenResultFactory", new String[0]);

    public static dx3 a(String str) {
        Map map;
        try {
            map = r99.c(str);
        } catch (e2a e) {
            a.b(e, "Error parsing token claims", new Object[0]);
            map = new HashMap();
        }
        dx3 dx3Var = new dx3();
        dx3Var.a = str;
        dx3Var.b = map;
        return dx3Var;
    }
}
