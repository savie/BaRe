package defpackage;

import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wp5 extends h58 implements iv1 {
    public static final wp5 d = new wp5(Number.class);

    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        Class cls = this.a;
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, cls);
        if (bk4VarK == null || bk4VarK.b.ordinal() != 5) {
            return this;
        }
        return cls == BigDecimal.class ? vp5.e : vp5.f;
    }

    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        Number number = (Number) obj;
        if (number instanceof BigDecimal) {
            BigDecimal bigDecimal = (BigDecimal) number;
            pw8 pw8Var = (pw8) fk4Var;
            pw8Var.l0("write a number");
            if (pw8Var.d) {
                pw8Var.B0(pw8Var.k0(bigDecimal));
                return;
            } else {
                pw8Var.O(pw8Var.k0(bigDecimal));
                return;
            }
        }
        if (number instanceof BigInteger) {
            BigInteger bigInteger = (BigInteger) number;
            pw8 pw8Var2 = (pw8) fk4Var;
            pw8Var2.l0("write a number");
            if (pw8Var2.d) {
                pw8Var2.B0(bigInteger.toString());
                return;
            } else {
                pw8Var2.O(bigInteger.toString());
                return;
            }
        }
        if (number instanceof Long) {
            fk4Var.G(number.longValue());
            return;
        }
        if (number instanceof Double) {
            fk4Var.z(number.doubleValue());
            return;
        }
        if (number instanceof Float) {
            fk4Var.A(number.floatValue());
            return;
        }
        if ((number instanceof Integer) || (number instanceof Byte) || (number instanceof Short)) {
            fk4Var.D(number.intValue());
            return;
        }
        String string = number.toString();
        pw8 pw8Var3 = (pw8) fk4Var;
        pw8Var3.l0("write a number");
        if (string == null) {
            pw8Var3.A0();
        } else if (pw8Var3.d) {
            pw8Var3.B0(string);
        } else {
            pw8Var3.O(string);
        }
    }
}
