package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class c0 {
    public static final b0[] d = new b0[0];
    public b0[] a;
    public int b;
    public boolean c;

    public c0(int i) {
        if (i < 0) {
            c6.f("'initialCapacity' must not be negative");
            throw null;
        }
        this.a = i == 0 ? d : new b0[i];
        this.b = 0;
        this.c = false;
    }

    public final void a(b0 b0Var) {
        if (b0Var == null) {
            f6.n("'element' cannot be null");
            return;
        }
        b0[] b0VarArr = this.a;
        int length = b0VarArr.length;
        int i = this.b + 1;
        if (this.c | (i > length)) {
            b0[] b0VarArr2 = new b0[Math.max(b0VarArr.length, (i >> 1) + i)];
            System.arraycopy(this.a, 0, b0VarArr2, 0, this.b);
            this.a = b0VarArr2;
            this.c = false;
        }
        this.a[this.b] = b0Var;
        this.b = i;
    }

    public final b0 b(int i) {
        if (i < this.b) {
            return this.a[i];
        }
        throw new ArrayIndexOutOfBoundsException(i + " >= " + this.b);
    }

    public final b0[] c() {
        int i = this.b;
        if (i == 0) {
            return d;
        }
        b0[] b0VarArr = this.a;
        if (b0VarArr.length == i) {
            this.c = true;
            return b0VarArr;
        }
        b0[] b0VarArr2 = new b0[i];
        System.arraycopy(b0VarArr, 0, b0VarArr2, 0, i);
        return b0VarArr2;
    }

    public c0() {
        this(10);
    }
}
