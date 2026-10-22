package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class g45 {
    public final lr6 a = new lr6(256);
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final oe h;

    public g45(int i) {
        int i2;
        if (i != 2) {
            if (i == 3) {
                this.c = 6;
                this.d = 5;
                this.e = 4;
                this.f = 524288;
                this.b = 128;
            } else {
                if (i != 5) {
                    c6.f(xs1.h(i, "The mode ", "is not supported by Crystals Dilithium!"));
                    throw null;
                }
                this.c = 8;
                this.d = 7;
                this.e = 2;
                this.f = 524288;
            }
            this.h = new oe(16);
            this.g = (this.c * 320) + 32;
            i2 = this.f;
            if (i2 == 131072 && i2 != 524288) {
                g84.h("Wrong Dilithium Gamma1!");
                throw null;
            }
            return;
        }
        this.c = 4;
        this.d = 4;
        this.e = 2;
        this.f = 131072;
        this.b = 96;
        this.h = new oe(16);
        this.g = (this.c * 320) + 32;
        i2 = this.f;
        if (i2 == 131072) {
            return;
        }
        g84.h("Wrong Dilithium Gamma1!");
        throw null;
    }
}
