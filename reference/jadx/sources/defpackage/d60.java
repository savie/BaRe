package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class d60 extends z50 {
    public final String c;

    public d60(mc8 mc8Var, kp0 kp0Var, String str) {
        super(mc8Var, kp0Var);
        this.c = str;
    }

    @Override // defpackage.sc8, defpackage.rc8
    public final String b() {
        return this.c;
    }

    @Override // defpackage.z50, defpackage.rc8
    public tm4 c() {
        return tm4.a;
    }

    @Override // defpackage.z50
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public d60 a(kp0 kp0Var) {
        return this.b == kp0Var ? this : new d60(this.a, kp0Var, this.c);
    }
}
