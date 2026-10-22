package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yh2 implements Iterator, bo4 {
    public int a = -1;
    public int b;
    public int c;
    public nd4 d;
    public int e;
    public final /* synthetic */ zh2 f;

    public yh2(zh2 zh2Var) {
        this.f = zh2Var;
        int iH = l73.h(0, 0, zh2Var.a.length());
        this.b = iH;
        this.c = iH;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001c  */
    /* JADX WARN: Code duplicated, block: B:12:0x0022 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:18:0x006f  */
    public final void a() {
        pw5 pw5Var;
        zh2 zh2Var = this.f;
        CharSequence charSequence = zh2Var.a;
        int i = this.c;
        if (i < 0) {
            this.a = 0;
            this.d = null;
            return;
        }
        int i2 = zh2Var.b;
        if (i2 > 0) {
            int i3 = this.e + 1;
            this.e = i3;
            if (i3 >= i2) {
                this.d = new nd4(this.b, nq7.d0(charSequence), 1);
                this.c = -1;
            } else if (i > charSequence.length() && (pw5Var = (pw5) zh2Var.c.invoke(charSequence, Integer.valueOf(this.c))) != null) {
                int iIntValue = ((Number) pw5Var.a).intValue();
                int iIntValue2 = ((Number) pw5Var.b).intValue();
                this.d = l73.F(this.b, iIntValue);
                int i4 = iIntValue + iIntValue2;
                this.b = i4;
                this.c = i4 + (iIntValue2 == 0 ? 1 : 0);
            } else {
                this.d = new nd4(this.b, nq7.d0(charSequence), 1);
                this.c = -1;
            }
        } else if (i > charSequence.length()) {
            this.d = new nd4(this.b, nq7.d0(charSequence), 1);
            this.c = -1;
        } else {
            int iIntValue3 = ((Number) pw5Var.a).intValue();
            int iIntValue4 = ((Number) pw5Var.b).intValue();
            this.d = l73.F(this.b, iIntValue3);
            int i5 = iIntValue3 + iIntValue4;
            this.b = i5;
            this.c = i5 + (iIntValue4 == 0 ? 1 : 0);
        }
        this.a = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.a == -1) {
            a();
        }
        return this.a == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.a == -1) {
            a();
        }
        if (this.a == 0) {
            m0.d();
            return null;
        }
        nd4 nd4Var = this.d;
        nd4Var.getClass();
        this.d = null;
        this.a = -1;
        return nd4Var;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
