package defpackage;

import android.os.Build;
import com.nimbusds.jose.JWEObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class ax0 {
    public static /* synthetic */ int a() {
        int i = Build.VERSION.SDK_INT;
        return i < 36 ? i * JWEObject.MAX_COMPRESSED_CIPHER_TEXT_LENGTH : Build.VERSION.SDK_INT_FULL;
    }
}
