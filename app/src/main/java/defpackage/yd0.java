package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yd0 extends b15 {
    public final long a;
    public final Integer b;
    public final pn1 c;
    public final long d;
    public final byte[] e;
    public final String f;
    public final long g;
    public final nm5 h;
    public final l03 i;

    public yd0(long j, Integer num, pn1 pn1Var, long j2, byte[] bArr, String str, long j3, nm5 nm5Var, l03 l03Var) {
        this.a = j;
        this.b = num;
        this.c = pn1Var;
        this.d = j2;
        this.e = bArr;
        this.f = str;
        this.g = j3;
        this.h = nm5Var;
        this.i = l03Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b15) {
            b15 b15Var = (b15) obj;
            yd0 yd0Var = (yd0) b15Var;
            if (this.a == yd0Var.a) {
                Integer num = yd0Var.b;
                Integer num2 = this.b;
                if (num2 != null ? num2.equals(num) : num == null) {
                    pn1 pn1Var = yd0Var.c;
                    pn1 pn1Var2 = this.c;
                    if (pn1Var2 != null ? pn1Var2.equals(pn1Var) : pn1Var == null) {
                        if (this.d == yd0Var.d) {
                            if (Arrays.equals(this.e, b15Var instanceof yd0 ? ((yd0) b15Var).e : yd0Var.e)) {
                                String str = yd0Var.f;
                                String str2 = this.f;
                                if (str2 != null ? str2.equals(str) : str == null) {
                                    if (this.g == yd0Var.g) {
                                        nm5 nm5Var = yd0Var.h;
                                        nm5 nm5Var2 = this.h;
                                        if (nm5Var2 != null ? nm5Var2.equals(nm5Var) : nm5Var == null) {
                                            l03 l03Var = yd0Var.i;
                                            l03 l03Var2 = this.i;
                                            if (l03Var2 != null ? l03Var2.equals(l03Var) : l03Var == null) {
                                                return true;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.b;
        int iHashCode = (i ^ (num == null ? 0 : num.hashCode())) * 1000003;
        pn1 pn1Var = this.c;
        int iHashCode2 = (iHashCode ^ (pn1Var == null ? 0 : pn1Var.hashCode())) * 1000003;
        long j2 = this.d;
        int iHashCode3 = (((iHashCode2 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.e)) * 1000003;
        String str = this.f;
        int iHashCode4 = (iHashCode3 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j3 = this.g;
        int i2 = (iHashCode4 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        nm5 nm5Var = this.h;
        int iHashCode5 = (i2 ^ (nm5Var == null ? 0 : nm5Var.hashCode())) * 1000003;
        l03 l03Var = this.i;
        return iHashCode5 ^ (l03Var != null ? l03Var.hashCode() : 0);
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.a + ", eventCode=" + this.b + ", complianceData=" + this.c + ", eventUptimeMs=" + this.d + ", sourceExtension=" + Arrays.toString(this.e) + ", sourceExtensionJsonProto3=" + this.f + ", timezoneOffsetSeconds=" + this.g + ", networkConnectionInfo=" + this.h + ", experimentIds=" + this.i + "}";
    }
}
