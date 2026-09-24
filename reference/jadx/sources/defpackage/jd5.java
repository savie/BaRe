package defpackage;

import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jd5 implements gd5 {
    public static final hd5 b = new hd5(0);
    public StringBuilder a;

    static {
        new id5(0);
    }

    @Override // defpackage.gd5
    public final boolean a(byte[] bArr) {
        String string;
        try {
            string = ((CharsetDecoder) b.get()).decode(ByteBuffer.wrap(bArr)).toString();
        } catch (CharacterCodingException unused) {
            string = null;
        }
        if (string == null) {
            return false;
        }
        this.a.append(string);
        return true;
    }

    @Override // defpackage.gd5
    public final ut1 b() {
        String string = this.a.toString();
        ut1 ut1Var = new ut1();
        ut1Var.a = string;
        return ut1Var;
    }
}
