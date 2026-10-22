package defpackage;

import com.bareapps.barebackup.R;
import com.bareapps.barebackup.BareApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zf4 extends Exception {
    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        BareApp.Companion companion = BareApp.d;
        return dj7.g(R.string.invalid_login_details);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return "Invalid login details!";
    }
}
