package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fe8 implements ch5 {
    public static final fe8 b = new fe8(0);
    public final /* synthetic */ int a;

    public /* synthetic */ fe8(int i) {
        this.a = i;
    }

    @Override // defpackage.ch5
    public final boolean a(Object obj) {
        switch (this.a) {
            case 0:
                return true;
            case 1:
                ((sx3) obj).getClass();
                return true;
            case 2:
                ((oy3) obj).getClass();
                return true;
            default:
                return false;
        }
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        switch (this.a) {
            case 0:
                return new bh5(new nr5(obj), new vx3(obj, 2));
            case 1:
                sx3 sx3Var = (sx3) obj;
                sx3Var.getClass();
                ou5Var.getClass();
                return new bh5(new nr5(sx3Var.a()), new vx3(sx3Var, 0));
            case 2:
                oy3 oy3Var = (oy3) obj;
                oy3Var.getClass();
                ou5Var.getClass();
                return new bh5(new nr5(Boolean.valueOf(oy3Var.a.a.v().length() > 0)), new vx3(oy3Var, 1));
            default:
                return null;
        }
    }
}
