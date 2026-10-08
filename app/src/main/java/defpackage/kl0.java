package defpackage;

import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kl0 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ kl0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((ll0) obj).b = (v64.c) obj2;
                break;
            case 1:
                StringBuilder sb = (StringBuilder) obj2;
                sb.append('|');
                l43.b((String) obj, sb);
                break;
            case 2:
                mw3.m((mw3) obj, (List) obj2);
                break;
            case 3:
                y96 y96Var = (y96) obj2;
                ((n23) ((z96) obj)).getClass();
                pw5 pw5Var = new pw5("command", y96Var.c);
                int i2 = y96Var.a;
                pw5 pw5Var2 = new pw5("replyCode", String.valueOf(i2));
                String str = y96Var.b;
                str.getClass();
                x65.r0(pw5Var, pw5Var2, new pw5("message", nq7.H0(str).toString()));
                if (400 <= i2 && i2 < 600) {
                    vr6.a aVar = (i2 < 500 || i2 >= 600) ? vr6.a.YELLOW : vr6.a.RED;
                    String string = nq7.H0(str).toString();
                    vr6.INSTANCE.e("FTPService", "PCE.RCV: " + string, aVar);
                    break;
                }
                break;
            default:
                ((yb6) obj).i = (byte[]) obj2;
                break;
        }
    }
}
