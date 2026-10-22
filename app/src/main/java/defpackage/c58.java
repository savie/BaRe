package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c58 extends qb6 {
    public String c;
    public String d;
    public String e;
    public final StringBuilder f;
    public String g;
    public boolean h;
    public boolean i;
    public boolean j;
    public b80 k;

    public c58(int i) {
        super(i);
        this.f = new StringBuilder();
        this.h = false;
        this.i = false;
        this.j = false;
    }

    public final void i(char c) {
        String strValueOf = String.valueOf(c);
        String str = this.e;
        if (str != null) {
            strValueOf = str.concat(strValueOf);
        }
        this.e = strValueOf;
    }

    public final void j(char c) {
        this.i = true;
        String str = this.g;
        StringBuilder sb = this.f;
        if (str != null) {
            sb.append(str);
            this.g = null;
        }
        sb.append(c);
    }

    public final void k(String str) {
        this.i = true;
        String str2 = this.g;
        StringBuilder sb = this.f;
        if (str2 != null) {
            sb.append(str2);
            this.g = null;
        }
        if (sb.length() == 0) {
            this.g = str;
        } else {
            sb.append(str);
        }
    }

    public final void l(int[] iArr) {
        this.i = true;
        String str = this.g;
        StringBuilder sb = this.f;
        if (str != null) {
            sb.append(str);
            this.g = null;
        }
        for (int i : iArr) {
            sb.appendCodePoint(i);
        }
    }

    public final void m(String str) {
        String str2 = this.c;
        if (str2 != null) {
            str = str2.concat(str);
        }
        this.c = str;
        this.d = str != null ? str.toLowerCase(Locale.ENGLISH) : "";
    }

    public final String n() {
        String str = this.c;
        if (str != null && str.length() != 0) {
            return this.c;
        }
        c6.f("Must be false");
        return null;
    }

    public final void o() {
        String string;
        if (this.k == null) {
            this.k = new b80();
        }
        String str = this.e;
        StringBuilder sb = this.f;
        if (str != null) {
            String strTrim = str.trim();
            this.e = strTrim;
            if (strTrim.length() > 0) {
                if (this.i) {
                    string = sb.length() > 0 ? sb.toString() : this.g;
                } else {
                    string = this.h ? "" : null;
                }
                b80 b80Var = this.k;
                String str2 = this.e;
                int iC = b80Var.c(str2);
                if (iC != -1) {
                    b80Var.c[iC] = string;
                } else {
                    int i = b80Var.a;
                    int i2 = i + 1;
                    if (i2 < i) {
                        c6.f("Must be true");
                        return;
                    }
                    String[] strArr = b80Var.b;
                    int length = strArr.length;
                    if (length < i2) {
                        int i3 = length >= 4 ? i * 2 : 4;
                        if (i2 <= i3) {
                            i2 = i3;
                        }
                        String[] strArr2 = new String[i2];
                        System.arraycopy(strArr, 0, strArr2, 0, Math.min(strArr.length, i2));
                        b80Var.b = strArr2;
                        String[] strArr3 = b80Var.c;
                        String[] strArr4 = new String[i2];
                        System.arraycopy(strArr3, 0, strArr4, 0, Math.min(strArr3.length, i2));
                        b80Var.c = strArr4;
                    }
                    String[] strArr5 = b80Var.b;
                    int i4 = b80Var.a;
                    strArr5[i4] = str2;
                    b80Var.c[i4] = string;
                    b80Var.a = i4 + 1;
                }
            }
        }
        this.e = null;
        this.h = false;
        this.i = false;
        qb6.g(sb);
        this.g = null;
    }

    @Override // defpackage.qb6
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public c58 f() {
        this.c = null;
        this.d = null;
        this.e = null;
        qb6.g(this.f);
        this.g = null;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = null;
        return this;
    }
}
