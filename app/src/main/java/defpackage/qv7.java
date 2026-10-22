package defpackage;

import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qv7 {
    public static final HashMap a = new HashMap();
    public static final Method b;

    static {
        new HashMap();
        try {
            b = Class.forName("android.os.ServiceManager").getMethod("getService", String.class);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.w("SystemServiceHelper", Log.getStackTraceString(e));
        }
    }

    public static IBinder a(String str) {
        HashMap map = a;
        IBinder iBinder = (IBinder) map.get(str);
        if (iBinder == null) {
            try {
                iBinder = (IBinder) b.invoke(null, str);
            } catch (IllegalAccessException | InvocationTargetException e) {
                Log.w("SystemServiceHelper", Log.getStackTraceString(e));
            }
            map.put(str, iBinder);
        }
        return iBinder;
    }
}
