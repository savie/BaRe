package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class re6 implements z61 {
    public static final re6 n = new re6(3, 1);
    public static final re6 p = new re6(3, 2);
    public static final re6 q = new re6(3, 3);
    public static final re6 r = new re6(5, 1);
    public static final re6 t = new re6(5, 2);
    public static final re6 x = new re6(5, 3);
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final q15 f;
    public final int k;

    public re6(int i, int i2) {
        if (i == 3) {
            this.a = 68;
            this.b = 32;
            this.c = 48;
            ir6 ir6Var = new ir6();
            zh8.r(ir6Var);
            e42.a();
            ir6Var.reset();
            this.f = ir6Var;
        } else {
            if (i != 5) {
                c6.f("No valid version. Please choose one of the following: 3, 5");
                throw null;
            }
            this.a = 96;
            this.b = 36;
            this.c = 64;
            this.f = new kr6();
        }
        int i3 = this.a;
        int i4 = this.b;
        int i5 = this.c;
        this.d = i3 + i4 + i5;
        this.e = i4 + i5;
        this.k = i2;
    }
}
