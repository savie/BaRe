package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.u;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.api.Status;
import defpackage.ao7;
import defpackage.c6;
import defpackage.dz4;
import defpackage.ez4;
import defpackage.fz4;
import defpackage.gz4;
import defpackage.i19;
import defpackage.l0;
import defpackage.l39;
import defpackage.lj3;
import defpackage.m22;
import defpackage.n81;
import defpackage.ph6;
import defpackage.rb;
import defpackage.y29;
import defpackage.yj7;
import defpackage.yl8;
import java.lang.reflect.Modifier;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SignInHubActivity extends u {
    public static boolean f = false;
    public boolean a = false;
    public SignInConfiguration b;
    public boolean c;
    public int d;
    public Intent e;

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void n() {
        yl8 viewModelStore = getViewModelStore();
        fz4 fz4Var = gz4.d;
        viewModelStore.getClass();
        m22 m22Var = m22.b;
        m22Var.getClass();
        lj3 lj3Var = new lj3(viewModelStore, fz4Var, m22Var);
        n81 n81VarA = ph6.a(gz4.class);
        String strB = n81VarA.b();
        if (strB == null) {
            c6.f("Local and anonymous classes can not be ViewModels");
            return;
        }
        gz4 gz4Var = (gz4) lj3Var.b(n81VarA, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strB));
        rb rbVar = new rb(this, 26);
        boolean z = gz4Var.c;
        yj7 yj7Var = gz4Var.b;
        if (z) {
            l0.e("Called while creating a loader");
            return;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            l0.e("initLoader must be called on the main thread");
            return;
        }
        dz4 dz4Var = (dz4) yj7Var.a(0);
        if (dz4Var == null) {
            try {
                gz4Var.c = true;
                Set set = i19.b;
                synchronized (set) {
                }
                y29 y29Var = new y29(this, set);
                if (y29.class.isMemberClass() && !Modifier.isStatic(y29.class.getModifiers())) {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + y29Var);
                }
                dz4 dz4Var2 = new dz4(y29Var);
                yj7Var.b(0, dz4Var2);
                gz4Var.c = false;
                ez4 ez4Var = new ez4(dz4Var2.l, rbVar);
                dz4Var2.e(this, ez4Var);
                ez4 ez4Var2 = dz4Var2.n;
                if (ez4Var2 != null) {
                    dz4Var2.j(ez4Var2);
                }
                dz4Var2.m = this;
                dz4Var2.n = ez4Var;
            } catch (Throwable th) {
                gz4Var.c = false;
                throw th;
            }
        } else {
            ez4 ez4Var3 = new ez4(dz4Var.l, rbVar);
            dz4Var.e(this, ez4Var3);
            ez4 ez4Var4 = dz4Var.n;
            if (ez4Var4 != null) {
                dz4Var.j(ez4Var4);
            }
            dz4Var.m = this;
            dz4Var.n = ez4Var3;
        }
        f = false;
    }

    public final void o(int i) {
        Status status = new Status(i, null, null, null);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f = false;
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        GoogleSignInAccount googleSignInAccount;
        if (this.a) {
            return;
        }
        setResult(0);
        if (i != 40962) {
            return;
        }
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
            if (signInAccount != null && (googleSignInAccount = signInAccount.b) != null) {
                l39 l39VarK = l39.k(this);
                GoogleSignInOptions googleSignInOptions = this.b.b;
                synchronized (l39VarK) {
                    ((ao7) l39VarK.b).c(googleSignInAccount, googleSignInOptions);
                    l39VarK.c = googleSignInAccount;
                }
                intent.removeExtra("signInAccount");
                intent.putExtra("googleSignInAccount", googleSignInAccount);
                this.c = true;
                this.d = i2;
                this.e = intent;
                n();
                return;
            }
            if (intent.hasExtra("errorCode")) {
                int intExtra = intent.getIntExtra("errorCode", 8);
                if (intExtra == 13) {
                    intExtra = 12501;
                }
                o(intExtra);
                return;
            }
        }
        o(8);
    }

    @Override // androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        if (action == null) {
            Log.e("AuthSignInClient", "Null action");
            o(12500);
            return;
        }
        if (action.equals("com.google.android.gms.auth.NO_IMPL")) {
            Log.e("AuthSignInClient", "Action not implemented");
            o(12500);
            return;
        }
        if (!action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !action.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            Log.e("AuthSignInClient", "Unknown action: ".concat(String.valueOf(intent.getAction())));
            finish();
            return;
        }
        Bundle bundleExtra = intent.getBundleExtra("config");
        if (bundleExtra == null) {
            Log.e("AuthSignInClient", "Activity started with no configuration.");
            setResult(0);
            finish();
            return;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) bundleExtra.getParcelable("config");
        if (signInConfiguration == null) {
            Log.e("AuthSignInClient", "Activity started with invalid configuration.");
            setResult(0);
            finish();
            return;
        }
        this.b = signInConfiguration;
        if (bundle != null) {
            boolean z = bundle.getBoolean("signingInGoogleApiClients");
            this.c = z;
            if (z) {
                this.d = bundle.getInt("signInResultCode");
                Intent intent2 = (Intent) bundle.getParcelable("signInResultData");
                if (intent2 != null) {
                    this.e = intent2;
                    n();
                    return;
                } else {
                    Log.e("AuthSignInClient", "Sign in result data cannot be null");
                    setResult(0);
                    finish();
                    return;
                }
            }
            return;
        }
        if (f) {
            setResult(0);
            o(12502);
            return;
        }
        f = true;
        Intent intent3 = new Intent(action);
        if (action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
            intent3.setPackage("com.google.android.gms");
        } else {
            intent3.setPackage(getPackageName());
        }
        intent3.putExtra("config", this.b);
        try {
            startActivityForResult(intent3, 40962);
        } catch (ActivityNotFoundException unused) {
            this.a = true;
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            o(17);
        }
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        f = false;
    }

    @Override // defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.c);
        if (this.c) {
            bundle.putInt("signInResultCode", this.d);
            bundle.putParcelable("signInResultData", this.e);
        }
    }
}
