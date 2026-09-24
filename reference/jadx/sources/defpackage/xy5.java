package defpackage;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class xy5 {
    public static final BitSet a;
    public static final BitSet b;
    public static final BitSet c;
    public static final BitSet d;

    static {
        BitSet bitSet = new BitSet(256);
        BitSet bitSet2 = new BitSet(256);
        a = bitSet2;
        b = new BitSet(256);
        c = new BitSet(256);
        bitSet.set(58);
        bitSet.set(47);
        bitSet.set(63);
        bitSet.set(35);
        bitSet.set(91);
        bitSet.set(93);
        bitSet.set(64);
        bitSet2.set(33);
        bitSet2.set(36);
        bitSet2.set(38);
        bitSet2.set(39);
        bitSet2.set(40);
        bitSet2.set(41);
        bitSet2.set(42);
        bitSet2.set(43);
        bitSet2.set(44);
        bitSet2.set(59);
        bitSet2.set(61);
        for (int i = 97; i <= 122; i++) {
            b.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            b.set(i2);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            b.set(i3);
        }
        BitSet bitSet3 = b;
        bitSet3.set(45);
        bitSet3.set(46);
        bitSet3.set(95);
        bitSet3.set(126);
        BitSet bitSet4 = c;
        bitSet4.or(a);
        bitSet4.or(bitSet3);
        d = new BitSet(256);
        for (int i4 = 97; i4 <= 122; i4++) {
            d.set(i4);
        }
        for (int i5 = 65; i5 <= 90; i5++) {
            d.set(i5);
        }
        for (int i6 = 48; i6 <= 57; i6++) {
            d.set(i6);
        }
        BitSet bitSet5 = d;
        bitSet5.set(33);
        bitSet5.set(35);
        bitSet5.set(36);
        bitSet5.set(38);
        bitSet5.set(43);
        bitSet5.set(45);
        bitSet5.set(46);
        bitSet5.set(94);
        bitSet5.set(95);
        bitSet5.set(96);
        bitSet5.set(124);
        bitSet5.set(126);
    }

    public static String a(CharSequence charSequence) {
        Charset charset = StandardCharsets.UTF_8;
        if (charSequence == null) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(charSequence.length());
        CharBuffer charBufferWrap = CharBuffer.wrap(charSequence);
        while (charBufferWrap.hasRemaining()) {
            char c2 = charBufferWrap.get();
            if (c2 != '%' || charBufferWrap.remaining() < 2) {
                byteBufferAllocate.put((byte) c2);
            } else {
                char c3 = charBufferWrap.get();
                char c4 = charBufferWrap.get();
                int iDigit = Character.digit(c3, 16);
                int iDigit2 = Character.digit(c4, 16);
                if (iDigit == -1 || iDigit2 == -1) {
                    byteBufferAllocate.put((byte) 37);
                    byteBufferAllocate.put((byte) c3);
                    byteBufferAllocate.put((byte) c4);
                } else {
                    byteBufferAllocate.put((byte) ((iDigit << 4) + iDigit2));
                }
            }
        }
        byteBufferAllocate.flip();
        if (charset == null) {
            Charset charset2 = StandardCharsets.UTF_8;
        }
        return charset.decode(byteBufferAllocate).toString();
    }

    public static void b(StringBuilder sb, CharSequence charSequence, Charset charset, BitSet bitSet) {
        if (charSequence == null) {
            return;
        }
        CharBuffer charBufferWrap = CharBuffer.wrap(charSequence);
        if (charset == null) {
            charset = StandardCharsets.UTF_8;
        }
        ByteBuffer byteBufferEncode = charset.encode(charBufferWrap);
        while (byteBufferEncode.hasRemaining()) {
            byte b2 = byteBufferEncode.get();
            int i = b2 & 255;
            if (bitSet.get(i)) {
                sb.append((char) i);
            } else {
                sb.append("%");
                char upperCase = Character.toUpperCase(Character.forDigit((i >> 4) & 15, 16));
                char upperCase2 = Character.toUpperCase(Character.forDigit(b2 & 15, 16));
                sb.append(upperCase);
                sb.append(upperCase2);
            }
        }
    }
}
