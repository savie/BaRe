package defpackage;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class io4 {
    public static final ViewGroup a(Activity activity) {
        activity.getClass();
        View viewFindViewById = activity.findViewById(R.id.content);
        viewFindViewById.getClass();
        return (ViewGroup) viewFindViewById;
    }

    public static final String b(Throwable th) {
        th.getClass();
        ArrayList arrayList = new ArrayList();
        for (Throwable cause = th; cause != null && !arrayList.contains(cause); cause = cause.getCause()) {
            arrayList.add(cause);
        }
        Throwable[] thArr = (Throwable[]) arrayList.toArray(od2.c);
        thArr.getClass();
        ArrayList arrayList2 = new ArrayList();
        for (Throwable th2 : thArr) {
            String message = th2.getMessage();
            if (message != null) {
                arrayList2.add(message);
            }
        }
        return dj7.k(th.getClass().getSimpleName(), ": ", el1.Y0(arrayList2, "\n", null, null, null, 62));
    }

    public static final int c(Context context, int i) {
        context.getClass();
        int iC = z85.C(context, jm1.T(org.swiftapps.swiftbackup.R.attr.colorPrimary, context, z85.class.getCanonicalName()));
        b34 b34Var = new b34(i);
        b34 b34Var2 = new b34(iC);
        double dMin = Math.min((180.0d - Math.abs(Math.abs(b34Var.a - b34Var2.a) - 180.0d)) * 0.5d, 15.0d);
        double d = b34Var.a;
        double d2 = (b34Var2.a - d) % 360.0d;
        if (d2 < 0.0d) {
            d2 += 360.0d;
        }
        double d3 = ((dMin * (d2 <= 180.0d ? 1.0d : -1.0d)) + d) % 360.0d;
        if (d3 < 0.0d) {
            d3 += 360.0d;
        }
        return new b34(y13.F(d3, b34Var.b, b34Var.c)).d;
    }

    public static final int d(Context context, int i) {
        context.getClass();
        return c(context, context.getColor(sz8.y(context, i)));
    }

    public static final boolean e(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        configuration.getClass();
        if (b67.c()) {
            return configuration.isNightModeActive();
        }
        return (configuration.uiMode & 32) == 32;
    }

    public static final boolean f(String str) {
        return (str == null || str.length() <= 0 || nq7.j0(str)) ? false : true;
    }

    public static final void g(q63 q63Var) {
        q63Var.getClass();
        q63 q63VarT = q63Var.t();
        if (q63VarT == null) {
            f6.g(xs1.i(q63Var, "File has no parent: "));
            return;
        }
        if (!q63VarT.j() && !q63.E(q63VarT)) {
            l0.k(q63Var, "Failed to create parent dir for file=");
        } else {
            if (q63VarT.x()) {
                return;
            }
            g84.f(xs1.i(q63Var, "Parent path is not a directory for file="));
        }
    }

    public static final long h(Long l) {
        if (l != null) {
            return l.longValue();
        }
        return 0L;
    }

    public static final void i(il0 il0Var, n81 n81Var, int i) {
        il0Var.getClass();
        Class cls = n81Var.a;
        cls.getClass();
        il0Var.startActivityForResult(new Intent(il0Var, (Class<?>) cls), i);
    }

    public static Object j(String str, String str2, boolean z, bt3 bt3Var, int i) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        boolean z2 = (i & 8) == 0;
        str.getClass();
        try {
            return bt3Var.invoke();
        } catch (Exception e) {
            e.printStackTrace();
            if (str2 == null) {
                str2 = "tryCatchLog";
            }
            String strK = dj7.k(str2, ": ", b(e));
            if (!z) {
                Log.e(str, strK);
            } else if (z2) {
                vr6.de$default(vr6.INSTANCE, str, strK, null, 4, null);
            } else {
                vr6.e$default(vr6.INSTANCE, str, strK, null, 4, null);
            }
            return null;
        }
    }
}
