package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class ed3 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[fd3.values().length];
        try {
            iArr[fd3.All.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[fd3.BackedUp.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[fd3.NotBackedUp.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        a = iArr;
    }
}
