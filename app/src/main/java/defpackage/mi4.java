package defpackage;

import com.jcraft.jsch.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mi4 implements Logger {
    public static final l15 a = o15.b(mi4.class);

    @Override // com.jcraft.jsch.Logger
    public final boolean isEnabled(int i) {
        l15 l15Var = a;
        if (i == 0) {
            return l15Var.c();
        }
        if (i == 1) {
            return l15Var.j();
        }
        if (i == 2) {
            return l15Var.b();
        }
        if (i == 3) {
            return l15Var.h();
        }
        if (i != 4) {
            return l15Var.l();
        }
        return true;
    }

    @Override // com.jcraft.jsch.Logger
    public final void log(int i, String str) {
        l15 l15Var = a;
        if (i == 0) {
            l15Var.k(str);
            return;
        }
        if (i == 1) {
            l15Var.w(str);
            return;
        }
        if (i == 2) {
            l15Var.x(str);
            return;
        }
        if (i == 3) {
            l15Var.d(str);
        } else if (i != 4) {
            l15Var.z(str);
        } else {
            l15Var.d(str);
        }
    }
}
