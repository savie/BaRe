package defpackage;

import android.graphics.Matrix;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class cn8 extends rs9 {
    public static boolean w = true;
    public static boolean x = true;
    public static boolean y = true;
    public static boolean z = true;

    public void I(View view, int i, int i2, int i3, int i4) {
        if (y) {
            try {
                an8.a(view, i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                y = false;
            }
        }
    }

    public void J(View view, int i) {
        if (Build.VERSION.SDK_INT != 28) {
            if (z) {
                try {
                    bn8.a(view, i);
                    return;
                } catch (NoSuchMethodError unused) {
                    z = false;
                    return;
                }
            }
            return;
        }
        if (!rs9.v) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                rs9.u = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused2) {
                Log.i("ViewUtilsApi19", "fetchViewFlagsField: ");
            }
            rs9.v = true;
        }
        Field field = rs9.u;
        if (field != null) {
            try {
                rs9.u.setInt(view, (field.getInt(view) & (-13)) | i);
            } catch (IllegalAccessException unused3) {
            }
        }
    }

    public void K(View view, Matrix matrix) {
        if (w) {
            try {
                zm8.b(view, matrix);
            } catch (NoSuchMethodError unused) {
                w = false;
            }
        }
    }

    public void L(ViewGroup viewGroup, Matrix matrix) {
        if (x) {
            try {
                zm8.c(viewGroup, matrix);
            } catch (NoSuchMethodError unused) {
                x = false;
            }
        }
    }
}
