package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class zx6 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[l27.values().length];
        try {
            iArr[l27.Aegis256.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[l27.Aegis128X2.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        a = iArr;
    }
}
