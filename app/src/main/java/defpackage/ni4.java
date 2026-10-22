package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ni4 {
    public static final ni4 d = new ni4();
    public final dj4 a;
    public final ma2 b;
    public final km8 c;

    public ni4() {
        dj4 dj4Var = new dj4();
        ma2 ma2Var = w13.d;
        this.a = dj4Var;
        this.b = ma2Var;
        this.c = new km8();
    }

    public final Object a(do4 do4Var, String str) {
        byte b;
        do4Var.getClass();
        this.a.getClass();
        vr1 vr1Var = new vr1(str);
        Object objJ = new np7(this, ow8.OBJ, vr1Var, do4Var.d()).j(do4Var);
        String str2 = (String) vr1Var.f;
        int i = vr1Var.b;
        while (true) {
            if (i != -1 && i < str2.length()) {
                int i2 = i + 1;
                char cCharAt = str2.charAt(i);
                if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                    vr1Var.b = i2;
                    b = z85.b(cCharAt);
                    break;
                }
                i = i2;
            } else {
                vr1Var.b = str2.length();
                b = 10;
                break;
            }
        }
        if (b == 10) {
            return objJ;
        }
        vr1.k(vr1Var, "Expected EOF after parsing, but had " + str.charAt(vr1Var.b - 1) + " instead", 0, 6);
        throw null;
    }

    public final String b(do4 do4Var, Object obj) {
        char[] cArr;
        do4Var.getClass();
        lm4 lm4Var = new lm4();
        v41 v41Var = v41.c;
        synchronized (v41Var) {
            w40 w40Var = v41Var.a;
            cArr = null;
            char[] cArr2 = (char[]) (w40Var.isEmpty() ? null : w40Var.removeLast());
            if (cArr2 != null) {
                v41Var.b -= cArr2.length;
                cArr = cArr2;
            }
        }
        if (cArr == null) {
            cArr = new char[128];
        }
        lm4Var.a = cArr;
        try {
            ow8 ow8Var = ow8.OBJ;
            op7[] op7VarArr = new op7[ow8.n.d()];
            this.a.getClass();
            new op7(new wo1(lm4Var), this, ow8Var, op7VarArr).i(do4Var, obj);
            return lm4Var.toString();
        } finally {
            lm4Var.b();
        }
    }
}
