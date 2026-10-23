package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum j48 {
    AES_SIV("type.googleapis.com/google.crypto.tink.AesSivKey", 64, 2),
    AES_GCM("type.googleapis.com/google.crypto.tink.AesGcmKey", 32, 3);

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    private final int keySizeBytes;
    private final int keyValueFieldNumber;
    private final String typeUrl;

    j48(String str, int i, int i2) {
        this.typeUrl = str;
        this.keySizeBytes = i;
        this.keyValueFieldNumber = i2;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final int getKeySizeBytes() {
        return this.keySizeBytes;
    }

    public final int getKeyValueFieldNumber() {
        return this.keyValueFieldNumber;
    }

    public final String getTypeUrl() {
        return this.typeUrl;
    }
}
