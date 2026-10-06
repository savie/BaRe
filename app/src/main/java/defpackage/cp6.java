package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class cp6 {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;
    public static final /* synthetic */ int[] c;
    public static final /* synthetic */ int[] d;

    static {
        int[] iArr = new int[i07.values().length];
        try {
            iArr[i07.Create.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[i07.ListTarEntries.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[i07.Extract.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        a = iArr;
        int[] iArr2 = new int[k07.values().length];
        try {
            iArr2[k07.Preparing.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[k07.CreatingArchive.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[k07.ListingArchive.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[k07.ExtractingArchive.ordinal()] = 4;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[k07.Finalizing.ordinal()] = 5;
        } catch (NoSuchFieldError unused8) {
        }
        b = iArr2;
        int[] iArr3 = new int[l07.values().length];
        try {
            iArr3[l07.Entry.ordinal()] = 1;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr3[l07.Tar.ordinal()] = 2;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr3[l07.Compression.ordinal()] = 3;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            iArr3[l07.Encryption.ordinal()] = 4;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            iArr3[l07.Decryption.ordinal()] = 5;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            iArr3[l07.Listing.ordinal()] = 6;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            iArr3[l07.Extraction.ordinal()] = 7;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            iArr3[l07.Finalize.ordinal()] = 8;
        } catch (NoSuchFieldError unused16) {
        }
        c = iArr3;
        int[] iArr4 = new int[m07.values().length];
        try {
            iArr4[m07.Started.ordinal()] = 1;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            iArr4[m07.Progress.ordinal()] = 2;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            iArr4[m07.Completed.ordinal()] = 3;
        } catch (NoSuchFieldError unused19) {
        }
        d = iArr4;
    }
}
