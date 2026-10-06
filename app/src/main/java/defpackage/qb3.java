package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class qb3 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[cb3.values().length];
        try {
            iArr[cb3.TwoFactorRequired.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[cb3.TwoFactorWrong.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[cb3.InvalidCredentials.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[cb3.InvalidSession.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[cb3.Unknown.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        a = iArr;
    }
}
