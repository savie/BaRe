package defpackage;

import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rc1 implements qt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ rc1(int i) {
        this.a = i;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        Boolean boolValueOf;
        switch (this.a) {
            case 0:
                return dd1._init_$lambda$25((il0) obj, ((Integer) obj2).intValue());
            default:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                ((Boolean) obj2).getClass();
                if (!zBooleanValue) {
                    try {
                        d45.b.getClass();
                        MFirebaseUser mFirebaseUserA = d45.a();
                        boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
                        break;
                    } catch (Exception unused) {
                    }
                    if (!pe4.d(boolValueOf, Boolean.TRUE)) {
                        l0.e("Signed in user is not Anonymous. Can't migrate to Google Sign-in!");
                        return null;
                    }
                    SharedPreferences.Editor editor = cz4.k;
                    if (editor == null) {
                        pe4.F("editor");
                        throw null;
                    }
                    editor.putBoolean("is_migrating_to_google_sign_in", true).commit();
                    d45.b.c();
                }
                return be8.a;
        }
    }
}
