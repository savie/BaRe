package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nx0 extends tn7 {
    public final /* synthetic */ int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nx0(int i) {
        super(byte[].class);
        this.c = i;
        switch (i) {
            case 1:
                super(0, String.class);
                break;
            default:
                break;
        }
    }

    @Override // defpackage.em4
    public boolean c(c87 c87Var, Object obj) {
        switch (this.c) {
            case 0:
                return ((byte[]) obj).length == 0;
            default:
                return super.c(c87Var, obj);
        }
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        switch (this.c) {
            case 0:
                byte[] bArr = (byte[]) obj;
                fk4Var.j(c87Var.a.b.k, bArr, 0, bArr.length);
                break;
            default:
                fk4Var.u((String) obj);
                break;
        }
    }

    @Override // defpackage.em4
    public void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws ag4 {
        switch (this.c) {
            case 0:
                byte[] bArr = (byte[]) obj;
                nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(bArr, mm4.VALUE_EMBEDDED_OBJECT));
                fk4Var.j(c87Var.a.b.k, bArr, 0, bArr.length);
                rc8Var.f(fk4Var, nw8VarE);
                break;
            default:
                super.f(obj, fk4Var, c87Var, rc8Var);
                break;
        }
    }
}
