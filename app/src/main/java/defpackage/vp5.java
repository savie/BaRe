package defpackage;

import java.math.BigDecimal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vp5 extends h58 {
    public static final vp5 e = new vp5(0);
    public static final vp5 f = new vp5(1);
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vp5(int i) {
        super(0, BigDecimal.class);
        this.d = i;
        switch (i) {
            case 1:
                super(0, Object.class);
                break;
            default:
                break;
        }
    }

    @Override // defpackage.h58, defpackage.em4
    public boolean c(c87 c87Var, Object obj) {
        switch (this.d) {
            case 0:
                return false;
            default:
                return super.c(c87Var, obj);
        }
    }

    @Override // defpackage.h58, defpackage.em4
    public void e(Object obj, fk4 fk4Var, c87 c87Var) throws yk4 {
        String string;
        switch (this.d) {
            case 0:
                if (fk4Var.h(ek4.WRITE_BIGDECIMAL_AS_PLAIN)) {
                    BigDecimal bigDecimal = (BigDecimal) obj;
                    int iScale = bigDecimal.scale();
                    if (iScale < -9999 || iScale > 9999) {
                        String str = String.format("Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]", Integer.valueOf(bigDecimal.scale()), 9999, 9999);
                        c87Var.getClass();
                        throw new yk4(((uf2) c87Var).G, str, null);
                    }
                    string = bigDecimal.toPlainString();
                } else {
                    string = obj.toString();
                }
                fk4Var.b0(string);
                return;
            default:
                super.e(obj, fk4Var, c87Var);
                return;
        }
    }

    @Override // defpackage.h58
    public final String o(Object obj) {
        switch (this.d) {
            case 0:
                throw new IllegalStateException();
            default:
                return obj.toString();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ vp5(int i, Class cls) {
        super(i, cls);
        this.d = 1;
    }
}
