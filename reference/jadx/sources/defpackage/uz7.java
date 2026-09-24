package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uz7 {
    public vc9 a;
    public vc9 b;
    public vc9 c;
    public la d;
    public int e;

    public final void a() {
        String string;
        vc9 vc9Var = this.c;
        vc9 vc9Var2 = this.a;
        while (true) {
            int i = this.e;
            int i2 = vc9Var2.b;
            if (i >= i2) {
                return;
            }
            char[] cArr = (char[]) vc9Var2.c;
            int i3 = i + 1;
            this.e = i3;
            char c = cArr[i];
            if (c == '$' && i3 < i2) {
                this.e = i + 2;
                if (cArr[i3] == '{') {
                    vc9 vc9Var3 = this.b;
                    while (true) {
                        int i4 = this.e;
                        if (i4 >= vc9Var2.b) {
                            break;
                        }
                        char[] cArr2 = (char[]) vc9Var2.c;
                        this.e = i4 + 1;
                        char c2 = cArr2[i4];
                        if (c2 == '}') {
                            if (vc9Var3.b > 0) {
                                String string2 = vc9Var3.toString();
                                la laVar = this.d;
                                Object obj = ((i87) ((ai5) laVar.a).e).a.get(string2);
                                if (obj != null) {
                                    string = obj.toString();
                                } else {
                                    ((fk8) ((x44) laVar.b).k).getClass();
                                    string = null;
                                }
                                if (string == null) {
                                    vc9Var.b("${");
                                    vc9Var.b(string2);
                                    vc9Var.b("}");
                                } else {
                                    vc9Var.b(string);
                                }
                            }
                            vc9Var3.b = 0;
                            break;
                        }
                        vc9Var3.e(vc9Var3.b + 1);
                        char[] cArr3 = (char[]) vc9Var3.c;
                        int i5 = vc9Var3.b;
                        vc9Var3.b = i5 + 1;
                        cArr3[i5] = c2;
                    }
                    if (vc9Var3.b > 0) {
                        vc9Var.b("${");
                        char[] cArr4 = (char[]) vc9Var3.c;
                        int i6 = vc9Var3.b;
                        vc9Var.e(vc9Var.b + i6);
                        System.arraycopy(cArr4, 0, (char[]) vc9Var.c, vc9Var.b, i6);
                        vc9Var.b += i6;
                    }
                } else {
                    this.e = i3;
                }
            }
            vc9Var.e(vc9Var.b + 1);
            char[] cArr5 = (char[]) vc9Var.c;
            int i7 = vc9Var.b;
            vc9Var.b = i7 + 1;
            cArr5[i7] = c;
        }
    }
}
