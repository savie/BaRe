package defpackage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oz5 implements qz5 {
    public final /* synthetic */ tz5 a;
    public final /* synthetic */ wz5 b;

    public oz5(wz5 wz5Var, tz5 tz5Var) {
        this.b = wz5Var;
        this.a = tz5Var;
    }

    @Override // defpackage.qz5
    public final void a(Map map) {
        String str = (String) map.get("s");
        boolean zEquals = str.equals("ok");
        wz5 wz5Var = this.b;
        tz5 tz5Var = this.a;
        if (zEquals) {
            Map map2 = (Map) map.get("d");
            if (map2.containsKey("w")) {
                List list = (List) map2.get("w");
                vz5 vz5Var = tz5Var.b;
                if (list.contains("no_index")) {
                    String str2 = "\".indexOn\": \"" + vz5Var.b.get("i") + '\"';
                    u00 u00Var = wz5Var.y;
                    StringBuilder sbU = dj7.u("Using an unspecified index. Your data will be downloaded and filtered on the client. Consider adding '", str2, "' at ");
                    sbU.append(yc9.M(vz5Var.a));
                    sbU.append(" to your security and Firebase Database rules for better performance");
                    u00Var.j(sbU.toString());
                }
            }
        }
        HashMap map3 = wz5Var.p;
        vz5 vz5Var2 = tz5Var.b;
        ro roVar = tz5Var.a;
        if (((tz5) map3.get(vz5Var2)) == tz5Var) {
            if (str.equals("ok")) {
                roVar.d(null, null);
            } else {
                wz5Var.f(tz5Var.b);
                roVar.d(str, (String) map.get("d"));
            }
        }
    }
}
