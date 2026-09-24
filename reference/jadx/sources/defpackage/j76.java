package defpackage;

import android.content.Context;
import android.os.Process;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j76 {
    public final Context a;
    public final gv7 b;
    public final int c;
    public final gv7 d;
    public final gv7 e;
    public boolean f;

    public j76(Context context, ni8 ni8Var) {
        context.getClass();
        ni8Var.getClass();
        this.a = context;
        this.b = new gv7(new to5(this, 4));
        this.c = Process.myPid();
        this.d = new gv7(new hs4(ni8Var, 8));
        this.e = new gv7(new us5(this, 3));
    }

    public final String a() {
        return (String) this.b.getValue();
    }

    public final Map b(Map map) {
        gv7 gv7Var = this.d;
        if (map != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            linkedHashMap.put(a(), new i76(Process.myPid(), (String) gv7Var.getValue()));
            return x65.u0(linkedHashMap);
        }
        Map mapSingletonMap = Collections.singletonMap(a(), new i76(Process.myPid(), (String) gv7Var.getValue()));
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }
}
