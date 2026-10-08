package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ly5 implements s03 {
    public final ArrayList a = new ArrayList();
    public String b;
    public String c;
    public final int d;
    public final int e;
    public final /* synthetic */ my5 f;

    public ly5(my5 my5Var, int i, int i2) {
        this.f = my5Var;
        this.d = i;
        this.e = i2;
    }

    @Override // defpackage.s03
    public final boolean Y() {
        return this.e - this.d >= 1;
    }

    @Override // defpackage.s03
    public final String a() {
        my5 my5Var;
        String str;
        if (this.b == null) {
            int i = 0;
            int iIndexOf = 0;
            while (true) {
                int i2 = this.d;
                my5Var = this.f;
                if (i >= i2) {
                    break;
                }
                iIndexOf = my5Var.k.indexOf(47, iIndexOf + 1);
                i++;
            }
            int iIndexOf2 = iIndexOf;
            while (true) {
                str = my5Var.k;
                if (i > this.e) {
                    break;
                }
                iIndexOf2 = str.indexOf(47, iIndexOf2 + 1);
                if (iIndexOf2 == -1) {
                    iIndexOf2 = my5Var.k.length();
                }
                i++;
            }
            this.b = str.substring(iIndexOf + 1, iIndexOf2);
        }
        return this.b;
    }

    @Override // defpackage.s03
    public final String b(String str) {
        String strA = a();
        return strA != null ? this.f.d(strA, str) : str;
    }

    @Override // defpackage.s03
    public final String getAttribute(String str) {
        String strA = a();
        return strA != null ? this.f.c(strA, str) : str;
    }

    @Override // defpackage.s03
    public final String getFirst() {
        return (String) this.f.e.get(this.d);
    }

    @Override // defpackage.s03
    public final int getIndex() {
        return ((Integer) this.f.c.get(this.d)).intValue();
    }

    @Override // defpackage.s03
    public final String getLast() {
        return (String) this.f.e.get(this.e);
    }

    @Override // defpackage.s03
    public final String getPrefix() {
        return (String) this.f.d.get(this.d);
    }

    @Override // defpackage.s03
    public final boolean h() {
        my5 my5Var = this.f;
        if (my5Var.q) {
            return this.e >= my5Var.e.size() - 1;
        }
        return false;
    }

    @Override // defpackage.s03
    public final boolean isEmpty() {
        return this.d == this.e;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        ArrayList arrayList = this.a;
        if (arrayList.isEmpty()) {
            for (int i = this.d; i <= this.e; i++) {
                String str = (String) this.f.e.get(i);
                if (str != null) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList.iterator();
    }

    @Override // defpackage.s03
    public final s03 l0(int i, int i2) {
        return new ly5(this.f, this.d + i, this.e - i2);
    }

    public final String toString() {
        if (this.c == null) {
            my5 my5Var = this.f;
            int i = my5Var.x;
            int i2 = 0;
            int i3 = 0;
            while (i2 <= this.e) {
                if (i >= my5Var.t) {
                    i++;
                    break;
                }
                int i4 = i + 1;
                if (my5Var.r[i] == '/' && (i2 = i2 + 1) == this.d) {
                    i = i4;
                    i3 = i;
                } else {
                    i = i4;
                }
            }
            this.c = new String(my5Var.r, i3, (i - 1) - i3);
        }
        return this.c;
    }

    @Override // defpackage.s03
    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    public final s03 mo74a() {
        return l0(1, 0);
    }
}
