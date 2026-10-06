package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class ay5 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[ux5.values().length];
        try {
            iArr[ux5.STANDARD_PASSWORD.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[ux5.USER_PASSWORD.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        a = iArr;
    }
}
