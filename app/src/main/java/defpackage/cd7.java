package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.jcraft.jsch.SftpATTRS;
import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cd7 {
    public final ig1 a;
    public final dd7 b;
    public final Context c;
    public final String d;
    public final gv7 e;
    public final Set f;

    public cd7(Context context, String str, Set set, ig1 ig1Var, dd7 dd7Var) {
        context.getClass();
        set.getClass();
        zc7 zc7Var = new zc7(context, str);
        this.a = ig1Var;
        this.b = dd7Var;
        this.c = context;
        this.d = str;
        this.e = new gv7(zc7Var);
        this.f = set == fd7.a ? null : new LinkedHashSet(set);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0066  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Object obj, kv1 kv1Var) throws FileNotFoundException {
        bd7 bd7Var;
        if (kv1Var instanceof bd7) {
            bd7Var = (bd7) kv1Var;
            int i = bd7Var.d;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                bd7Var.d = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                bd7Var = new bd7(this, kv1Var);
            }
        } else {
            bd7Var = new bd7(this, kv1Var);
        }
        Object objInvoke = bd7Var.b;
        int i2 = bd7Var.d;
        boolean z = true;
        if (i2 == 0) {
            lg7.H(objInvoke);
            bd7Var.a = this;
            bd7Var.d = 1;
            objInvoke = this.a.invoke(obj, bd7Var);
            yx1 yx1Var = yx1.a;
            if (objInvoke == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            this = bd7Var.a;
            lg7.H(objInvoke);
        }
        if (!((Boolean) objInvoke).booleanValue()) {
            return Boolean.FALSE;
        }
        Set set = this.f;
        gv7 gv7Var = this.e;
        if (set == null) {
            Map<String, ?> all = ((SharedPreferences) gv7Var.getValue()).getAll();
            all.getClass();
            if (all.isEmpty()) {
                z = false;
            }
        } else {
            SharedPreferences sharedPreferences = (SharedPreferences) gv7Var.getValue();
            if (set.isEmpty()) {
                z = false;
            } else {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    if (sharedPreferences.contains((String) it.next())) {
                    }
                }
                z = false;
            }
        }
        return Boolean.valueOf(z);
    }
}
