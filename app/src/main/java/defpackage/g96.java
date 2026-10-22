package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g96 extends od2 {
    public final i96[] i;

    public g96(od2 od2Var, i96[] i96VarArr) {
        this.i = i96VarArr;
    }

    @Override // defpackage.od2
    public final od2 s(Class cls, em4 em4Var) {
        i96[] i96VarArr = this.i;
        int length = i96VarArr.length;
        if (length == 8) {
            return this;
        }
        i96[] i96VarArr2 = (i96[]) Arrays.copyOf(i96VarArr, length + 1);
        i96VarArr2[length] = new i96(cls, em4Var);
        return new g96(this, i96VarArr2);
    }

    @Override // defpackage.od2
    public final em4 x(Class cls) {
        i96[] i96VarArr = this.i;
        i96 i96Var = i96VarArr[0];
        if (i96Var.a == cls) {
            return i96Var.b;
        }
        i96 i96Var2 = i96VarArr[1];
        if (i96Var2.a == cls) {
            return i96Var2.b;
        }
        i96 i96Var3 = i96VarArr[2];
        if (i96Var3.a == cls) {
            return i96Var3.b;
        }
        switch (i96VarArr.length) {
            case 8:
                i96 i96Var4 = i96VarArr[7];
                if (i96Var4.a == cls) {
                    return i96Var4.b;
                }
            case 7:
                i96 i96Var5 = i96VarArr[6];
                if (i96Var5.a == cls) {
                    return i96Var5.b;
                }
            case 6:
                i96 i96Var6 = i96VarArr[5];
                if (i96Var6.a == cls) {
                    return i96Var6.b;
                }
            case 5:
                i96 i96Var7 = i96VarArr[4];
                if (i96Var7.a == cls) {
                    return i96Var7.b;
                }
            case 4:
                i96 i96Var8 = i96VarArr[3];
                if (i96Var8.a == cls) {
                    return i96Var8.b;
                }
                return null;
            default:
                return null;
        }
    }
}
