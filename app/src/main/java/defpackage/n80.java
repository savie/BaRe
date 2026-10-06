package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n80 extends d80 {
    public static final Parcelable.Creator<n80> CREATOR = new eq1(13);
    public final wk9 a;
    public final wk9 b;
    public final wk9 c;
    public final String[] d;

    public n80(byte[] bArr, byte[] bArr2, byte[] bArr3, String[] strArr) {
        ly8.h(bArr);
        wk9 wk9VarL = wk9.l(bArr, bArr.length);
        ly8.h(bArr2);
        wk9 wk9VarL2 = wk9.l(bArr2, bArr2.length);
        ly8.h(bArr3);
        wk9 wk9VarL3 = wk9.l(bArr3, bArr3.length);
        this.a = wk9VarL;
        this.b = wk9VarL2;
        this.c = wk9VarL3;
        ly8.h(strArr);
        this.d = strArr;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof n80)) {
            return false;
        }
        n80 n80Var = (n80) obj;
        return x13.m(this.a, n80Var.a) && x13.m(this.b, n80Var.b) && x13.m(this.c, n80Var.c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(Arrays.hashCode(new Object[]{this.a})), Integer.valueOf(Arrays.hashCode(new Object[]{this.b})), Integer.valueOf(Arrays.hashCode(new Object[]{this.c}))});
    }

    public final String toString() {
        u00 u00Var = new u00(getClass().getSimpleName());
        sj9 sj9Var = bk9.d;
        byte[] bArrO = this.a.o();
        u00Var.l(sj9Var.c(bArrO, bArrO.length), "keyHandle");
        byte[] bArrO2 = this.b.o();
        u00Var.l(sj9Var.c(bArrO2, bArrO2.length), "clientDataJSON");
        byte[] bArrO3 = this.c.o();
        u00Var.l(sj9Var.c(bArrO3, bArrO3.length), "attestationObject");
        u00Var.l(Arrays.toString(this.d), "transports");
        return u00Var.toString();
    }

    /* JADX WARN: Code duplicated, block: B:51:0x014b A[Catch: JSONException -> 0x01ae, qm9 -> 0x01b1, TRY_LEAVE, TryCatch #3 {qm9 -> 0x01b1, blocks: (B:49:0x0140, B:51:0x014b, B:56:0x0160, B:59:0x017c, B:61:0x0191, B:63:0x0196, B:68:0x01b4, B:69:0x01b9, B:70:0x01ba, B:71:0x01bf, B:76:0x01ca, B:78:0x01d7, B:80:0x01e4, B:81:0x01f8, B:82:0x01fd, B:83:0x01fe, B:84:0x0203, B:91:0x0229, B:92:0x022e), top: B:143:0x0140 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:85:0x0204  */
    /* JADX WARN: Code duplicated, block: B:90:0x0228  */
    public final JSONObject u() {
        JSONObject jSONObject;
        rm9 rm9Var;
        byte[] bArrC;
        String[] strArr = this.d;
        try {
            JSONObject jSONObject2 = new JSONObject();
            wk9 wk9Var = this.b;
            if (wk9Var != null) {
                jSONObject2.put("clientDataJSON", cy0.t(wk9Var.o()));
            }
            wk9 wk9Var2 = this.c;
            if (wk9Var2 != null) {
                jSONObject2.put("attestationObject", cy0.t(wk9Var2.o()));
            }
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < strArr.length; i++) {
                if (strArr[i].equals("cable")) {
                    jSONArray.put(i, "hybrid");
                } else {
                    jSONArray.put(i, strArr[i]);
                }
            }
            try {
                jSONObject2.put("transports", jSONArray);
                try {
                    try {
                        rm9 rm9Var2 = (rm9) ((km9) rm9.d(wk9Var2.o()).b(km9.class)).b.get(new mm9("authData"));
                        if (rm9Var2 != null) {
                            wk9 wk9Var3 = ((am9) rm9Var2.b(am9.class)).a;
                            byte[] bArr = wk9Var3.b;
                            ByteBuffer byteBufferAsReadOnlyBuffer = ByteBuffer.wrap(bArr, 0, wk9Var3.f()).asReadOnlyBuffer();
                            try {
                                byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + 32);
                                if ((byteBufferAsReadOnlyBuffer.get() & 64) != 0) {
                                    byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + 4);
                                    byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + 16);
                                    byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + byteBufferAsReadOnlyBuffer.getShort());
                                    try {
                                        try {
                                            int iPosition = byteBufferAsReadOnlyBuffer.position();
                                            int iK = wk9.k(iPosition, bArr.length, wk9Var3.f());
                                            vm9 vm9Var = new vm9((iK == 0 ? wk9.c : new uk9(bArr, iPosition, iK)).i());
                                            try {
                                                rm9 rm9VarH = tu0.H(vm9Var);
                                                try {
                                                    vm9Var.close();
                                                } catch (IOException unused) {
                                                }
                                                dc9 dc9Var = ((km9) rm9VarH.b(km9.class)).b;
                                                rm9 rm9Var3 = (rm9) dc9Var.get(new gm9(3L));
                                                rm9 rm9Var4 = (rm9) dc9Var.get(new gm9(1L));
                                                if (rm9Var3 == null || rm9Var4 == null) {
                                                    throw new IllegalArgumentException("COSE key missing required fields");
                                                }
                                                try {
                                                    long j = ((gm9) rm9Var3.b(gm9.class)).a;
                                                    long j2 = ((gm9) rm9Var4.b(gm9.class)).a;
                                                    if (j2 == 1) {
                                                        jSONObject = jSONObject2;
                                                        try {
                                                            rm9Var = (rm9) dc9Var.get(new gm9(-1L));
                                                            if (rm9Var != null) {
                                                                throw new IllegalArgumentException("COSE key missing required fields");
                                                            }
                                                            long j3 = ((gm9) rm9Var.b(gm9.class)).a;
                                                            if (j2 != 2 && j3 == 1) {
                                                                rm9 rm9Var5 = (rm9) dc9Var.get(new gm9(-2L));
                                                                rm9 rm9Var6 = (rm9) dc9Var.get(new gm9(-3L));
                                                                if (rm9Var5 == null || rm9Var6 == null) {
                                                                    throw new IllegalArgumentException("COSE key missing required fields");
                                                                }
                                                                wk9 wk9Var4 = ((am9) rm9Var5.b(am9.class)).a;
                                                                wk9 wk9Var5 = ((am9) rm9Var6.b(am9.class)).a;
                                                                if (wk9Var4.b.length != 32 || wk9Var5.b.length != 32) {
                                                                    throw new IllegalArgumentException("COSE coordinates are the wrong size");
                                                                }
                                                                bArrC = rs9.C(Base64.decode("MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE", 0), wk9Var4.o(), wk9Var5.o());
                                                            } else if (j2 == 1 || j3 != 6) {
                                                                bArrC = null;
                                                            } else {
                                                                rm9 rm9Var7 = (rm9) dc9Var.get(new gm9(-2L));
                                                                if (rm9Var7 == null) {
                                                                    throw new IllegalArgumentException("COSE key missing required fields");
                                                                }
                                                                wk9 wk9Var6 = ((am9) rm9Var7.b(am9.class)).a;
                                                                if (wk9Var6.b.length != 32) {
                                                                    throw new IllegalArgumentException("COSE coordinates are the wrong size");
                                                                }
                                                                bArrC = rs9.C(Base64.decode("MCowBQYDK2VwAyEA", 0), wk9Var6.o());
                                                            }
                                                        } catch (qm9 e) {
                                                            e = e;
                                                            throw new IllegalArgumentException("COSE key ill-formed", e);
                                                        }
                                                    } else if (j2 == 2) {
                                                        j2 = 2;
                                                        jSONObject = jSONObject2;
                                                        rm9Var = (rm9) dc9Var.get(new gm9(-1L));
                                                        if (rm9Var != null) {
                                                            throw new IllegalArgumentException("COSE key missing required fields");
                                                        }
                                                        long j4 = ((gm9) rm9Var.b(gm9.class)).a;
                                                        if (j2 != 2) {
                                                            if (j2 == 1) {
                                                                bArrC = null;
                                                            } else {
                                                                bArrC = null;
                                                            }
                                                        } else if (j2 == 1) {
                                                            bArrC = null;
                                                        } else {
                                                            bArrC = null;
                                                        }
                                                    } else {
                                                        jSONObject = jSONObject2;
                                                        bArrC = null;
                                                    }
                                                    JSONObject jSONObject3 = jSONObject;
                                                    jSONObject3.put("authenticatorData", cy0.t(wk9Var3.o()));
                                                    jSONObject3.put("publicKeyAlgorithm", j);
                                                    if (bArrC != null) {
                                                        jSONObject3.put("publicKey", Base64.encodeToString(bArrC, 11));
                                                    }
                                                    return jSONObject3;
                                                } catch (qm9 e2) {
                                                    e = e2;
                                                }
                                            } catch (Throwable th) {
                                                try {
                                                    try {
                                                        vm9Var.close();
                                                    } catch (IOException unused2) {
                                                    }
                                                    try {
                                                        throw th;
                                                    } catch (dm9 e3) {
                                                        e = e3;
                                                        throw new IllegalArgumentException("failed to parse COSE key", e);
                                                    }
                                                } catch (qm9 e4) {
                                                    e = e4;
                                                    throw new IllegalArgumentException("failed to parse COSE key", e);
                                                }
                                            }
                                        } catch (qm9 e5) {
                                            e = e5;
                                            throw new IllegalArgumentException("failed to parse COSE key", e);
                                        }
                                    } catch (dm9 e6) {
                                        e = e6;
                                        throw new IllegalArgumentException("failed to parse COSE key", e);
                                    }
                                    e6.i("Error encoding AuthenticatorAttestationResponse to JSON object", e);
                                    return null;
                                }
                                try {
                                    throw new IllegalArgumentException("authData does not include credential data");
                                } catch (IllegalArgumentException e7) {
                                    e = e7;
                                }
                            } catch (IllegalArgumentException e8) {
                                e = e8;
                            }
                            throw new IllegalArgumentException("ill-formed authenticator data", e);
                        }
                        try {
                            throw new IllegalArgumentException("attestation object missing authData");
                        } catch (qm9 e9) {
                            e = e9;
                        }
                    } catch (qm9 e10) {
                        e = e10;
                    }
                    throw new IllegalArgumentException("authData value has wrong type", e);
                } catch (dm9 e11) {
                    e = e11;
                    throw new IllegalArgumentException("failed to parse attestation object", e);
                } catch (qm9 e12) {
                    e = e12;
                    throw new IllegalArgumentException("failed to parse attestation object", e);
                }
            } catch (JSONException e13) {
                e = e13;
            }
        } catch (JSONException e14) {
            e = e14;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.o0(parcel, 2, this.a.o());
        yc9.o0(parcel, 3, this.b.o());
        yc9.o0(parcel, 4, this.c.o());
        String[] strArr = this.d;
        if (strArr != null) {
            int iF1 = yc9.F0(parcel, 5);
            parcel.writeStringArray(strArr);
            yc9.G0(parcel, iF1);
        }
        yc9.G0(parcel, iF0);
    }
}
