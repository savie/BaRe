package defpackage;

import android.util.Base64;
import com.nimbusds.jose.crypto.impl.AESGCM;
import com.nimbusds.jose.crypto.impl.XC20P;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zq0 {
    public String a;
    public int b;
    public String c;
    public byte[] d;
    public int e;
    public long f;
    public float g;
    public double h;

    public final String a() {
        switch (this.b) {
            case 32:
            case 48:
                return this.c;
            case 64:
                return ar0.d(this.d);
            case 80:
                return Base64.encodeToString(this.d, 2);
            case AESGCM.IV_BIT_LENGTH /* 96 */:
                return Integer.toString(this.e);
            case OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS /* 112 */:
                return Integer.toString(this.e, 16);
            case 128:
                return Long.toString(this.f);
            case 144:
                return Long.toString(this.f, 16);
            case 160:
                return Float.toString(this.g);
            case 176:
                return Double.toString(this.h);
            case XC20P.IV_BIT_LENGTH /* 192 */:
                return "true";
            case 208:
                return "false";
            default:
                return null;
        }
    }
}
