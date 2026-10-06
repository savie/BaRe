package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m80 extends d80 {
    public static final Parcelable.Creator<m80> CREATOR = new yj0(11);
    public final wk9 a;
    public final wk9 b;
    public final wk9 c;
    public final wk9 d;
    public final wk9 e;

    public m80(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        ly8.h(bArr);
        wk9 wk9VarL = wk9.l(bArr, bArr.length);
        ly8.h(bArr2);
        wk9 wk9VarL2 = wk9.l(bArr2, bArr2.length);
        ly8.h(bArr3);
        wk9 wk9VarL3 = wk9.l(bArr3, bArr3.length);
        ly8.h(bArr4);
        wk9 wk9VarL4 = wk9.l(bArr4, bArr4.length);
        wk9 wk9VarL5 = bArr5 == null ? null : wk9.l(bArr5, bArr5.length);
        this.a = wk9VarL;
        this.b = wk9VarL2;
        this.c = wk9VarL3;
        this.d = wk9VarL4;
        this.e = wk9VarL5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof m80)) {
            return false;
        }
        m80 m80Var = (m80) obj;
        return x13.m(this.a, m80Var.a) && x13.m(this.b, m80Var.b) && x13.m(this.c, m80Var.c) && x13.m(this.d, m80Var.d) && x13.m(this.e, m80Var.e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(Arrays.hashCode(new Object[]{this.a})), Integer.valueOf(Arrays.hashCode(new Object[]{this.b})), Integer.valueOf(Arrays.hashCode(new Object[]{this.c})), Integer.valueOf(Arrays.hashCode(new Object[]{this.d})), Integer.valueOf(Arrays.hashCode(new Object[]{this.e}))});
    }

    public final String toString() {
        u00 u00Var = new u00(getClass().getSimpleName());
        sj9 sj9Var = bk9.d;
        byte[] bArrO = this.a.o();
        u00Var.l(sj9Var.c(bArrO, bArrO.length), "keyHandle");
        byte[] bArrO2 = this.b.o();
        u00Var.l(sj9Var.c(bArrO2, bArrO2.length), "clientDataJSON");
        byte[] bArrO3 = this.c.o();
        u00Var.l(sj9Var.c(bArrO3, bArrO3.length), "authenticatorData");
        byte[] bArrO4 = this.d.o();
        u00Var.l(sj9Var.c(bArrO4, bArrO4.length), "signature");
        wk9 wk9Var = this.e;
        byte[] bArrO5 = wk9Var == null ? null : wk9Var.o();
        if (bArrO5 != null) {
            u00Var.l(sj9Var.c(bArrO5, bArrO5.length), "userHandle");
        }
        return u00Var.toString();
    }

    public final JSONObject u() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("clientDataJSON", cy0.t(this.b.o()));
            jSONObject.put("authenticatorData", cy0.t(this.c.o()));
            jSONObject.put("signature", cy0.t(this.d.o()));
            wk9 wk9Var = this.e;
            if (wk9Var == null) {
                return jSONObject;
            }
            jSONObject.put("userHandle", cy0.t(wk9Var == null ? null : wk9Var.o()));
            return jSONObject;
        } catch (JSONException e) {
            e6.i("Error encoding AuthenticatorAssertionResponse to JSON object", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.o0(parcel, 2, this.a.o());
        yc9.o0(parcel, 3, this.b.o());
        yc9.o0(parcel, 4, this.c.o());
        yc9.o0(parcel, 5, this.d.o());
        wk9 wk9Var = this.e;
        yc9.o0(parcel, 6, wk9Var == null ? null : wk9Var.o());
        yc9.G0(parcel, iF0);
    }
}
