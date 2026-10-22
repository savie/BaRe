package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ew2 extends zn2 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ew2(int i) {
        super("androidx.credentials.TYPE_ENCODING_ERROR");
        switch (i) {
            case 1:
                super("androidx.credentials.TYPE_INVALID_MODIFICATION_ERROR");
                break;
            case 2:
                super("androidx.credentials.TYPE_TIMEOUT_ERROR");
                break;
            default:
                break;
        }
    }
}
