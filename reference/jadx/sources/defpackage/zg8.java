package defpackage;

import android.content.Context;
import android.hardware.usb.UsbManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zg8 {
    public static final l15 d;
    public final Context a;
    public final UsbManager b;
    public yg8 c = null;

    static {
        as1.c(rg8.class, new bi7(11, 0));
        as1.c(pg8.class, new yu5(3, 1));
        as1.c(og8.class, new e63(3, 0));
        d = o15.b(zg8.class);
    }

    public zg8(Context context) {
        this.a = context;
        this.b = (UsbManager) context.getSystemService("usb");
    }

    public final synchronized void a() {
        yg8 yg8Var = this.c;
        if (yg8Var != null) {
            ng8.f(this.a, yg8Var);
            this.c = null;
        }
    }

    public final synchronized void b(kg8 kg8Var, vz0 vz0Var) {
        a();
        yg8 yg8Var = new yg8(this, kg8Var, vz0Var);
        this.c = yg8Var;
        ng8.d(this.a, yg8Var);
    }
}
