package defpackage;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.nimbusds.jose.crypto.PasswordBasedDecrypter;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class wn {
    public static OnBackInvokedDispatcher a(Activity activity) {
        return activity.getOnBackInvokedDispatcher();
    }

    public static OnBackInvokedCallback b(Object obj, final fo foVar) {
        Objects.requireNonNull(foVar);
        OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: vn
            public final void onBackInvoked() {
                foVar.D();
            }
        };
        e6.c(obj).registerOnBackInvokedCallback(PasswordBasedDecrypter.MAX_ALLOWED_ITERATION_COUNT, onBackInvokedCallback);
        return onBackInvokedCallback;
    }

    public static void c(Object obj, Object obj2) {
        e6.c(obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }
}
