package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class aq implements View.OnClickListener {
    public final View a;
    public final String b;
    public Method c;
    public Context d;

    public aq(View view, String str) {
        this.a = view;
        this.b = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        Method method;
        if (this.c != null) {
            break;
        }
        View view2 = this.a;
        Context context = view2.getContext();
        while (true) {
            String str2 = this.b;
            if (context == null) {
                int id = view2.getId();
                if (id == -1) {
                    str = "";
                } else {
                    str = " with id '" + view2.getContext().getResources().getResourceEntryName(id) + "'";
                }
                StringBuilder sbU = dj7.u("Could not find method ", str2, "(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                sbU.append(view2.getClass());
                sbU.append(str);
                throw new IllegalStateException(sbU.toString());
            }
            try {
                if (!context.isRestricted() && (method = context.getClass().getMethod(str2, View.class)) != null) {
                    this.c = method;
                    this.d = context;
                    break;
                }
            } catch (NoSuchMethodException unused) {
            }
            context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
        }
        try {
            this.c.invoke(this.d, view);
        } catch (IllegalAccessException e) {
            e6.j("Could not execute non-public method for android:onClick", e);
        } catch (InvocationTargetException e2) {
            e6.j("Could not execute method for android:onClick", e2);
        }
    }
}
