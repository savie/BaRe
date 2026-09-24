package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ie {
    public final byte a;
    public final byte b;
    public final byte c;
    public final byte d;
    public final byte[] e;

    public ie(int i, byte[] bArr, int i2, int i3) {
        byte bA = a(0, "CLA");
        byte bA2 = a(i, "INS");
        byte bA3 = a(i2, "P1");
        byte bA4 = a(i3, "P2");
        this.a = bA;
        this.b = bA2;
        this.c = bA3;
        this.d = bA4;
        this.e = bArr == null ? new byte[0] : bArr;
    }

    public static byte a(int i, String str) {
        if (i <= 255 && i >= -128) {
            return (byte) i;
        }
        c6.f(eq3.k("Invalid value for ", str, ", must fit in a byte"));
        return (byte) 0;
    }
}
