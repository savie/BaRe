package defpackage;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kl4 extends qj4 {
    public final Serializable a;

    public kl4(Boolean bool) {
        Objects.requireNonNull(bool);
        this.a = bool;
    }

    public static boolean u(kl4 kl4Var) {
        Serializable serializable = kl4Var.a;
        if (!(serializable instanceof Number)) {
            return false;
        }
        Number number = (Number) serializable;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // defpackage.qj4
    public final BigDecimal d() {
        Serializable serializable = this.a;
        return serializable instanceof BigDecimal ? (BigDecimal) serializable : zv1.n(o());
    }

    @Override // defpackage.qj4
    public final boolean e() {
        Serializable serializable = this.a;
        return serializable instanceof Boolean ? ((Boolean) serializable).booleanValue() : Boolean.parseBoolean(o());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || kl4.class != obj.getClass()) {
            return false;
        }
        kl4 kl4Var = (kl4) obj;
        Serializable serializable = kl4Var.a;
        Serializable serializable2 = this.a;
        if (serializable2 == null) {
            return serializable == null;
        }
        if (u(this) && u(kl4Var)) {
            if ((serializable2 instanceof BigInteger) || (serializable instanceof BigInteger)) {
                return p().equals(kl4Var.p());
            }
            return t().longValue() == kl4Var.t().longValue();
        }
        if (!(serializable2 instanceof Number) || !(serializable instanceof Number)) {
            return serializable2.equals(serializable);
        }
        if ((serializable2 instanceof BigDecimal) && (serializable instanceof BigDecimal)) {
            return d().compareTo(kl4Var.d()) == 0;
        }
        double dS = s();
        double dS2 = kl4Var.s();
        if (dS != dS2) {
            return Double.isNaN(dS) && Double.isNaN(dS2);
        }
        return true;
    }

    @Override // defpackage.qj4
    public final int f() {
        return this.a instanceof Number ? t().intValue() : Integer.parseInt(o());
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        Serializable serializable = this.a;
        if (serializable == null) {
            return 31;
        }
        if (u(this)) {
            jDoubleToLongBits = t().longValue();
        } else {
            if (!(serializable instanceof Number)) {
                return serializable.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(t().doubleValue());
        }
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    @Override // defpackage.qj4
    public final long l() {
        return this.a instanceof Number ? t().longValue() : Long.parseLong(o());
    }

    @Override // defpackage.qj4
    public final String o() {
        Serializable serializable = this.a;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        if (serializable instanceof Number) {
            return t().toString();
        }
        if (serializable instanceof Boolean) {
            return ((Boolean) serializable).toString();
        }
        throw new AssertionError("Unexpected value type: " + serializable.getClass());
    }

    public final BigInteger p() {
        Serializable serializable = this.a;
        if (serializable instanceof BigInteger) {
            return (BigInteger) serializable;
        }
        if (u(this)) {
            return BigInteger.valueOf(t().longValue());
        }
        String strO = o();
        zv1.b(strO);
        return new BigInteger(strO);
    }

    public final double s() {
        return this.a instanceof Number ? t().doubleValue() : Double.parseDouble(o());
    }

    public final Number t() {
        Serializable serializable = this.a;
        if (serializable instanceof Number) {
            return (Number) serializable;
        }
        if (serializable instanceof String) {
            return new ns4((String) serializable);
        }
        g84.j("Primitive is neither a number nor a string");
        return null;
    }

    public kl4(Number number) {
        Objects.requireNonNull(number);
        this.a = number;
    }

    public kl4(String str) {
        Objects.requireNonNull(str);
        this.a = str;
    }

    @Override // defpackage.qj4
    public final qj4 c() {
        return this;
    }
}
