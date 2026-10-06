package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class sq0 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[wb6.b.values().length];
        try {
            iArr[wb6.b.UNSPECIFIED_STATE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[wb6.b.PURCHASED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[wb6.b.PENDING.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        a = iArr;
    }
}
