package okhttp3.internal.platform;

import android.content.Context;
import defpackage.ec4;
import defpackage.ov2;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PlatformInitializer implements ec4 {
    @Override // defpackage.ec4
    public final List a() {
        return ov2.a;
    }

    @Override // defpackage.ec4
    public final Object b(Context context) {
        context.getClass();
        Platform platform = Platform.a;
        Object obj = Platform.a;
        ContextAwarePlatform contextAwarePlatform = obj != null ? (ContextAwarePlatform) obj : null;
        if (contextAwarePlatform != null) {
            contextAwarePlatform.a(context);
        }
        return Platform.a;
    }
}
