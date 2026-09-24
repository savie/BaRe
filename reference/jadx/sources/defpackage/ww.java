package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class ww {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;
    public static final /* synthetic */ int[] c;

    static {
        int[] iArr = new int[gz.values().length];
        try {
            iArr[gz.SharedLibs.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[gz.Apk.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[gz.Splits.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[gz.Data.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[gz.ExtData.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[gz.Expansion.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr[gz.Media.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr[gz.SpecialData.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        a = iArr;
        int[] iArr2 = new int[ew5.values().length];
        try {
            iArr2[ew5.PasswordError.ordinal()] = 1;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr2[ew5.PasswordMismatchError.ordinal()] = 2;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr2[ew5.CorruptionError.ordinal()] = 3;
        } catch (NoSuchFieldError unused11) {
        }
        b = iArr2;
        int[] iArr3 = new int[iu.values().length];
        try {
            iArr3[iu.DATA.ordinal()] = 1;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            iArr3[iu.EXTDATA.ordinal()] = 2;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            iArr3[iu.MEDIA.ordinal()] = 3;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            iArr3[iu.EXPANSION.ordinal()] = 4;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            iArr3[iu.APP.ordinal()] = 5;
        } catch (NoSuchFieldError unused16) {
        }
        c = iArr3;
    }
}
