package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.IBinder;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g44 {
    public static final Method a;
    public static final Method b;
    public static final Method c;

    static {
        try {
            Class<?> cls = Class.forName("android.os.ServiceManager");
            int i = Build.VERSION.SDK_INT;
            Class<?> cls2 = Integer.TYPE;
            if (i >= 28) {
                try {
                    a = cls.getDeclaredMethod("addService", String.class, IBinder.class, Boolean.TYPE, cls2);
                } catch (NoSuchMethodException unused) {
                }
            }
            if (a == null) {
                a = cls.getDeclaredMethod("addService", String.class, IBinder.class);
            }
            Method declaredMethod = ContextWrapper.class.getDeclaredMethod("attachBaseContext", Context.class);
            b = declaredMethod;
            declaredMethod.setAccessible(true);
            c = Class.forName("android.ddm.DdmHandleAppName").getDeclaredMethod("setAppName", String.class, cls2);
        } catch (ReflectiveOperationException e) {
            ji8.k("IPC", e);
        }
    }
}
