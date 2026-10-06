package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class jw2 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[iw2.values().length];
        try {
            iArr[iw2.STRING.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[iw2.STRING_SET.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[iw2.INT.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[iw2.LONG.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[iw2.FLOAT.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[iw2.BOOLEAN.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        a = iArr;
    }
}
