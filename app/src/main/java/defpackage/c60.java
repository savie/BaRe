package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c60 extends sc8 {
    public final String c;

    public c60(mc8 mc8Var, kp0 kp0Var, String str) {
        super(mc8Var, kp0Var);
        this.c = str;
    }

    @Override // defpackage.rc8
    public final rc8 a(kp0 kp0Var) {
        return this.b == kp0Var ? this : new c60(this.a, kp0Var, this.c);
    }

    @Override // defpackage.sc8, defpackage.rc8
    public final String b() {
        return this.c;
    }

    @Override // defpackage.rc8
    public final tm4 c() {
        return tm4.d;
    }
}
