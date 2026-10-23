package defpackage;

import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Set;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class li implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ li(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) throws Throwable {
        Class[] clsArr;
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                Set set = (Set) obj3;
                RecyclerView recyclerView = (RecyclerView) obj;
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                recyclerView.getClass();
                qr qrVar = tr.n0;
                qr.f(recyclerView, null, zBooleanValue, 1.0f, set, false, null, 4066);
                return be8Var;
            case 1:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj3;
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                ((Boolean) obj2).getClass();
                l20 l20Var = appsBatchActivity.m0;
                if (l20Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                l20Var.y();
                appsBatchActivity.m0(zBooleanValue2);
                return be8Var;
            case 2:
                vq4 vq4Var = (vq4) obj;
                ((Integer) obj2).getClass();
                int i2 = LabelsActivity.Z;
                vq4Var.getClass();
                ((LabelsActivity) obj3).S(vq4Var);
                return be8Var;
            default:
                int iIntValue = ((Integer) obj).intValue();
                Bundle bundle = (Bundle) obj2;
                e76 e76Var = (e76) ((os4) obj3).getValue();
                Object obj4 = e76Var.a;
                xr8 xr8Var = e76Var.c;
                if (iIntValue == 2) {
                    clsArr = new Class[]{String.class, String.class};
                } else {
                    if (iIntValue != 3) {
                        throw new NoSuchMethodException("Unsupported parameter count");
                    }
                    clsArr = new Class[]{String.class, String.class, Bundle.class};
                }
                Method method = e76Var.b.getMethod("getPrivilegedConfiguredNetworks", (Class[]) Arrays.copyOf(clsArr, clsArr.length));
                if (iIntValue == 2) {
                    method.getClass();
                    xr8Var.getClass();
                    try {
                        return method.invoke(obj4, Arrays.copyOf(new Object[]{"shell", "com.android.shell"}, 2));
                    } catch (InvocationTargetException e) {
                        Throwable cause = e;
                        while (cause instanceof InvocationTargetException) {
                            InvocationTargetException invocationTargetException = (InvocationTargetException) cause;
                            if (invocationTargetException.getCause() == null) {
                                throw cause;
                            }
                            cause = invocationTargetException.getCause();
                            cause.getClass();
                        }
                        throw cause;
                    }
                }
                method.getClass();
                xr8Var.getClass();
                try {
                    return method.invoke(obj4, Arrays.copyOf(new Object[]{"shell", "com.android.shell", bundle}, 3));
                } catch (InvocationTargetException e2) {
                    Throwable cause2 = e2;
                    while (cause2 instanceof InvocationTargetException) {
                        InvocationTargetException invocationTargetException2 = (InvocationTargetException) cause2;
                        if (invocationTargetException2.getCause() == null) {
                            throw cause2;
                        }
                        cause2 = invocationTargetException2.getCause();
                        cause2.getClass();
                    }
                    throw cause2;
                }
        }
    }
}
