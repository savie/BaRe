package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wp9 {
    public yp9 a;
    public xp9 b;
    public aq9 c;
    public bd9 d;
    public zp9 e;
    public d2a f;

    public final cq9 a() throws GeneralSecurityException {
        yp9 yp9Var = this.a;
        if (yp9Var == null) {
            m0.h("Elliptic curve type is not set");
            return null;
        }
        if (this.b == null) {
            m0.h("Hash type is not set");
            return null;
        }
        if (this.d == null) {
            m0.h("DEM parameters are not set");
            return null;
        }
        if (this.e == null) {
            m0.h("Variant is not set");
            return null;
        }
        yp9 yp9Var2 = yp9.e;
        if (yp9Var != yp9Var2 && this.c == null) {
            m0.h("Point format is not set");
            return null;
        }
        if (yp9Var != yp9Var2 || this.c == null) {
            return new cq9(this.a, this.b, this.c, this.d, this.e, this.f);
        }
        m0.h("For Curve25519 point format must not be set");
        return null;
    }

    public final void b(bd9 bd9Var) throws GeneralSecurityException {
        if (!cq9.g.contains(bd9Var)) {
            throw new GeneralSecurityException(eq3.k("Invalid DEM parameters ", String.valueOf(bd9Var), "; only AES128_GCM_RAW, AES256_GCM_RAW, AES128_CTR_HMAC_SHA256_RAW, AES256_CTR_HMAC_SHA256_RAW XCHACHA20_POLY1305_RAW and AES256_SIV_RAW are currently supported."));
        }
        this.d = bd9Var;
    }
}
