package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vb5 extends ag8 {
    public final nb5 i;
    public final String j;
    public final ft7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vb5(nb5 nb5Var, rf8 rf8Var) {
        super(rf8Var);
        nb5Var.getClass();
        rf8Var.getClass();
        this.i = nb5Var;
        this.j = "MUploadSession";
        nb5.b.getClass();
        this.k = new ft7(0);
    }

    @Override // defpackage.ag8
    public final void b() {
        vr6 vr6Var = vr6.INSTANCE;
        vr6.w$default(vr6Var, this.j, "User cancelled the upload", null, 4, null);
        tb1 tb1Var = tb1.a;
        vr6.w$default(vr6Var, this.j, eq3.k("Closing connection with ", qb1.f().getDisplayNameEn(), ", may result in unknown errors"), null, 4, null);
        try {
            this.k.a.set(true);
            this.i.getClass();
            gt7 gt7Var = gt7.a;
            ConcurrentHashMap.KeySetView keySetView = ((jb5) gt7.g.getValue()).g;
            keySetView.getClass();
            jb5.b(keySetView);
        } catch (Exception unused) {
        }
    }

    @Override // defpackage.ag8
    public final String d() {
        return this.j;
    }

    @Override // defpackage.ag8
    public final void f() throws Throwable {
        StringBuilder sb = new StringBuilder("/");
        tb1 tb1Var = tb1.a;
        sb.append(qb1.c().i());
        rf8 rf8Var = this.a;
        if (rf8Var.c) {
            sb.append("/");
            sb.append(qb1.e());
        }
        sb.append("/");
        sb.append(rf8Var.b());
        i(sb.toString(), new z95(this));
    }

    public final void i(String str, z95 z95Var) throws Throwable {
        try {
            xx3.B(this.a.a, z95Var, this.k, str);
            this.d.a = str;
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, this.j, "executeUpload:", e, null, 8, null);
            if (e()) {
                return;
            }
            int i = this.f;
            int i2 = this.e;
            boolean z = i < i2;
            ai6 ai6Var = nf1.a;
            boolean zH = x13.H(e);
            if (!z || !zH) {
                a(e, false);
            } else if (h(null)) {
                int i3 = this.f + 1;
                this.f = i3;
                vr6.i$default(vr6Var, this.j, dj7.j("executeUpload: Retrying upload (", i3, "/", ")", i2), null, 4, null);
                i(str, z95Var);
            }
        }
    }
}
