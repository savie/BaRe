package defpackage;

import com.nimbusds.jwt.proc.DefaultJWTClaimsVerifier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum w68 extends e88 {
    public w68() {
        super("AttributeValue_unquoted", 39);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        String strH = e51Var.h(e88.J0);
        if (strH.length() > 0) {
            o58Var.i.k(strH);
        }
        char cD = e51Var.d();
        if (cD == 0) {
            o58Var.m(this);
            o58Var.i.j((char) 65533);
            return;
        }
        if (cD != ' ') {
            if (cD != '\"' && cD != '`') {
                z58 z58Var = e88.a;
                if (cD == 65535) {
                    o58Var.l(this);
                    o58Var.c = z58Var;
                    return;
                }
                if (cD != '\t' && cD != '\n' && cD != '\f' && cD != '\r') {
                    if (cD == '&') {
                        int[] iArrC = o58Var.c('>', true);
                        c58 c58Var = o58Var.i;
                        if (iArrC != null) {
                            c58Var.l(iArrC);
                            return;
                        } else {
                            c58Var.j('&');
                            return;
                        }
                    }
                    if (cD != '\'') {
                        switch (cD) {
                            case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                            case '=':
                                break;
                            case '>':
                                o58Var.k();
                                o58Var.c = z58Var;
                                break;
                            default:
                                o58Var.i.j(cD);
                                break;
                        }
                        return;
                    }
                }
            }
            o58Var.m(this);
            o58Var.i.j(cD);
            return;
        }
        o58Var.c = e88.Y;
    }
}
