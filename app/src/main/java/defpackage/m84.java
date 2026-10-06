package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m84 implements AutoCloseable {
    public static final ThreadLocal b = ThreadLocal.withInitial(new k13(1));
    public static final m84 c = new m84(null);
    public final char[] a;

    public m84(char[] cArr) {
        this.a = cArr;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.a == null) {
            Object[] objArr = (Object[]) b.get();
            Arrays.fill((char[]) objArr[1], (char) 0);
            objArr[0] = Boolean.FALSE;
        }
    }
}
