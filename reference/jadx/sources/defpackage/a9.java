package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Handler;
import androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import com.l4digital.fastscroll.FastScroller;
import java.lang.reflect.Method;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a9 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a9(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        ?? r5;
        ?? r4;
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                Activity activity = (Activity) obj2;
                if (activity.isFinishing()) {
                    return;
                }
                Handler handler = e9.g;
                Method method = e9.f;
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 28) {
                    activity.recreate();
                    return;
                }
                Application application = 27;
                d9 d9Var = 26;
                if (((i2 != 26 && i2 != 27) || method != null) && (e9.e != null || e9.d != null)) {
                    try {
                        Object obj3 = e9.c.get(activity);
                        if (obj3 != null && (obj = e9.b.get(activity)) != null) {
                            application = activity.getApplication();
                            d9Var = new d9(activity);
                            application.registerActivityLifecycleCallbacks(d9Var);
                            int i3 = 1;
                            i3 = 1;
                            i2 = 0;
                            boolean z = false;
                            int i4 = 0;
                            boolean z2 = false;
                            handler.post(new i8(d9Var, obj3, i3, false ? 1 : 0));
                            if (i2 != 26 && i2 != 27) {
                                i3 = i4;
                            }
                            try {
                                if (i3 != 0) {
                                    try {
                                        Integer numValueOf = Integer.valueOf((int) (z2 ? 1 : 0));
                                        Boolean bool = Boolean.FALSE;
                                        method.invoke(obj, obj3, null, null, numValueOf, bool, null, null, bool, bool);
                                    } catch (Throwable th) {
                                        th = th;
                                        r4 = application;
                                        r5 = d9Var;
                                        i2 = i2;
                                        handler.post(new b9(i2, r4, r5));
                                        throw th;
                                    }
                                } else {
                                    activity.recreate();
                                }
                                handler.post(new b9(z ? 1 : 0, application, d9Var));
                                return;
                            } catch (Throwable th2) {
                                th = th2;
                                r4 = application;
                                r5 = d9Var;
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                activity.recreate();
                return;
            case 1:
                ((lj0) obj2).dismiss();
                return;
            case 2:
                ((dr0) obj2).a();
                return;
            case 3:
                CreateDigitalCredentialController.handleResponse$lambda$2$0((CreateDigitalCredentialController) obj2);
                return;
            case 4:
                CreatePublicKeyCredentialController.handleResponse$lambda$2$0((CreatePublicKeyCredentialController) obj2);
                return;
            case 5:
                FastScroller fastScroller = (FastScroller) obj2;
                fastScroller.setViewPositions(fastScroller.g(fastScroller.y));
                return;
            case 6:
                ((bt3) obj2).invoke();
                return;
            default:
                ((Iterator) obj2).remove();
                return;
        }
    }
}
