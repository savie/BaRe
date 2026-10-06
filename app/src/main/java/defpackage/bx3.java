package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bx3 extends ew3 {
    public final String f;

    public bx3(String str) {
        super("com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL", yc9.B0(str), yc9.B0(str), true, sv2.a, 2000);
        this.f = str;
        if (str.length() > 0) {
            return;
        }
        c6.f("serverClientId should not be empty");
        throw null;
    }
}
