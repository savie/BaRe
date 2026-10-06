package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ig4 extends zn2 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ig4(int i) {
        super("androidx.credentials.TYPE_INVALID_STATE_ERROR");
        switch (i) {
            case 1:
                super("androidx.credentials.TYPE_NOT_ALLOWED_ERROR");
                break;
            case 2:
                super("androidx.credentials.TYPE_READ_ONLY_ERROR");
                break;
            default:
                break;
        }
    }
}
