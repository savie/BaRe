package defpackage;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Build;
import android.os.Looper;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.RevocationBoundService;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.tasks.TaskCompletionSource;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r29 extends b19 {
    public final /* synthetic */ int b = 1;
    public final Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r29(u29 u29Var, TaskCompletionSource taskCompletionSource) {
        super("com.google.android.gms.auth.api.identity.internal.IBeginSignInCallback", 1);
        this.c = taskCompletionSource;
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
    @Override // defpackage.b19
    public final boolean n(int i, Parcel parcel, Parcel parcel2) {
        BasePendingResult basePendingResult;
        BasePendingResult basePendingResult2;
        String strD;
        int i2 = this.b;
        Object obj = this.c;
        switch (i2) {
            case 0:
                if (i != 1) {
                    return false;
                }
                Status status = (Status) z29.a(parcel, Status.CREATOR);
                xp0 xp0Var = (xp0) z29.a(parcel, xp0.CREATOR);
                z29.c(parcel);
                ly8.O(status, xp0Var, (TaskCompletionSource) obj);
                return true;
            default:
                RevocationBoundService revocationBoundService = (RevocationBoundService) obj;
                if (i != 1) {
                    if (i != 2) {
                        return false;
                    }
                    q();
                    l39.k(revocationBoundService).l();
                    return true;
                }
                q();
                ao7 ao7VarA = ao7.a(revocationBoundService);
                GoogleSignInAccount googleSignInAccountB = ao7VarA.b();
                GoogleSignInOptions googleSignInOptionsN = GoogleSignInOptions.r;
                if (googleSignInAccountB != null) {
                    String strD2 = ao7VarA.d("defaultGoogleSignInAccount");
                    if (TextUtils.isEmpty(strD2) || (strD = ao7VarA.d(ao7.f("googleSignInOptions", strD2))) == null) {
                        googleSignInOptionsN = null;
                    } else {
                        try {
                            googleSignInOptionsN = GoogleSignInOptions.n(strD);
                        } catch (JSONException unused) {
                            googleSignInOptionsN = null;
                        }
                    }
                }
                GoogleSignInOptions googleSignInOptions = googleSignInOptionsN;
                ly8.h(googleSignInOptions);
                w04 w04Var = new w04(revocationBoundService, null, c80.a, googleSignInOptions, new jz3(new lk(), Looper.getMainLooper()));
                Context context = w04Var.a;
                i19 i19Var = w04Var.h;
                if (googleSignInAccountB == null) {
                    boolean z = w04Var.c() == 3;
                    k39.a.a("Signing out", new Object[0]);
                    k39.b(context);
                    if (z) {
                        an7 an7Var = new an7(i19Var);
                        an7Var.e(Status.e);
                        basePendingResult = an7Var;
                    } else {
                        g39 g39Var = new g39(i19Var);
                        i19Var.a(g39Var);
                        basePendingResult = g39Var;
                    }
                    b05 b05Var = new b05();
                    TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                    basePendingResult.a(new z09(basePendingResult, taskCompletionSource, b05Var));
                    taskCompletionSource.getTask();
                    return true;
                }
                boolean z2 = w04Var.c() == 3;
                k39.a.a("Revoking access", new Object[0]);
                String strD3 = ao7.a(context).d("refreshToken");
                k39.b(context);
                if (!z2) {
                    i39 i39Var = new i39(i19Var);
                    i19Var.a(i39Var);
                    basePendingResult2 = i39Var;
                } else if (strD3 == null) {
                    u50 u50Var = x29.c;
                    Status status2 = new Status(4, null, null, null);
                    ly8.b("Status code must not be SUCCESS", !status2.n());
                    b29 b29Var = new b29(status2);
                    b29Var.e(status2);
                    basePendingResult2 = b29Var;
                } else {
                    x29 x29Var = new x29(strD3);
                    new Thread(x29Var).start();
                    basePendingResult2 = x29Var.b;
                }
                b05 b05Var2 = new b05();
                TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
                basePendingResult2.a(new z09(basePendingResult2, taskCompletionSource2, b05Var2));
                taskCompletionSource2.getTask();
                return true;
        }
    }

    public void q() {
        RevocationBoundService revocationBoundService = (RevocationBoundService) this.c;
        int callingUid = Binder.getCallingUid();
        be4 be4VarA = kw8.a(revocationBoundService);
        be4VarA.getClass();
        try {
            AppOpsManager appOpsManager = (AppOpsManager) be4VarA.b.getSystemService("appops");
            if (appOpsManager == null) {
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            }
            appOpsManager.checkPackage(callingUid, "com.google.android.gms");
            try {
                PackageInfo packageInfo = revocationBoundService.getPackageManager().getPackageInfo("com.google.android.gms", 64);
                c14 c14VarA = c14.a(revocationBoundService);
                c14VarA.getClass();
                if (packageInfo != null) {
                    if (c14.b(packageInfo, false)) {
                        return;
                    }
                    if (c14.b(packageInfo, true)) {
                        Context context = c14VarA.a;
                        try {
                            if (!u04.c) {
                                PackageInfo packageInfo2 = kw8.a(context).b.getPackageManager().getPackageInfo("com.google.android.gms", Build.VERSION.SDK_INT >= 28 ? 134217792 : 64);
                                c14.a(context);
                                if (packageInfo2 == null || c14.b(packageInfo2, false) || !c14.b(packageInfo2, true)) {
                                    u04.b = false;
                                } else {
                                    u04.b = true;
                                }
                            }
                        } catch (PackageManager.NameNotFoundException e) {
                            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
                        } finally {
                            u04.c = true;
                        }
                        if (u04.b || !"user".equals(Build.TYPE)) {
                            return;
                        } else {
                            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
                        }
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
                if (Log.isLoggable("UidVerifier", 3)) {
                    Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
                }
            }
            int callingUid2 = Binder.getCallingUid();
            StringBuilder sb = new StringBuilder(String.valueOf(callingUid2).length() + 41);
            sb.append("Calling UID ");
            sb.append(callingUid2);
            sb.append(" is not Google Play services.");
            throw new SecurityException(sb.toString());
        } catch (SecurityException unused2) {
        }
    }

    public r29(RevocationBoundService revocationBoundService) {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService", 1);
        this.c = revocationBoundService;
    }
}
