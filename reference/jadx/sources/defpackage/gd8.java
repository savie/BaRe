package defpackage;

import java.net.URISyntaxException;
import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class gd8 {
    public static final rn1 a;
    public static final rn1 b;
    public static final f88 c;
    public static final rn1 d;

    static {
        BitSet bitSet = new BitSet(256);
        BitSet bitSet2 = new BitSet(256);
        BitSet bitSet3 = new BitSet(256);
        bitSet3.set(47);
        bitSet3.set(35);
        bitSet3.set(63);
        bitSet.or(bitSet3);
        bitSet.set(64);
        bitSet2.or(bitSet3);
        bitSet2.set(58);
        a = new rn1(bitSet3, 7);
        b = new rn1(bitSet, 7);
        c = new f88(']');
        d = new rn1(bitSet2, 7);
    }

    public static URISyntaxException a(CharSequence charSequence, sc6 sc6Var, String str) {
        return new URISyntaxException(charSequence.subSequence(0, sc6Var.b).toString(), str, sc6Var.c);
    }
}
