package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.fido.common.Transport;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qa6 extends d80 {
    public static final Parcelable.Creator<qa6> CREATOR = new r39(10);
    public final ua6 a;
    public final xa6 b;
    public final byte[] c;
    public final List d;
    public final Double e;
    public final List f;
    public final p80 k;
    public final Integer n;
    public final f58 p;
    public final t70 q;
    public final i80 r;
    public final String t;
    public final ResultReceiver x;

    public qa6(ua6 ua6Var, xa6 xa6Var, byte[] bArr, ArrayList arrayList, Double d, ArrayList arrayList2, p80 p80Var, Integer num, f58 f58Var, String str, i80 i80Var, String str2, ResultReceiver resultReceiver) {
        this.x = resultReceiver;
        if (str2 != null) {
            try {
                qa6 qa6VarU = u(new JSONObject(str2));
                this.a = qa6VarU.a;
                this.b = qa6VarU.b;
                this.c = qa6VarU.c;
                this.d = qa6VarU.d;
                this.e = qa6VarU.e;
                this.f = qa6VarU.f;
                this.k = qa6VarU.k;
                this.n = qa6VarU.n;
                this.p = qa6VarU.p;
                this.q = qa6VarU.q;
                this.r = qa6VarU.r;
                this.t = str2;
                return;
            } catch (JSONException e) {
                throw new IllegalArgumentException(e);
            }
        }
        ly8.h(ua6Var);
        this.a = ua6Var;
        ly8.h(xa6Var);
        this.b = xa6Var;
        ly8.h(bArr);
        this.c = bArr;
        ly8.h(arrayList);
        this.d = arrayList;
        this.e = d;
        this.f = arrayList2;
        this.k = p80Var;
        this.n = num;
        this.p = f58Var;
        if (str != null) {
            try {
                this.q = t70.c(str);
            } catch (s70 e2) {
                throw new IllegalArgumentException(e2);
            }
        } else {
            this.q = null;
        }
        this.r = i80Var;
        this.t = null;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x025e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0268  */
    /* JADX WARN: Code duplicated, block: B:105:0x027a  */
    /* JADX WARN: Code duplicated, block: B:108:0x0284  */
    /* JADX WARN: Code duplicated, block: B:109:0x0296  */
    /* JADX WARN: Code duplicated, block: B:112:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:113:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:116:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:117:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:120:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:121:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:124:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:125:0x0306  */
    /* JADX WARN: Code duplicated, block: B:128:0x0310  */
    /* JADX WARN: Code duplicated, block: B:129:0x0322  */
    /* JADX WARN: Code duplicated, block: B:132:0x032c  */
    /* JADX WARN: Code duplicated, block: B:133:0x0338  */
    /* JADX WARN: Code duplicated, block: B:96:0x0210  */
    /* JADX WARN: Code duplicated, block: B:99:0x021f A[LOOP:3: B:97:0x0219->B:99:0x021f, LOOP_END] */
    public static qa6 u(JSONObject jSONObject) throws JSONException {
        ArrayList arrayList;
        p80 p80Var;
        i80 i80Var;
        t70 t70VarC;
        int i;
        a79 a79Var;
        a79 a79VarN;
        uu9 uu9Var;
        ih8 ih8Var;
        x1a x1aVar;
        y39 y39Var;
        q49 q49Var;
        vw9 vw9Var;
        s59 s59Var;
        d14 d14Var;
        c99 c99Var;
        JSONArray jSONArray;
        ArrayList arrayList2;
        String str;
        ArrayList arrayList3;
        JSONArray jSONArray2;
        String str2;
        a96 z99Var;
        JSONObject jSONObject2 = jSONObject.getJSONObject("rp");
        String str3 = "id";
        ua6 ua6Var = new ua6(jSONObject2.getString("id"), jSONObject2.getString("name"), jSONObject2.has("icon") ? jSONObject2.optString("icon") : null);
        JSONObject jSONObject3 = jSONObject.getJSONObject("user");
        xa6 xa6Var = new xa6(cy0.p(jSONObject3.getString("id")), jSONObject3.getString("name"), jSONObject3.has("icon") ? jSONObject3.optString("icon") : null, jSONObject3.optString("displayName"));
        byte[] bArrP = cy0.p(jSONObject.getString("challenge"));
        ly8.h(bArrP);
        JSONArray jSONArray3 = jSONObject.getJSONArray("pubKeyCredParams");
        ArrayList arrayList4 = new ArrayList();
        for (int i2 = 0; i2 < jSONArray3.length(); i2++) {
            JSONObject jSONObject4 = jSONArray3.getJSONObject(i2);
            try {
                z99Var = new z99(new sa6(jSONObject4.getString("type"), jSONObject4.getInt("alg")));
            } catch (IllegalArgumentException unused) {
                z99Var = f99.a;
            }
            if (z99Var.b()) {
                arrayList4.add(z99Var.a());
            }
        }
        Double dValueOf = jSONObject.has("timeout") ? Double.valueOf(jSONObject.getDouble("timeout") / 1000.0d) : null;
        int i3 = 11;
        if (jSONObject.has("excludeCredentials")) {
            JSONArray jSONArray4 = jSONObject.getJSONArray("excludeCredentials");
            ArrayList arrayList5 = new ArrayList();
            int i4 = 0;
            while (i4 < jSONArray4.length()) {
                JSONObject jSONObject5 = jSONArray4.getJSONObject(i4);
                Parcelable.Creator<ra6> creator = ra6.CREATOR;
                String string = jSONObject5.getString("type");
                byte[] bArrDecode = Base64.decode(jSONObject5.getString(str3), i3);
                if (!jSONObject5.has("transports") || (jSONArray2 = jSONObject5.getJSONArray("transports")) == null) {
                    str = str3;
                    arrayList3 = null;
                } else {
                    HashSet hashSet = new HashSet(jSONArray2.length());
                    int i5 = 0;
                    while (i5 < jSONArray2.length()) {
                        String string2 = jSONArray2.getString(i5);
                        if (string2 == null || string2.isEmpty()) {
                            str2 = str3;
                        } else {
                            str2 = str3;
                            try {
                                hashSet.add(Transport.c(string2));
                            } catch (sa8 unused2) {
                                Log.w("Transport", "Ignoring unrecognized transport ".concat(string2));
                            }
                        }
                        i5++;
                        str3 = str2;
                    }
                    str = str3;
                    arrayList3 = new ArrayList(hashSet);
                }
                arrayList5.add(new ra6(string, bArrDecode, arrayList3));
                i4++;
                jSONArray4 = jSONArray4;
                str3 = str;
                i3 = 11;
            }
            arrayList = arrayList5;
        } else {
            arrayList = null;
        }
        if (jSONObject.has("authenticatorSelection")) {
            JSONObject jSONObject6 = jSONObject.getJSONObject("authenticatorSelection");
            p80Var = new p80(jSONObject6.has("authenticatorAttachment") ? jSONObject6.optString("authenticatorAttachment") : null, jSONObject6.has("requireResidentKey") ? Boolean.valueOf(jSONObject6.optBoolean("requireResidentKey")) : null, jSONObject6.has("userVerification") ? jSONObject6.optString("userVerification") : null, jSONObject6.has("residentKey") ? jSONObject6.optString("residentKey") : null);
        } else {
            p80Var = null;
        }
        if (jSONObject.has("extensions")) {
            JSONObject jSONObject7 = jSONObject.getJSONObject("extensions");
            d63 d63Var = jSONObject7.has("fidoAppIdExtension") ? new d63(jSONObject7.getJSONObject("fidoAppIdExtension").getString("appid")) : null;
            if (jSONObject7.has("appid")) {
                d63Var = new d63(jSONObject7.getString("appid"));
            }
            d63 d63Var2 = d63Var;
            if (!jSONObject7.has("prf")) {
                i = 0;
                if (jSONObject7.has("prfAlreadyHashed")) {
                    a79VarN = a79.n(jSONObject7.getJSONObject("prfAlreadyHashed"), true);
                } else {
                    a79Var = null;
                }
                if (jSONObject7.has("cableAuthenticationExtension")) {
                    jSONArray = jSONObject7.getJSONArray("cableAuthenticationExtension");
                    arrayList2 = new ArrayList();
                    while (i < jSONArray.length()) {
                        JSONObject jSONObject8 = jSONArray.getJSONObject(i);
                        arrayList2.add(new st9(jSONObject8.getLong("version"), Base64.decode(jSONObject8.getString("clientEid"), 11), Base64.decode(jSONObject8.getString("authenticatorEid"), 11), Base64.decode(jSONObject8.getString("sessionPreKey"), 11)));
                        i++;
                    }
                    uu9Var = new uu9(arrayList2);
                } else {
                    uu9Var = null;
                }
                if (jSONObject7.has("userVerificationMethodExtension")) {
                    ih8Var = new ih8(jSONObject7.getJSONObject("userVerificationMethodExtension").getBoolean("uvm"));
                } else {
                    ih8Var = null;
                }
                if (jSONObject7.has("google_multiAssertionExtension")) {
                    x1aVar = new x1a(jSONObject7.getJSONObject("google_multiAssertionExtension").getBoolean("requestForMultiAssertion"));
                } else {
                    x1aVar = null;
                }
                if (jSONObject7.has("google_sessionIdExtension")) {
                    y39Var = new y39(jSONObject7.getJSONObject("google_sessionIdExtension").getInt("sessionId"));
                } else {
                    y39Var = null;
                }
                if (jSONObject7.has("google_silentVerificationExtension")) {
                    q49Var = new q49(jSONObject7.getJSONObject("google_silentVerificationExtension").getBoolean("silentVerification"));
                } else {
                    q49Var = null;
                }
                if (jSONObject7.has("devicePublicKeyExtension")) {
                    jSONObject7.getJSONObject("devicePublicKeyExtension").getBoolean("devicePublicKey");
                    vw9Var = new vw9();
                } else {
                    vw9Var = null;
                }
                if (jSONObject7.has("google_tunnelServerIdExtension")) {
                    s59Var = new s59(jSONObject7.getJSONObject("google_tunnelServerIdExtension").getString("tunnelServerId"));
                } else {
                    s59Var = null;
                }
                if (jSONObject7.has("google_thirdPartyPaymentExtension")) {
                    d14Var = new d14(jSONObject7.getJSONObject("google_thirdPartyPaymentExtension").getBoolean("thirdPartyPayment"));
                } else {
                    d14Var = null;
                }
                if (jSONObject7.has("txAuthSimple")) {
                    c99Var = new c99(jSONObject7.getString("txAuthSimple"));
                } else {
                    c99Var = null;
                }
                i80Var = new i80(d63Var2, uu9Var, ih8Var, x1aVar, y39Var, q49Var, vw9Var, s59Var, d14Var, a79Var, c99Var, null);
            } else {
                if (jSONObject7.has("prfAlreadyHashed")) {
                    throw new JSONException("both prf and prfAlreadyHashed extensions found");
                }
                i = 0;
                a79VarN = a79.n(jSONObject7.getJSONObject("prf"), false);
            }
            a79Var = a79VarN;
            if (jSONObject7.has("cableAuthenticationExtension")) {
                jSONArray = jSONObject7.getJSONArray("cableAuthenticationExtension");
                arrayList2 = new ArrayList();
                while (i < jSONArray.length()) {
                    JSONObject jSONObject9 = jSONArray.getJSONObject(i);
                    arrayList2.add(new st9(jSONObject9.getLong("version"), Base64.decode(jSONObject9.getString("clientEid"), 11), Base64.decode(jSONObject9.getString("authenticatorEid"), 11), Base64.decode(jSONObject9.getString("sessionPreKey"), 11)));
                    i++;
                }
                uu9Var = new uu9(arrayList2);
            } else {
                uu9Var = null;
            }
            if (jSONObject7.has("userVerificationMethodExtension")) {
                ih8Var = new ih8(jSONObject7.getJSONObject("userVerificationMethodExtension").getBoolean("uvm"));
            } else {
                ih8Var = null;
            }
            if (jSONObject7.has("google_multiAssertionExtension")) {
                x1aVar = new x1a(jSONObject7.getJSONObject("google_multiAssertionExtension").getBoolean("requestForMultiAssertion"));
            } else {
                x1aVar = null;
            }
            if (jSONObject7.has("google_sessionIdExtension")) {
                y39Var = new y39(jSONObject7.getJSONObject("google_sessionIdExtension").getInt("sessionId"));
            } else {
                y39Var = null;
            }
            if (jSONObject7.has("google_silentVerificationExtension")) {
                q49Var = new q49(jSONObject7.getJSONObject("google_silentVerificationExtension").getBoolean("silentVerification"));
            } else {
                q49Var = null;
            }
            if (jSONObject7.has("devicePublicKeyExtension")) {
                jSONObject7.getJSONObject("devicePublicKeyExtension").getBoolean("devicePublicKey");
                vw9Var = new vw9();
            } else {
                vw9Var = null;
            }
            if (jSONObject7.has("google_tunnelServerIdExtension")) {
                s59Var = new s59(jSONObject7.getJSONObject("google_tunnelServerIdExtension").getString("tunnelServerId"));
            } else {
                s59Var = null;
            }
            if (jSONObject7.has("google_thirdPartyPaymentExtension")) {
                d14Var = new d14(jSONObject7.getJSONObject("google_thirdPartyPaymentExtension").getBoolean("thirdPartyPayment"));
            } else {
                d14Var = null;
            }
            if (jSONObject7.has("txAuthSimple")) {
                c99Var = new c99(jSONObject7.getString("txAuthSimple"));
            } else {
                c99Var = null;
            }
            i80Var = new i80(d63Var2, uu9Var, ih8Var, x1aVar, y39Var, q49Var, vw9Var, s59Var, d14Var, a79Var, c99Var, null);
        } else {
            i80Var = null;
        }
        if (jSONObject.has("attestation")) {
            try {
                t70VarC = t70.c(jSONObject.getString("attestation"));
            } catch (s70 e) {
                Log.w("PKCCreationOptions", "Invalid AttestationConveyancePreference", e);
                t70VarC = t70.NONE;
            }
        } else {
            t70VarC = null;
        }
        return new qa6(ua6Var, xa6Var, bArrP, arrayList4, dValueOf, arrayList, p80Var, null, null, t70VarC == null ? null : t70VarC.a, i80Var, null, null);
    }

    public final boolean equals(Object obj) {
        List list;
        if (!(obj instanceof qa6)) {
            return false;
        }
        qa6 qa6Var = (qa6) obj;
        List list2 = qa6Var.d;
        List list3 = qa6Var.f;
        if (x13.m(this.a, qa6Var.a) && x13.m(this.b, qa6Var.b) && Arrays.equals(this.c, qa6Var.c) && x13.m(this.e, qa6Var.e)) {
            List list4 = this.d;
            if (list4.containsAll(list2) && list2.containsAll(list4) && ((((list = this.f) == null && list3 == null) || (list != null && list3 != null && list.containsAll(list3) && list3.containsAll(list))) && x13.m(this.k, qa6Var.k) && x13.m(this.n, qa6Var.n) && x13.m(this.p, qa6Var.p) && x13.m(this.q, qa6Var.q) && x13.m(this.r, qa6Var.r) && x13.m(this.t, qa6Var.t))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, Integer.valueOf(Arrays.hashCode(this.c)), this.d, this.e, this.f, this.k, this.n, this.p, this.q, this.r, this.t});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.a);
        String strValueOf2 = String.valueOf(this.b);
        String strT = cy0.t(this.c);
        String strValueOf3 = String.valueOf(this.d);
        String strValueOf4 = String.valueOf(this.f);
        String strValueOf5 = String.valueOf(this.k);
        String strValueOf6 = String.valueOf(this.p);
        String strValueOf7 = String.valueOf(this.q);
        String strValueOf8 = String.valueOf(this.r);
        StringBuilder sbP = u48.p("PublicKeyCredentialCreationOptions{\n rp=", strValueOf, ", \n user=", strValueOf2, ", \n challenge=");
        xs1.t(sbP, strT, ", \n parameters=", strValueOf3, ", \n timeoutSeconds=");
        sbP.append(this.e);
        sbP.append(", \n excludeList=");
        sbP.append(strValueOf4);
        sbP.append(", \n authenticatorSelection=");
        sbP.append(strValueOf5);
        sbP.append(", \n requestId=");
        sbP.append(this.n);
        sbP.append(", \n tokenBinding=");
        sbP.append(strValueOf6);
        sbP.append(", \n attestationConveyancePreference=");
        return eq3.o(sbP, strValueOf7, ", \n authenticationExtensions=", strValueOf8, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 2, this.a, i);
        yc9.v0(parcel, 3, this.b, i);
        yc9.o0(parcel, 4, this.c);
        yc9.z0(parcel, 5, this.d);
        Double d = this.e;
        if (d != null) {
            yc9.D0(parcel, 6, 8);
            parcel.writeDouble(d.doubleValue());
        }
        yc9.z0(parcel, 7, this.f);
        yc9.v0(parcel, 8, this.k, i);
        yc9.p0(parcel, 9, this.n);
        yc9.v0(parcel, 10, this.p, i);
        t70 t70Var = this.q;
        yc9.w0(parcel, 11, t70Var == null ? null : t70Var.a);
        yc9.v0(parcel, 12, this.r, i);
        yc9.w0(parcel, 13, this.t);
        yc9.v0(parcel, 14, this.x, i);
        yc9.G0(parcel, iF0);
    }

    public qa6() {
        try {
            qa6 qa6VarU = u(new JSONObject((String) null));
            this.a = qa6VarU.a;
            this.b = qa6VarU.b;
            this.c = qa6VarU.c;
            this.d = qa6VarU.d;
            this.e = qa6VarU.e;
            this.f = qa6VarU.f;
            this.k = qa6VarU.k;
            this.n = qa6VarU.n;
            this.p = qa6VarU.p;
            this.q = qa6VarU.q;
            this.r = qa6VarU.r;
            this.t = null;
        } catch (JSONException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
