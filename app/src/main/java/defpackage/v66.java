package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v66 implements Runnable {
    public final /* synthetic */ int a;
    public final Serializable b;
    public final /* synthetic */ Object c;

    public /* synthetic */ v66(Object obj, Serializable serializable, int i) {
        this.a = i;
        this.c = obj;
        this.b = serializable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        String str = null;
        Serializable serializable = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                b76 b76Var = (b76) obj;
                uv4 uv4Var = b76Var.c;
                u66 u66Var = (u66) serializable;
                if (uv4Var.d(u66Var)) {
                    u66 u66Var2 = u66Var.b;
                    u66 u66Var3 = u66Var.c;
                    if (u66Var2 == null) {
                        uv4Var.a = u66Var3;
                    } else {
                        u66Var2.c = u66Var3;
                        u66Var.b = null;
                    }
                    if (u66Var3 == null) {
                        uv4Var.b = u66Var2;
                    } else {
                        u66Var3.b = u66Var2;
                        u66Var.c = null;
                    }
                }
                b76Var.f(u66Var);
                break;
            default:
                nr8 nr8Var = (nr8) ((c00) obj).c;
                String str2 = (String) serializable;
                if (!nr8Var.c) {
                    nr8Var.e();
                    if (nr8Var.e == null) {
                        if (str2.length() <= 6) {
                            try {
                                int i2 = Integer.parseInt(str2);
                                if (i2 > 0) {
                                    nr8Var.d(i2);
                                }
                            } catch (NumberFormatException unused) {
                                nr8Var.d(1);
                                str = str2;
                            }
                        } else {
                            nr8Var.d(1);
                            str = str2;
                        }
                        if (str != null) {
                            nr8Var.b(str);
                        }
                    } else {
                        nr8Var.b(str2);
                    }
                }
                break;
        }
    }
}
