package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o58 {
    public static final char[] r;
    public static final int[] s = {8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 157, 382, 376};
    public final e51 a;
    public final zw5 b;
    public qb6 d;
    public c58 i;
    public final b58 j;
    public final a58 k;
    public final w48 l;
    public final y48 m;
    public final x48 n;
    public String o;
    public final int[] p;
    public final int[] q;
    public e88 c = e88.a;
    public boolean e = false;
    public String f = null;
    public final StringBuilder g = new StringBuilder(1024);
    public final StringBuilder h = new StringBuilder(1024);

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        r = cArr;
        Arrays.sort(cArr);
    }

    public o58(e51 e51Var, zw5 zw5Var) {
        b58 b58Var = new b58(2);
        b58Var.k = new b80();
        this.j = b58Var;
        this.k = new a58(3);
        this.l = new w48(5);
        this.m = new y48();
        this.n = new x48();
        this.p = new int[1];
        this.q = new int[2];
        this.a = e51Var;
        this.b = zw5Var;
    }

    public final void a(e88 e88Var) {
        this.a.a();
        this.c = e88Var;
    }

    public final void b(String str) {
        zw5 zw5Var = this.b;
        if (zw5Var.size() < 0) {
            e51 e51Var = this.a;
            zw5Var.add(new e74(e51Var.f + e51Var.e, "Invalid character reference: %s", new Object[]{str}));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
    
        if (java.util.Arrays.binarySearch(defpackage.o58.r, r4[r1.e]) >= 0) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] c(java.lang.Character r18, boolean r19) {
        /*
            Method dump skipped, instruction units count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o58.c(java.lang.Character, boolean):int[]");
    }

    public final c58 d(boolean z) {
        c58 c58Var;
        if (z) {
            c58Var = this.j;
            c58Var.f();
        } else {
            c58Var = this.k;
            c58Var.f();
        }
        this.i = c58Var;
        return c58Var;
    }

    public final void e() {
        qb6.g(this.h);
    }

    public final void f(char c) {
        h(String.valueOf(c));
    }

    public final void g(qb6 qb6Var) {
        if (this.e) {
            c6.f("There is an unread token pending!");
            return;
        }
        this.d = qb6Var;
        this.e = true;
        int i = qb6Var.a;
        if (i == 2) {
            this.o = ((b58) qb6Var).c;
            return;
        }
        if (i != 3 || ((a58) qb6Var).k == null) {
            return;
        }
        zw5 zw5Var = this.b;
        if (zw5Var.size() < 0) {
            e51 e51Var = this.a;
            int i2 = e51Var.f + e51Var.e;
            e74 e74Var = new e74();
            e74Var.b = i2;
            e74Var.c = "Attributes incorrectly present on end tag";
            zw5Var.add(e74Var);
        }
    }

    public final void h(String str) {
        if (this.f == null) {
            this.f = str;
            return;
        }
        StringBuilder sb = this.g;
        if (sb.length() == 0) {
            sb.append(this.f);
        }
        sb.append(str);
    }

    public final void i() {
        g(this.n);
    }

    public final void j() {
        g(this.m);
    }

    public final void k() {
        c58 c58Var = this.i;
        if (c58Var.e != null) {
            c58Var.o();
        }
        g(this.i);
    }

    public final void l(e88 e88Var) {
        zw5 zw5Var = this.b;
        if (zw5Var.size() < 0) {
            e51 e51Var = this.a;
            zw5Var.add(new e74(e51Var.f + e51Var.e, "Unexpectedly reached end of file (EOF) in input state [%s]", new Object[]{e88Var}));
        }
    }

    public final void m(e88 e88Var) {
        zw5 zw5Var = this.b;
        if (zw5Var.size() < 0) {
            e51 e51Var = this.a;
            zw5Var.add(new e74(e51Var.f + e51Var.e, "Unexpected character '%s' in input state [%s]", new Object[]{Character.valueOf(e51Var.i()), e88Var}));
        }
    }

    public final boolean n() {
        return this.o != null && this.i.n().equalsIgnoreCase(this.o);
    }
}
