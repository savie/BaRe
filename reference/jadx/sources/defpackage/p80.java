package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p80 extends i5 {
    public static final Parcelable.Creator<p80> CREATOR = new eq1(14);
    public final r70 a;
    public final Boolean b;
    public final jh8 c;
    public final el6 d;

    public p80(String str, Boolean bool, String str2, String str3) {
        r70 r70VarC;
        el6 el6VarC = null;
        if (str == null) {
            r70VarC = null;
        } else {
            try {
                r70VarC = r70.c(str);
            } catch (dl6 | n99 | q70 e) {
                throw new IllegalArgumentException(e);
            }
        }
        this.a = r70VarC;
        this.b = bool;
        this.c = str2 == null ? null : jh8.c(str2);
        if (str3 != null) {
            el6VarC = el6.c(str3);
        }
        this.d = el6VarC;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof p80)) {
            return false;
        }
        p80 p80Var = (p80) obj;
        return x13.m(this.a, p80Var.a) && x13.m(this.b, p80Var.b) && x13.m(this.c, p80Var.c) && x13.m(n(), p80Var.n());
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, n()});
    }

    public final el6 n() {
        el6 el6Var = this.d;
        if (el6Var == null) {
            el6Var = null;
            Boolean bool = this.b;
            if (bool != null) {
                if (bool.booleanValue()) {
                    return el6.RESIDENT_KEY_REQUIRED;
                }
                return null;
            }
        }
        return el6Var;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.a);
        String strValueOf2 = String.valueOf(this.c);
        String strValueOf3 = String.valueOf(this.d);
        StringBuilder sbU = dj7.u("AuthenticatorSelectionCriteria{\n attachment=", strValueOf, ", \n requireResidentKey=");
        sbU.append(this.b);
        sbU.append(", \n requireUserVerification=");
        sbU.append(strValueOf2);
        sbU.append(", \n residentKeyRequirement=");
        return dj7.n(sbU, strValueOf3, "\n }");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        r70 r70Var = this.a;
        yc9.w0(parcel, 2, r70Var == null ? null : r70Var.a);
        Boolean bool = this.b;
        if (bool != null) {
            yc9.D0(parcel, 3, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        jh8 jh8Var = this.c;
        yc9.w0(parcel, 4, jh8Var == null ? null : jh8Var.a);
        el6 el6VarN = n();
        yc9.w0(parcel, 5, el6VarN != null ? el6VarN.a : null);
        yc9.G0(parcel, iF0);
    }
}
