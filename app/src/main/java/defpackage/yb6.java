package defpackage;

import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yb6 extends yq5 {
    protected RandomAccessFile g;
    protected ox0 h;
    protected byte[] i;
    protected Long j;
    protected v64.c k;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class a<B extends a<B, A>, A extends yb6> extends yq5.a<B, A> {
        public B H(ox0 ox0Var) {
            ki8.i(ox0Var, "buffer");
            return (B) Q(null, ox0Var, null, null);
        }

        public B I(byte[] bArr, int i) {
            ki8.i(bArr, "data");
            if (i >= 0) {
                return (B) Q(null, null, bArr, Long.valueOf(i));
            }
            c6.f("valid length must be provided");
            return null;
        }

        public B J(RandomAccessFile randomAccessFile, long j) {
            ki8.i(randomAccessFile, "file");
            if (j >= 0) {
                return (B) Q(randomAccessFile, null, null, Long.valueOf(j));
            }
            c6.f("valid length must be provided");
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B K(v64.c cVar) {
            this.a.add(new v02(cVar, 4));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B Q(RandomAccessFile randomAccessFile, ox0 ox0Var, byte[] bArr, Long l) {
            this.a.add(new sh2(randomAccessFile, 4));
            this.a.add(new y00(ox0Var, 5));
            this.a.add(new kl0(bArr, 4));
            this.a.add(new a10(l, 6));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public void u(A a) {
            super.u(a);
            RandomAccessFile randomAccessFile = a.g;
            boolean z = randomAccessFile != null;
            ox0 ox0Var = a.h;
            boolean z2 = z != (ox0Var != null);
            byte[] bArr = a.i;
            if (z2 == (bArr != null) || !(randomAccessFile == null || ox0Var == null || bArr == null)) {
                c6.f("only one of file, buffer or data must be provided");
            }
        }
    }

    public yb6(bg8 bg8Var, byte[] bArr, int i, v64.c cVar) {
        super(bg8Var);
        this.i = bArr;
        this.j = Long.valueOf(i);
        this.k = cVar;
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yb6) || !super.equals(obj)) {
            return false;
        }
        yb6 yb6Var = (yb6) obj;
        return Objects.equals(this.g, yb6Var.g) && Objects.equals(this.h, yb6Var.h) && Arrays.equals(this.i, yb6Var.i) && Objects.equals(this.j, yb6Var.j) && Objects.equals(this.k, yb6Var.k);
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.g, this.h, this.i, this.j, this.k);
    }

    public ox0 i() {
        return this.h;
    }

    public byte[] j() {
        return this.i;
    }

    public RandomAccessFile k() {
        return this.g;
    }

    public v64.c l() {
        return this.k;
    }

    public Long m() {
        return this.j;
    }

    private yb6(dc6 dc6Var, v64.c cVar) {
        super(dc6Var);
        this.k = cVar;
    }

    public yb6(dc6 dc6Var, ox0 ox0Var, v64.c cVar) {
        this(dc6Var, cVar);
        this.h = ox0Var;
    }

    public yb6(dc6 dc6Var, RandomAccessFile randomAccessFile, long j, v64.c cVar) {
        this(dc6Var, cVar);
        this.g = randomAccessFile;
        this.j = Long.valueOf(j);
    }

    public yb6(dc6 dc6Var, byte[] bArr, int i, v64.c cVar) {
        this(dc6Var, cVar);
        this.i = bArr;
        this.j = Long.valueOf(i);
    }

    private yb6(d10 d10Var, v64.c cVar) {
        super(d10Var);
        this.k = cVar;
    }

    public yb6(d10 d10Var, ox0 ox0Var, v64.c cVar) {
        this(d10Var, cVar);
        this.h = ox0Var;
    }

    public yb6(d10 d10Var, RandomAccessFile randomAccessFile, long j, v64.c cVar) {
        this(d10Var, cVar);
        this.g = randomAccessFile;
        this.j = Long.valueOf(j);
    }

    public yb6(d10 d10Var, byte[] bArr, int i, v64.c cVar) {
        this(d10Var, cVar);
        this.i = bArr;
        this.j = Long.valueOf(i);
    }

    public yb6() {
    }

    public yb6(bg8 bg8Var, RandomAccessFile randomAccessFile, long j, v64.c cVar) {
        super(bg8Var);
        this.g = randomAccessFile;
        this.j = Long.valueOf(j);
        this.k = cVar;
    }
}
