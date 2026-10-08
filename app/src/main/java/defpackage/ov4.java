package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ov4 {
    public StringBuilder d;
    public String e;
    public String f;
    public char g;
    public StringBuilder h;
    public int a = 1;
    public final StringBuilder b = new StringBuilder();
    public final ArrayList c = new ArrayList();
    public boolean i = false;

    public final void a() {
        if (this.i) {
            String strA = fy2.a(this.f);
            StringBuilder sb = this.h;
            String strA2 = sb != null ? fy2.a(sb.toString()) : null;
            String str = this.e;
            nv4 nv4Var = new nv4();
            nv4Var.f = str;
            nv4Var.g = strA;
            nv4Var.h = strA2;
            this.c.add(nv4Var);
            this.d = null;
            this.i = false;
            this.e = null;
            this.f = null;
            this.h = null;
        }
    }
}
