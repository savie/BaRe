package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class zi2 {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;
    public static final /* synthetic */ int[] c;

    static {
        int[] iArr = new int[iu.values().length];
        try {
            iArr[iu.APP.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        a = iArr;
        int[] iArr2 = new int[q05.values().length];
        try {
            iArr2[q05.DEVICE.ordinal()] = 1;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[q05.CLOUD.ordinal()] = 2;
        } catch (NoSuchFieldError unused3) {
        }
        b = iArr2;
        int[] iArr3 = new int[hk0.values().length];
        try {
            iArr3[hk0.Apk.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr3[hk0.SplitApks.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr3[hk0.SharedLibs.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr3[hk0.Data.ordinal()] = 4;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr3[hk0.ExtData.ordinal()] = 5;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            iArr3[hk0.Media.ordinal()] = 6;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr3[hk0.Expansion.ordinal()] = 7;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr3[hk0.SpecialData.ordinal()] = 8;
        } catch (NoSuchFieldError unused11) {
        }
        c = iArr3;
    }
}
