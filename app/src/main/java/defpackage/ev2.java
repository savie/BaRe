package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ev2 implements bi2 {
    public final char a;

    public ev2(char c) {
        this.a = c;
    }

    @Override // defpackage.bi2
    public final void a(r08 r08Var, r08 r08Var2, int i) {
        String.valueOf(this.a);
        on5 dv2Var = i == 1 ? new dv2() : new ar7();
        on5 on5Var = r08Var.e;
        while (on5Var != null && on5Var != r08Var2) {
            on5 on5Var2 = on5Var.e;
            dv2Var.b(on5Var);
            on5Var = on5Var2;
        }
        dv2Var.f();
        on5 on5Var3 = r08Var.e;
        dv2Var.e = on5Var3;
        if (on5Var3 != null) {
            on5Var3.d = dv2Var;
        }
        dv2Var.d = r08Var;
        r08Var.e = dv2Var;
        on5 on5Var4 = r08Var.a;
        dv2Var.a = on5Var4;
        if (dv2Var.e == null) {
            on5Var4.c = dv2Var;
        }
    }

    @Override // defpackage.bi2
    public final char b() {
        return this.a;
    }

    @Override // defpackage.bi2
    public final int c() {
        return 1;
    }

    @Override // defpackage.bi2
    public final int d(ai2 ai2Var, ai2 ai2Var2) {
        if (ai2Var.d || ai2Var2.c) {
            int i = ai2Var2.h;
            if (i % 3 != 0 && (ai2Var.h + i) % 3 == 0) {
                return 0;
            }
        }
        return (ai2Var.g < 2 || ai2Var2.g < 2) ? 1 : 2;
    }

    @Override // defpackage.bi2
    public final char e() {
        return this.a;
    }
}
