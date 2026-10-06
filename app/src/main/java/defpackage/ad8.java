package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ad8 {
    public static final ThreadLocal d = new ThreadLocal();
    public final int a;
    public final kb2 b;
    public volatile int c = 0;

    public ad8(kb2 kb2Var, int i) {
        this.b = kb2Var;
        this.a = i;
    }

    public final int a(int i) {
        nf5 nf5VarB = b();
        int iA = nf5VarB.a(16);
        if (iA == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = (ByteBuffer) nf5VarB.d;
        int i2 = iA + nf5VarB.a;
        return byteBuffer.getInt((i * 4) + byteBuffer.getInt(i2) + i2 + 4);
    }

    public final nf5 b() {
        ThreadLocal threadLocal = d;
        nf5 nf5Var = (nf5) threadLocal.get();
        if (nf5Var == null) {
            nf5Var = new nf5();
            threadLocal.set(nf5Var);
        }
        of5 of5Var = (of5) this.b.a;
        int iA = of5Var.a(6);
        if (iA != 0) {
            int i = iA + of5Var.a;
            int i2 = (this.a * 4) + ((ByteBuffer) of5Var.d).getInt(i) + i + 4;
            int i3 = ((ByteBuffer) of5Var.d).getInt(i2) + i2;
            ByteBuffer byteBuffer = (ByteBuffer) of5Var.d;
            nf5Var.d = byteBuffer;
            if (byteBuffer != null) {
                nf5Var.a = i3;
                int i4 = i3 - byteBuffer.getInt(i3);
                nf5Var.b = i4;
                nf5Var.c = ((ByteBuffer) nf5Var.d).getShort(i4);
                return nf5Var;
            }
            nf5Var.a = 0;
            nf5Var.b = 0;
            nf5Var.c = 0;
        }
        return nf5Var;
    }

    public final String toString() {
        int i;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        nf5 nf5VarB = b();
        int iA = nf5VarB.a(4);
        sb.append(Integer.toHexString(iA != 0 ? ((ByteBuffer) nf5VarB.d).getInt(iA + nf5VarB.a) : 0));
        sb.append(", codepoints:");
        nf5 nf5VarB2 = b();
        int iA2 = nf5VarB2.a(16);
        if (iA2 != 0) {
            int i2 = iA2 + nf5VarB2.a;
            i = ((ByteBuffer) nf5VarB2.d).getInt(((ByteBuffer) nf5VarB2.d).getInt(i2) + i2);
        } else {
            i = 0;
        }
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(Integer.toHexString(a(i3)));
            sb.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
        }
        return sb.toString();
    }
}
