package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import defpackage.ec4;
import defpackage.ns0;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ProfileInstallerInitializer implements ec4 {
    @Override // defpackage.ec4
    public final List a() {
        return Collections.EMPTY_LIST;
    }

    @Override // defpackage.ec4
    public final Object b(Context context) {
        final Context applicationContext = context.getApplicationContext();
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback(this) { // from class: y76
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                (Build.VERSION.SDK_INT >= 28 ? cf.b(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new j70(applicationContext, 4), new Random().nextInt(Math.max(PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT, 1)) + 5000);
            }
        });
        return new ns0(15);
    }
}
