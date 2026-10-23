package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class gz4 extends tl8 {
    public static final fz4 d = new fz4();
    public final yj7 b = new yj7();
    public boolean c = false;

    @Override // defpackage.tl8
    public final void b() {
        yj7 yj7Var = this.b;
        int i = yj7Var.c;
        for (int i2 = 0; i2 < i; i2++) {
            dz4 dz4Var = (dz4) yj7Var.c(i2);
            y29 y29Var = dz4Var.l;
            y29Var.a();
            y29Var.c = true;
            ez4 ez4Var = dz4Var.n;
            if (ez4Var != null) {
                dz4Var.j(ez4Var);
            }
            dz4 dz4Var2 = y29Var.a;
            if (dz4Var2 == null) {
                l0.e("No listener register");
                return;
            }
            if (dz4Var2 != dz4Var) {
                c6.f("Attempting to unregister the wrong listener");
                return;
            }
            y29Var.a = null;
            if (ez4Var != null) {
                boolean z = ez4Var.b;
            }
            y29Var.d = true;
            y29Var.b = false;
            y29Var.c = false;
            y29Var.e = false;
        }
        int i3 = yj7Var.c;
        Object[] objArr = yj7Var.b;
        for (int i4 = 0; i4 < i3; i4++) {
            objArr[i4] = null;
        }
        yj7Var.c = 0;
    }
}
