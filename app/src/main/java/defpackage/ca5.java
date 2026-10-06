package defpackage;

import com.google.android.play.core.integrity.model.IntegrityErrorCode;
import com.google.android.play.core.integrity.model.StandardIntegrityErrorCode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ca5 extends RuntimeException {
    public final int a;

    /* JADX WARN: Illegal instructions before constructor call */
    public ca5(int i) {
        String str;
        switch (i) {
            case -30:
                str = "API_ESUBUSERKEYMISSING";
                break;
            case -29:
                str = "API_EPAYWALL";
                break;
            case -28:
                str = "API_EBUSINESSPASTDUE";
                break;
            case -27:
                str = "API_EMASTERONLY";
                break;
            case -26:
                str = "API_EMFAREQUIRED";
                break;
            case -25:
                str = "API_EROLLEDBACK";
                break;
            case -24:
                str = "API_EGOINGOVERQUOTA";
                break;
            case -23:
                str = "API_ESSL";
                break;
            case -22:
                str = "API_EAPPKEY";
                break;
            case -21:
                str = "API_EREAD";
                break;
            case -20:
                str = "API_EWRITE";
                break;
            case StandardIntegrityErrorCode.INTEGRITY_TOKEN_PROVIDER_INVALID /* -19 */:
                str = "API_ETOOMANYCONNECTIONS";
                break;
            case StandardIntegrityErrorCode.CLIENT_TRANSIENT_ERROR /* -18 */:
                str = "API_ETEMPUNAVAIL";
                break;
            case -17:
                str = "API_EOVERQUOTA";
                break;
            case -16:
                str = "API_EBLOCKED";
                break;
            case -15:
                str = "API_ESID";
                break;
            case -14:
                str = "API_EKEY";
                break;
            case IntegrityErrorCode.NONCE_IS_NOT_BASE64 /* -13 */:
                str = "API_EINCOMPLETE";
                break;
            case -12:
                str = "API_EEXIST";
                break;
            case IntegrityErrorCode.NONCE_TOO_LONG /* -11 */:
                str = "API_EACCESS";
                break;
            case IntegrityErrorCode.NONCE_TOO_SHORT /* -10 */:
                str = "API_ECIRCULAR";
                break;
            case -9:
                str = "API_ENOENT";
                break;
            case -8:
                str = "API_EEXPIRED";
                break;
            case -7:
                str = "API_ERANGE";
                break;
            case -6:
                str = "API_ETOOMANY";
                break;
            case -5:
                str = "API_EFAILED";
                break;
            case IntegrityErrorCode.PLAY_STORE_ACCOUNT_NOT_FOUND /* -4 */:
                str = "API_ERATELIMIT";
                break;
            case -3:
                str = "API_EAGAIN";
                break;
            case -2:
                str = "API_EARGS";
                break;
            case -1:
                str = "API_EINTERNAL";
                break;
            default:
                str = null;
                break;
        }
        String strK = str != null ? eq3.k(" (", str, ")") : null;
        super(xs1.h(i, "MEGA API error ", strK == null ? "" : strK));
        this.a = i;
    }
}
