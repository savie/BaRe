package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fl4 extends qj4 {
    public final iw4 a;

    public fl4() {
        xg xgVar = iw4.p;
        this.a = new iw4(false);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof fl4) && ((fl4) obj).a.equals(this.a);
        }
        return true;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final void p(String str, qj4 qj4Var) {
        if (qj4Var == null) {
            qj4Var = el4.a;
        }
        this.a.put(str, qj4Var);
    }

    public final void s(String str, Boolean bool) {
        p(str, bool == null ? el4.a : new kl4(bool));
    }

    public final void t(String str, Number number) {
        p(str, new kl4(number));
    }

    public final void u(String str, String str2) {
        p(str, str2 == null ? el4.a : new kl4(str2));
    }

    @Override // defpackage.qj4
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final fl4 c() {
        fl4 fl4Var = new fl4();
        for (Map.Entry entry : (ew4) this.a.entrySet()) {
            fl4Var.p((String) entry.getKey(), ((qj4) entry.getValue()).c());
        }
        return fl4Var;
    }

    public final qj4 x(String str) {
        return (qj4) this.a.get(str);
    }
}
