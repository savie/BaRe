package defpackage;

import com.nimbusds.jose.JWEObject;
import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vj0 {
    public final boolean[] a = new boolean[256];
    public final byte[] b = new byte[256];
    public final int[] c = new int[258];
    public final byte[] d = new byte[18002];
    public final byte[] e = new byte[18002];
    public final byte[] f = new byte[256];
    public final byte[][] g = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 6, 258);
    public final int[][] h;
    public final int[] i;
    public final short[] j;
    public final int[][] k;
    public final byte[] l;
    public final boolean[] m;
    public final int[] n;
    public final int[] o;
    public final int[] p;
    public final byte[] q;
    public final int[] r;
    public final char[] s;
    public int t;

    public vj0(int i) {
        Class cls = Integer.TYPE;
        this.h = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
        this.i = new int[6];
        this.j = new short[6];
        this.k = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
        this.l = new byte[6];
        this.m = new boolean[16];
        this.n = new int[260];
        this.o = new int[516];
        this.p = new int[516];
        int i2 = JWEObject.MAX_COMPRESSED_CIPHER_TEXT_LENGTH * i;
        this.q = new byte[i2 + 21];
        this.r = new int[i2];
        this.s = new char[i * 200000];
    }
}
