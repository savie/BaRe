package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class w80 {
    public static final z80 a;
    public static final z80 b;
    public static final z80 c;
    public static final z80 d;
    public static final Map e;

    static {
        z80 z80VarB = z80.b(PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT, "invalid_request");
        a = z80VarB;
        z80 z80VarB2 = z80.b(1001, "unauthorized_client");
        z80 z80VarB3 = z80.b(1002, "access_denied");
        z80 z80VarB4 = z80.b(1003, "unsupported_response_type");
        z80 z80VarB5 = z80.b(1004, "invalid_scope");
        z80 z80VarB6 = z80.b(1005, "server_error");
        z80 z80VarB7 = z80.b(1006, "temporarily_unavailable");
        z80 z80VarB8 = z80.b(1007, null);
        b = z80VarB8;
        z80 z80VarB9 = z80.b(1008, null);
        c = z80VarB9;
        d = z80.a(9, "Response state param did not match request state");
        e = z80.c(new z80[]{z80VarB, z80VarB2, z80VarB3, z80VarB4, z80VarB5, z80VarB6, z80VarB7, z80VarB8, z80VarB9});
    }
}
