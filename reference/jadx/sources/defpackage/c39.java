package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c39 extends az3 {
    public final GoogleSignInOptions y;

    public c39(Context context, Looper looper, z91 z91Var, GoogleSignInOptions googleSignInOptions, g19 g19Var, g19 g19Var2) {
        x04 x04Var;
        super(context, looper, 91, z91Var, g19Var, g19Var2, 0);
        Set<Scope> set = z91Var.b;
        if (googleSignInOptions != null) {
            x04Var = new x04();
            x04Var.a = new HashSet();
            x04Var.h = new HashMap();
            x04Var.a = new HashSet(googleSignInOptions.b);
            x04Var.b = googleSignInOptions.e;
            x04Var.c = googleSignInOptions.f;
            x04Var.d = googleSignInOptions.d;
            x04Var.e = googleSignInOptions.k;
            x04Var.f = googleSignInOptions.c;
            x04Var.g = googleSignInOptions.n;
            x04Var.h = GoogleSignInOptions.q(googleSignInOptions.p);
            x04Var.i = googleSignInOptions.q;
        } else {
            x04Var = new x04();
            x04Var.a = new HashSet();
            x04Var.h = new HashMap();
        }
        x04Var.i = w29.a();
        if (!set.isEmpty()) {
            for (Scope scope : set) {
                HashSet hashSet = x04Var.a;
                hashSet.add(scope);
                hashSet.addAll(Arrays.asList(new Scope[0]));
            }
        }
        HashSet hashSet2 = x04Var.a;
        if (hashSet2.contains(GoogleSignInOptions.y)) {
            Scope scope2 = GoogleSignInOptions.x;
            if (hashSet2.contains(scope2)) {
                hashSet2.remove(scope2);
            }
        }
        if (x04Var.d && (x04Var.f == null || !hashSet2.isEmpty())) {
            hashSet2.add(GoogleSignInOptions.t);
        }
        this.y = new GoogleSignInOptions(3, new ArrayList(hashSet2), x04Var.f, x04Var.d, x04Var.b, x04Var.c, x04Var.e, x04Var.g, x04Var.h, x04Var.i);
    }

    @Override // defpackage.az3, defpackage.ne
    public final int f() {
        return 12451000;
    }

    @Override // defpackage.az3
    public final IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof m39 ? (m39) iInterfaceQueryLocalInterface : new m39(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService", 2);
    }

    @Override // defpackage.az3
    public final String q() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // defpackage.az3
    public final String r() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }
}
