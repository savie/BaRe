package defpackage;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xm5 {
    public static final String c = String.valueOf('?');
    public final Charset a;
    public final boolean b;

    /* JADX WARN: Code duplicated, block: B:11:0x0036  */
    public xm5(Charset charset) {
        boolean z;
        this.a = charset;
        int i = g51.a;
        final String strName = (charset == null ? Charset.defaultCharset() : charset).name();
        Charset charset2 = StandardCharsets.UTF_8;
        if (charset2.name().equalsIgnoreCase(strName)) {
            z = true;
        } else {
            Stream<String> stream = charset2.aliases().stream();
            Objects.requireNonNull(strName);
            if (stream.anyMatch(new Predicate() { // from class: vy8
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return strName.equalsIgnoreCase((String) obj);
                }
            })) {
                z = true;
            } else {
                z = false;
            }
        }
        this.b = z;
    }

    public final String a(byte[] bArr) {
        CharsetDecoder charsetDecoderReplaceWith;
        boolean z = this.b;
        Charset charset = this.a;
        if (z) {
            CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            charsetDecoderReplaceWith = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).replaceWith(c);
        } else {
            CharsetDecoder charsetDecoderNewDecoder2 = charset.newDecoder();
            CodingErrorAction codingErrorAction2 = CodingErrorAction.REPORT;
            charsetDecoderReplaceWith = charsetDecoderNewDecoder2.onMalformedInput(codingErrorAction2).onUnmappableCharacter(codingErrorAction2);
        }
        return charsetDecoderReplaceWith.decode(ByteBuffer.wrap(bArr)).toString();
    }
}
