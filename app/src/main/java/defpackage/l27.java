package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum l27 {
    None,
    SevenZipAes,
    Aes256Gcm,
    Aes256GcmSiv,
    Aegis256,
    Aegis128X2;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final wy6 toPublicMethod() throws i27 {
        switch (k27.a[ordinal()]) {
            case 1:
                return wy6.None;
            case 2:
                return wy6.Aegis256;
            case 3:
                return wy6.Aegis128X2;
            case 4:
            case 5:
            case 6:
                throw new i27("SBA archive uses an internal encryption method that is not enabled in the public SDK build: " + this, null);
            default:
                q.j();
                return null;
        }
    }
}
