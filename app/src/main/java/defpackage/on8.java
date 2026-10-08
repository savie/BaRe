package defpackage;

import java.util.function.BiConsumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class on8 implements BiConsumer {
    public final /* synthetic */ StringBuilder a;

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        String str = (String) obj;
        qd0 qd0Var = (qd0) obj2;
        if (str == null || str.isEmpty()) {
            return;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt < ' ' || cCharAt > '~') {
                return;
            }
        }
        String str2 = qd0Var.a;
        StringBuilder sb = this.a;
        sb.append(str);
        sb.append("=");
        sb.append(pn8.e(qd0Var.a));
        String str3 = qd0Var.b.a;
        if (!str3.isEmpty()) {
            sb.append(";");
            sb.append(pn8.e(str3));
        }
        sb.append(",");
    }
}
