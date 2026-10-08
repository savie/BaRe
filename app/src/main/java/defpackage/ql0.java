package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ql0 {
    public static final ol0 c;
    public final nl0 a;
    public final Character b;

    static {
        new pl0("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        new pl0("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new ql0("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new ql0("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        c = new ol0();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0017  */
    public ql0(nl0 nl0Var, Character ch) {
        boolean z;
        this.a = nl0Var;
        if (ch != null) {
            char cCharValue = ch.charValue();
            byte[] bArr = nl0Var.f;
            if (cCharValue >= bArr.length || bArr[cCharValue] == -1) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        if (z) {
            this.b = ch;
        } else {
            c6.f(y13.t("Padding character %s was already in alphabet", ch));
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ql0) {
            ql0 ql0Var = (ql0) obj;
            if (this.a.equals(ql0Var.a) && Objects.equals(this.b, ql0Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.b) ^ this.a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        nl0 nl0Var = this.a;
        sb.append(nl0Var);
        if (8 % nl0Var.c != 0) {
            Character ch = this.b;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    public ql0(String str, String str2) {
        this(new nl0(str, str2.toCharArray()), (Character) '=');
    }
}
