package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l84 implements AutoCloseable {
    public static final ThreadLocal b = ThreadLocal.withInitial(new j13(1));
    public static final l84 c = new l84(null);
    public final byte[] a;

    public l84(byte[] bArr) {
        this.a = bArr;
    }

    public static l84 a() {
        Object[] objArr = (Object[]) b.get();
        if (((Boolean) objArr[0]).booleanValue()) {
            int i = n84.a;
            return new l84(new byte[8192]);
        }
        objArr[0] = Boolean.TRUE;
        return c;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.a == null) {
            Object[] objArr = (Object[]) b.get();
            Arrays.fill((byte[]) objArr[1], (byte) 0);
            objArr[0] = Boolean.FALSE;
        }
    }
}
