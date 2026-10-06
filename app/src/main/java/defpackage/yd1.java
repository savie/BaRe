package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class yd1 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[rd1.values().length];
        try {
            iArr[rd1.NOT_RUN.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[rd1.RUNNING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[rd1.PASSED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[rd1.FAILED.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[rd1.ACTION_REQUIRED.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[rd1.SKIPPED.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        a = iArr;
    }
}
