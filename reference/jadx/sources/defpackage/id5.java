package defpackage;

import android.graphics.Path;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class id5 extends ThreadLocal {
    public final /* synthetic */ int a;

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.a) {
            case 0:
                CharsetEncoder charsetEncoderNewEncoder = Charset.forName("UTF8").newEncoder();
                CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
                charsetEncoderNewEncoder.onMalformedInput(codingErrorAction);
                charsetEncoderNewEncoder.onUnmappableCharacter(codingErrorAction);
                return charsetEncoderNewEncoder;
            case 1:
                return new Path();
            default:
                try {
                    return (Cipher) s1a.b.a.zza("AES/ECB/NoPadding");
                } catch (GeneralSecurityException e) {
                    throw new IllegalStateException(e);
                }
        }
    }
}
