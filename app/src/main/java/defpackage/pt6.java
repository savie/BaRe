package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pt6 extends rt6 {
    public int e;
    public us6 f;
    public UUID g;
    public EnumSet h;
    public int i;
    public int j;
    public int k;
    public ga3 l;
    public List m;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList] */
    @Override // defpackage.rt6
    public final void f(zu6 zu6Var) throws iw0 {
        int iD;
        int iD2;
        ?? arrayList;
        zu6Var.t(2);
        vw2 vw2Var = zu6Var.b;
        this.e = vw2Var.d(zu6Var);
        int iD3 = vw2Var.d(zu6Var);
        for (us6 us6Var : us6.values()) {
            if (us6Var.a == iD3) {
                this.f = us6Var;
                us6 us6Var2 = us6.SMB_3_1_1;
                if (us6Var == us6Var2) {
                    iD = vw2Var.d(zu6Var);
                } else {
                    zu6Var.t(2);
                    iD = 0;
                }
                this.g = new UUID((((vw2Var.e(zu6Var) << 16) | ((long) vw2Var.d(zu6Var))) << 16) | ((long) vw2Var.d(zu6Var)), vw2.c.a(zu6Var));
                this.h = sz8.i0(vw2Var.e(zu6Var), bt6.class);
                this.i = zu6Var.s();
                this.j = zu6Var.s();
                this.k = zu6Var.s();
                this.l = ms8.H(zu6Var);
                ms8.H(zu6Var);
                int iD4 = vw2Var.d(zu6Var);
                int iD5 = vw2Var.d(zu6Var);
                if (this.f == us6Var2) {
                    iD2 = vw2Var.d(zu6Var);
                } else {
                    zu6Var.t(2);
                    iD2 = 0;
                }
                if (iD5 > 0) {
                    zu6Var.c = iD4;
                    zu6Var.p(iD5);
                }
                if (this.f == us6Var2) {
                    zu6Var.c = iD2;
                    try {
                        arrayList = new ArrayList();
                        for (int i = 0; i < iD; i++) {
                            arrayList.add(mt6.a(zu6Var));
                        }
                    } catch (iw0 e) {
                        throw new IllegalArgumentException("unknown error when parse negotiateContext", e);
                    }
                } else {
                    arrayList = Collections.EMPTY_LIST;
                }
                this.m = arrayList;
                return;
            }
        }
        l0.e(fz5.j(iD3, "Unknown SMB2 Dialect: "));
    }
}
