package defpackage;

import com.nimbusds.jose.JWEObject;
import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tj0 {
    public final boolean[] a = new boolean[256];
    public final byte[] b = new byte[256];
    public final byte[] c = new byte[18002];
    public final byte[] d = new byte[18002];
    public final int[] e = new int[256];
    public final int[][] f;
    public final int[][] g;
    public final int[][] h;
    public final int[] i;
    public final int[] j;
    public final char[] k;
    public final char[][] l;
    public final byte[] m;
    public int[] n;
    public final byte[] o;

    public tj0(int i) {
        Class cls = Integer.TYPE;
        this.f = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
        this.g = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
        this.h = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
        this.i = new int[6];
        this.j = new int[257];
        this.k = new char[256];
        this.l = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 6, 258);
        this.m = new byte[6];
        this.o = new byte[i * JWEObject.MAX_COMPRESSED_CIPHER_TEXT_LENGTH];
    }
}
