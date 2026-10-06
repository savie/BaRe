package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class bd3 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[cd3.values().length];
        try {
            iArr[cd3.User.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[cd3.System.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[cd3.All.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        a = iArr;
    }
}
