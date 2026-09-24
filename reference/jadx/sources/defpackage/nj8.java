package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class nj8 extends mj8 {
    public ky5[] a;
    public String b;
    public int c;

    public nj8(nj8 nj8Var) {
        this.a = null;
        this.c = 0;
        this.b = nj8Var.b;
        ky5[] ky5VarArr = nj8Var.a;
        ky5[] ky5VarArr2 = new ky5[ky5VarArr.length];
        for (int i = 0; i < ky5VarArr.length; i++) {
            ky5VarArr2[i] = new ky5(ky5VarArr[i]);
        }
        this.a = ky5VarArr2;
    }

    public ky5[] getPathData() {
        return this.a;
    }

    public String getPathName() {
        return this.b;
    }

    public void setPathData(ky5[] ky5VarArr) {
        ky5[] ky5VarArr2 = this.a;
        if (ky5VarArr2 != null && ky5VarArr != null && ky5VarArr2.length == ky5VarArr.length) {
            int i = 0;
            while (true) {
                if (i >= ky5VarArr2.length) {
                    ky5[] ky5VarArr3 = this.a;
                    for (int i2 = 0; i2 < ky5VarArr.length; i2++) {
                        ky5VarArr3[i2].a = ky5VarArr[i2].a;
                        int i3 = 0;
                        while (true) {
                            float[] fArr = ky5VarArr[i2].b;
                            if (i3 < fArr.length) {
                                ky5VarArr3[i2].b[i3] = fArr[i3];
                                i3++;
                            }
                        }
                    }
                    return;
                }
                ky5 ky5Var = ky5VarArr2[i];
                char c = ky5Var.a;
                ky5 ky5Var2 = ky5VarArr[i];
                if (c != ky5Var2.a || ky5Var.b.length != ky5Var2.b.length) {
                    break;
                } else {
                    i++;
                }
            }
        }
        ky5[] ky5VarArr4 = new ky5[ky5VarArr.length];
        for (int i4 = 0; i4 < ky5VarArr.length; i4++) {
            ky5VarArr4[i4] = new ky5(ky5VarArr[i4]);
        }
        this.a = ky5VarArr4;
    }

    public nj8() {
        this.a = null;
        this.c = 0;
    }
}
