package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a79 extends i5 {
    public static final Parcelable.Creator<a79> CREATOR = new fm(11);
    public static final byte[] b = "WebAuthn PRF\u0000".getBytes(StandardCharsets.UTF_8);
    public final byte[][] a;

    public a79(byte[][] bArr) {
        ly8.c(bArr != null);
        ly8.c(1 == ((bArr.length & 1) ^ 1));
        int i = 0;
        while (i < bArr.length) {
            ly8.c(i == 0 || bArr[i] != null);
            int i2 = i + 1;
            ly8.c(bArr[i2] != null);
            int length = bArr[i2].length;
            ly8.c(length == 32 || length == 64);
            i += 2;
        }
        this.a = bArr;
    }

    public static a79 n(JSONObject jSONObject, boolean z) throws JSONException {
        ArrayList arrayList = new ArrayList();
        try {
            if (jSONObject.has("eval")) {
                arrayList.add(null);
                if (z) {
                    arrayList.add(v(jSONObject.getJSONObject("eval")));
                } else {
                    arrayList.add(z(jSONObject.getJSONObject("eval")));
                }
            }
            if (jSONObject.has("evalByCredential")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("evalByCredential");
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    arrayList.add(cy0.p(next));
                    if (z) {
                        arrayList.add(v(jSONObject2.getJSONObject(next)));
                    } else {
                        arrayList.add(z(jSONObject2.getJSONObject(next)));
                    }
                }
            }
            return new a79((byte[][]) arrayList.toArray(new byte[0][]));
        } catch (IllegalArgumentException unused) {
            throw new JSONException("invalid base64url value");
        }
    }

    public static JSONObject q(byte[] bArr) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (bArr.length == 32) {
            jSONObject.put("first", Base64.encodeToString(bArr, 11));
            return jSONObject;
        }
        jSONObject.put("first", Base64.encodeToString(bArr, 0, 32, 11));
        jSONObject.put("second", Base64.encodeToString(bArr, 32, 32, 11));
        return jSONObject;
    }

    public static byte[] u(byte[] bArr) {
        b3 b3Var;
        int i = cj9.a;
        lj9 lj9Var = aj9.a;
        int i2 = lj9Var.N;
        MessageDigest messageDigest = lj9Var.M;
        if (lj9Var.O) {
            try {
                b3Var = new b3((MessageDigest) messageDigest.clone(), i2);
            } catch (CloneNotSupportedException unused) {
                try {
                    b3Var = new b3(MessageDigest.getInstance(messageDigest.getAlgorithm()), i2);
                } catch (NoSuchAlgorithmException e) {
                    e6.e(e);
                    return null;
                }
            }
        } else {
            b3Var = new b3(MessageDigest.getInstance(messageDigest.getAlgorithm()), i2);
        }
        MessageDigest messageDigest2 = (MessageDigest) b3Var.c;
        byte[] bArr2 = b;
        bArr2.getClass();
        int length = bArr2.length;
        if (b3Var.b) {
            l0.e("Cannot re-use a Hasher after calling hash() on it");
            return null;
        }
        messageDigest2.update(bArr2, 0, length);
        bArr.getClass();
        int length2 = bArr.length;
        if (b3Var.b) {
            l0.e("Cannot re-use a Hasher after calling hash() on it");
            return null;
        }
        messageDigest2.update(bArr, 0, length2);
        if (b3Var.b) {
            l0.e("Cannot re-use a Hasher after calling hash() on it");
            return null;
        }
        b3Var.b = true;
        int i3 = b3Var.a;
        return (byte[]) (i3 == messageDigest2.getDigestLength() ? new ti9(messageDigest2.digest()) : new ti9(Arrays.copyOf(messageDigest2.digest(), i3))).b.clone();
    }

    public static byte[] v(JSONObject jSONObject) throws JSONException {
        byte[] bArrP = cy0.p(jSONObject.getString("first"));
        if (bArrP.length != 32) {
            throw new JSONException("hashed PRF value with wrong length");
        }
        if (!jSONObject.has("second")) {
            return bArrP;
        }
        byte[] bArrP2 = cy0.p(jSONObject.getString("second"));
        if (bArrP2.length == 32) {
            return rs9.C(bArrP, bArrP2);
        }
        throw new JSONException("hashed PRF value with wrong length");
    }

    public static byte[] z(JSONObject jSONObject) {
        byte[] bArrU = u(cy0.p(jSONObject.getString("first")));
        return !jSONObject.has("second") ? bArrU : rs9.C(bArrU, u(cy0.p(jSONObject.getString("second"))));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof a79) {
            return Arrays.deepEquals(this.a, ((a79) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 0;
        for (byte[] bArr : this.a) {
            if (bArr != null) {
                iHashCode ^= Arrays.hashCode(new Object[]{bArr});
            }
        }
        return iHashCode;
    }

    public final String toString() {
        byte[][] bArr = this.a;
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = null;
            for (int i = 0; i < bArr.length; i += 2) {
                if (bArr[i] == null) {
                    jSONObject.put("eval", q(bArr[i + 1]));
                } else {
                    if (jSONObject2 == null) {
                        jSONObject2 = new JSONObject();
                        jSONObject.put("evalByCredential", jSONObject2);
                    }
                    jSONObject2.put(cy0.t(bArr[i]), q(bArr[i + 1]));
                }
            }
            return "PrfExtension{" + jSONObject.toString() + "}";
        } catch (JSONException e) {
            return eq3.k("PrfExtension{Exception:", e.getMessage(), "}");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        byte[][] bArr = this.a;
        if (bArr != null) {
            int iF1 = yc9.F0(parcel, 1);
            parcel.writeInt(bArr.length);
            for (byte[] bArr2 : bArr) {
                parcel.writeByteArray(bArr2);
            }
            yc9.G0(parcel, iF1);
        }
        yc9.G0(parcel, iF0);
    }
}
