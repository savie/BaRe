package defpackage;

import com.nimbusds.jwt.proc.DefaultJWTClaimsVerifier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum q68 extends e88 {
    public q68() {
        super("AttributeName", 34);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        String strH = e51Var.h(e88.I0);
        c58 c58Var = o58Var.i;
        String str = c58Var.e;
        if (str != null) {
            strH = str.concat(strH);
        }
        c58Var.e = strH;
        char cD = e51Var.d();
        if (cD == 0) {
            o58Var.m(this);
            o58Var.i.i((char) 65533);
            return;
        }
        if (cD != ' ') {
            if (cD != '\"' && cD != '\'') {
                if (cD == '/') {
                    o58Var.c = e88.g0;
                    return;
                }
                z58 z58Var = e88.a;
                if (cD == 65535) {
                    o58Var.l(this);
                    o58Var.c = z58Var;
                    return;
                }
                if (cD != '\t' && cD != '\n' && cD != '\f' && cD != '\r') {
                    switch (cD) {
                        case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                            break;
                        case '=':
                            o58Var.c = e88.b0;
                            break;
                        case '>':
                            o58Var.k();
                            o58Var.c = z58Var;
                            break;
                        default:
                            o58Var.i.i(cD);
                            break;
                    }
                    return;
                }
            }
            o58Var.m(this);
            o58Var.i.i(cD);
            return;
        }
        o58Var.c = e88.a0;
    }
}
