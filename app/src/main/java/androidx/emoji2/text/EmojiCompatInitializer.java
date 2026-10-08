package androidx.emoji2.text;

import android.content.Context;
import androidx.lifecycle.ProcessLifecycleInitializer;
import defpackage.ec4;
import defpackage.fu4;
import defpackage.hu4;
import defpackage.km8;
import defpackage.ku2;
import defpackage.lu2;
import defpackage.mu2;
import defpackage.vq;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class EmojiCompatInitializer implements ec4 {
    @Override // defpackage.ec4
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // defpackage.ec4
    public final Object b(Context context) {
        Object objL;
        mu2 mu2Var = new mu2(new km8(context));
        mu2Var.a = 1;
        if (ku2.k == null) {
            synchronized (ku2.j) {
                try {
                    if (ku2.k == null) {
                        ku2.k = new ku2(mu2Var);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        vq vqVarN = vq.n(context);
        vqVarN.getClass();
        synchronized (vq.f) {
            try {
                objL = ((HashMap) vqVarN.b).get(ProcessLifecycleInitializer.class);
                if (objL == null) {
                    objL = vqVarN.l(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        hu4 lifecycle = ((fu4) objL).getLifecycle();
        lifecycle.a(new lu2(this, lifecycle));
        return Boolean.TRUE;
    }
}
