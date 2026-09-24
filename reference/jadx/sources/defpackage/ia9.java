package defpackage;

import android.text.TextUtils;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ia9 implements e59 {
    public static final ia9 c;
    public static final ia9 d;
    public static final ia9 e;
    public final /* synthetic */ int a;
    public String b;

    static {
        int i = 0;
        c = new ia9("ENABLED", i);
        d = new ia9("DISABLED", i);
        e = new ia9("DESTROYED", i);
    }

    public /* synthetic */ ia9(String str, int i) {
        this.a = i;
        this.b = str;
    }

    public byte[] a(int i, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        s1a s1aVar = s1a.c;
        String str = this.b;
        Mac mac = (Mac) s1aVar.a.zza(str);
        if (i > mac.getMacLength() * 255) {
            m0.h("size too large");
            return null;
        }
        byte[] bArr3 = new byte[i];
        mac.init(new SecretKeySpec(bArr, str));
        byte[] bArrDoFinal = new byte[0];
        int i2 = 1;
        int length = 0;
        while (true) {
            mac.update(bArrDoFinal);
            mac.update(bArr2);
            mac.update((byte) i2);
            bArrDoFinal = mac.doFinal();
            if (bArrDoFinal.length + length >= i) {
                System.arraycopy(bArrDoFinal, 0, bArr3, length, i - length);
                return bArr3;
            }
            System.arraycopy(bArrDoFinal, 0, bArr3, length, bArrDoFinal.length);
            length += bArrDoFinal.length;
            i2++;
        }
    }

    public byte[] b(byte[] bArr, byte[] bArr2) throws InvalidKeyException {
        s1a s1aVar = s1a.c;
        String str = this.b;
        Mac mac = (Mac) s1aVar.a.zza(str);
        if (bArr2 == null || bArr2.length == 0) {
            mac.init(new SecretKeySpec(new byte[mac.getMacLength()], str));
        } else {
            mac.init(new SecretKeySpec(bArr2, str));
        }
        return mac.doFinal(bArr);
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return this.b;
            default:
                return super.toString();
        }
    }

    @Override // defpackage.e59
    public String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String str = this.b;
        if (!TextUtils.isEmpty(str)) {
            jSONObject.put("tenantId", str);
        }
        if (!TextUtils.isEmpty("CLIENT_TYPE_ANDROID")) {
            jSONObject.put("clientType", "CLIENT_TYPE_ANDROID");
        }
        if (!TextUtils.isEmpty("RECAPTCHA_ENTERPRISE")) {
            jSONObject.put("recaptchaVersion", "RECAPTCHA_ENTERPRISE");
        }
        return jSONObject.toString();
    }
}
