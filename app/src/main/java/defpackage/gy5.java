package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gy5 implements Iterable, Comparable {
    public static final gy5 d = new gy5("");
    public final m61[] a;
    public final int b;
    public final int c;

    public gy5(String str) {
        String[] strArrSplit = str.split("/", -1);
        int i = 0;
        for (String str2 : strArrSplit) {
            if (str2.length() > 0) {
                i++;
            }
        }
        this.a = new m61[i];
        int i2 = 0;
        for (String str3 : strArrSplit) {
            if (str3.length() > 0) {
                this.a[i2] = m61.b(str3);
                i2++;
            }
        }
        this.b = 0;
        this.c = this.a.length;
    }

    public static gy5 o(gy5 gy5Var, gy5 gy5Var2) {
        m61 m61VarK = gy5Var.k();
        m61 m61VarK2 = gy5Var2.k();
        if (m61VarK == null) {
            return gy5Var2;
        }
        if (m61VarK.equals(m61VarK2)) {
            return o(gy5Var.p(), gy5Var2.p());
        }
        throw new xc2("INTERNAL ERROR: " + gy5Var2 + " is not contained in " + gy5Var);
    }

    public final ArrayList c() {
        ArrayList arrayList = new ArrayList(size());
        dy5 dy5Var = new dy5(this);
        while (dy5Var.hasNext()) {
            arrayList.add(((m61) dy5Var.next()).a);
        }
        return arrayList;
    }

    public final gy5 d(m61 m61Var) {
        int size = size();
        int i = size + 1;
        m61[] m61VarArr = new m61[i];
        System.arraycopy(this.a, this.b, m61VarArr, 0, size);
        m61VarArr[size] = m61Var;
        return new gy5(m61VarArr, 0, i);
    }

    public final gy5 e(gy5 gy5Var) {
        int size = gy5Var.size() + size();
        m61[] m61VarArr = new m61[size];
        System.arraycopy(this.a, this.b, m61VarArr, 0, size());
        System.arraycopy(gy5Var.a, gy5Var.b, m61VarArr, size(), gy5Var.size());
        return new gy5(m61VarArr, 0, size);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof gy5)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        gy5 gy5Var = (gy5) obj;
        if (size() != gy5Var.size()) {
            return false;
        }
        int i = this.b;
        for (int i2 = gy5Var.b; i < this.c && i2 < gy5Var.c; i2++) {
            if (!this.a[i].equals(gy5Var.a[i2])) {
                return false;
            }
            i++;
        }
        return true;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final int compareTo(gy5 gy5Var) {
        int i;
        int i2 = gy5Var.b;
        int i3 = gy5Var.c;
        int i4 = this.b;
        while (true) {
            i = this.c;
            if (i4 >= i || i2 >= i3) {
                break;
            }
            int iCompareTo = this.a[i4].compareTo(gy5Var.a[i2]);
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            i4++;
            i2++;
        }
        if (i4 == i && i2 == i3) {
            return 0;
        }
        return i4 == i ? -1 : 1;
    }

    public final boolean g(gy5 gy5Var) {
        if (size() > gy5Var.size()) {
            return false;
        }
        int i = gy5Var.b;
        int i2 = this.b;
        while (i2 < this.c) {
            if (!this.a[i2].equals(gy5Var.a[i])) {
                return false;
            }
            i2++;
            i++;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode = 0;
        for (int i = this.b; i < this.c; i++) {
            iHashCode = (iHashCode * 37) + this.a[i].a.hashCode();
        }
        return iHashCode;
    }

    public final m61 i() {
        if (isEmpty()) {
            return null;
        }
        return this.a[this.c - 1];
    }

    public final boolean isEmpty() {
        return this.b >= this.c;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new dy5(this);
    }

    public final m61 k() {
        if (isEmpty()) {
            return null;
        }
        return this.a[this.b];
    }

    public final gy5 l() {
        if (isEmpty()) {
            return null;
        }
        return new gy5(this.a, this.b, this.c - 1);
    }

    public final gy5 p() {
        boolean zIsEmpty = isEmpty();
        int i = this.b;
        if (!zIsEmpty) {
            i++;
        }
        return new gy5(this.a, i, this.c);
    }

    public final int size() {
        return this.c - this.b;
    }

    public final String toString() {
        if (isEmpty()) {
            return "/";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = this.b; i < this.c; i++) {
            sb.append("/");
            sb.append(this.a[i].a);
        }
        return sb.toString();
    }

    public gy5(List list) {
        this.a = new m61[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            this.a[i] = m61.b((String) it.next());
            i++;
        }
        this.b = 0;
        this.c = list.size();
    }

    public gy5(m61... m61VarArr) {
        this.a = (m61[]) Arrays.copyOf(m61VarArr, m61VarArr.length);
        this.b = 0;
        this.c = m61VarArr.length;
        for (m61 m61Var : m61VarArr) {
            zm5.r("Can't construct a path with a null value!", m61Var != null);
        }
    }

    public gy5(m61[] m61VarArr, int i, int i2) {
        this.a = m61VarArr;
        this.b = i;
        this.c = i2;
    }
}
