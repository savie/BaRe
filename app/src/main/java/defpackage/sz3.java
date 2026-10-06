package defpackage;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.TokenData;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.jcraft.jsch.Argon2;
import com.nimbusds.jwt.proc.DefaultJWTClaimsVerifier;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class sz3 {
    public static final String[] a = {"com.google", "com.google.work", "cn.google"};
    public static final ComponentName b = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
    public static final u50 c = new u50("Auth", "GoogleAuthUtil");

    public static void a(Context context, String str) throws rz3, IOException {
        Context context2;
        ly8.g("Calling this from your main thread can lead to deadlock");
        f(context);
        Bundle bundle = new Bundle();
        g(context, bundle);
        je9.c(context);
        ((gn9) dn9.b.a.zza()).getClass();
        if (((Boolean) gn9.b.b()).booleanValue() && i(context)) {
            context2 = context;
            z39 z39Var = new z39(context2, null, z39.k, me.g, jz3.c);
            ka9 ka9Var = new ka9();
            ka9Var.b = str;
            by7 by7VarA = r19.a();
            by7VarA.c = new y53[]{zv1.i};
            by7VarA.a = new s79(z39Var, ka9Var);
            by7VarA.d = 1513;
            try {
                e(z39Var.b(1, by7VarA.a()), "clear token");
                return;
            } catch (re e) {
                c.g("%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s", "clear token", Log.getStackTraceString(e));
            }
        } else {
            context2 = context;
        }
        d(context2, b, new w00(12, str, bundle));
    }

    public static String b(Context context, Account account) throws rz3, IOException {
        Context context2;
        TokenData tokenDataC;
        u50 u50Var = c;
        Bundle bundle = new Bundle();
        h(account);
        ly8.g("Calling this from your main thread can lead to deadlock");
        ly8.f("oauth2:https://www.googleapis.com/auth/drive.file", "Scope cannot be empty or null.");
        h(account);
        f(context);
        Bundle bundle2 = new Bundle(bundle);
        g(context, bundle2);
        je9.c(context);
        ((gn9) dn9.b.a.zza()).getClass();
        if (((Boolean) gn9.b.b()).booleanValue() && i(context)) {
            context2 = context;
            z39 z39Var = new z39(context2, null, z39.k, me.g, jz3.c);
            ly8.f("oauth2:https://www.googleapis.com/auth/drive.file", "Scope cannot be null!");
            by7 by7VarA = r19.a();
            by7VarA.c = new y53[]{zv1.i};
            by7VarA.a = new w00(z39Var, account, bundle2);
            by7VarA.d = 1512;
            try {
                Bundle bundle3 = (Bundle) e(z39Var.b(1, by7VarA.a()), "token retrieval");
                if (bundle3 != null) {
                    tokenDataC = c(context2, bundle3);
                    return tokenDataC.b;
                }
                u50Var.g("Service call returned null.", new Object[0]);
                throw new IOException("Service unavailable.");
            } catch (re e) {
                u50Var.g("%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s", "token retrieval", Log.getStackTraceString(e));
                tokenDataC = (TokenData) d(context2, b, new ka(account, bundle2, context2));
            }
        } else {
            context2 = context;
        }
        tokenDataC = (TokenData) d(context2, b, new ka(account, bundle2, context2));
        return tokenDataC.b;
    }

    public static TokenData c(Context context, Bundle bundle) throws rz3, IOException {
        TokenData tokenData;
        String str;
        int i;
        int i2;
        String str2;
        ClassLoader classLoader = TokenData.class.getClassLoader();
        if (classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        Bundle bundle2 = bundle.getBundle("tokenDetails");
        if (bundle2 == null) {
            tokenData = null;
        } else {
            if (classLoader != null) {
                bundle2.setClassLoader(classLoader);
            }
            tokenData = (TokenData) bundle2.getParcelable("TokenData");
        }
        if (tokenData != null) {
            return tokenData;
        }
        String string = bundle.getString("Error");
        Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("userRecoveryPendingIntent");
        int[] iArrC = dj7.C(61);
        int length = iArrC.length;
        int i3 = 0;
        while (true) {
            str = "BAD_REQUEST";
            if (i3 < length) {
                i = iArrC[i3];
                switch (i) {
                    case 1:
                        str2 = "ClientLoginDisabled";
                        break;
                    case 2:
                        str2 = "SocketTimeout";
                        break;
                    case 3:
                        str2 = "Ok";
                        break;
                    case 4:
                        str2 = "UNKNOWN_ERR";
                        break;
                    case 5:
                        str2 = "NetworkError";
                        break;
                    case 6:
                        str2 = "ServiceUnavailable";
                        break;
                    case 7:
                        str2 = "InternalError";
                        break;
                    case 8:
                        str2 = "IllegalArgument";
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        str2 = "BadAuthentication";
                        break;
                    case 10:
                        str2 = "BAD_REQUEST";
                        break;
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        str2 = "EmptyConsumerPackageOrSig";
                        break;
                    case 12:
                        str2 = "InvalidSecondFactor";
                        break;
                    case 13:
                        str2 = "PostSignInFlowRequired";
                        break;
                    case 14:
                        str2 = "NeedsBrowser";
                        break;
                    case 15:
                        str2 = "Unknown";
                        break;
                    case Argon2.V10 /* 16 */:
                        str2 = "NotVerified";
                        break;
                    case 17:
                        str2 = "TermsNotAgreed";
                        break;
                    case 18:
                        str2 = "AccountDisabled";
                        break;
                    case Argon2.V13 /* 19 */:
                        str2 = "CaptchaRequired";
                        break;
                    case 20:
                        str2 = "AccountDeleted";
                        break;
                    case 21:
                        str2 = "ServiceDisabled";
                        break;
                    case 22:
                        str2 = "ChallengeRequired";
                        break;
                    case 23:
                        str2 = "NeedPermission";
                        break;
                    case 24:
                        str2 = "NeedRemoteConsent";
                        break;
                    case 25:
                        str2 = "INVALID_SCOPE";
                        break;
                    case 26:
                        str2 = "UserCancel";
                        break;
                    case 27:
                        str2 = "PermissionDenied";
                        break;
                    case 28:
                        str2 = "RESTRICTED_CLIENT";
                        break;
                    case 29:
                        str2 = "INVALID_AUDIENCE";
                        break;
                    case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                        str2 = "UNREGISTERED_ON_API_CONSOLE";
                        break;
                    case 31:
                        str2 = "ThirdPartyDeviceManagementRequired";
                        break;
                    case 32:
                        str2 = "DeviceManagementInternalError";
                        break;
                    case 33:
                        str2 = "DeviceManagementSyncDisabled";
                        break;
                    case 34:
                        str2 = "DeviceManagementAdminBlocked";
                        break;
                    case 35:
                        str2 = "DeviceManagementAdminPendingApproval";
                        break;
                    case 36:
                        str2 = "DeviceManagementStaleSyncRequired";
                        break;
                    case 37:
                        str2 = "DeviceManagementDeactivated";
                        break;
                    case 38:
                        str2 = "DeviceManagementScreenlockRequired";
                        break;
                    case 39:
                        str2 = "DeviceManagementRequired";
                        break;
                    case 40:
                        str2 = "DeviceManagementRequiredOrSyncDisabled";
                        break;
                    case 41:
                        str2 = "ALREADY_HAS_GMAIL";
                        break;
                    case 42:
                        str2 = "WeakPassword";
                        break;
                    case 43:
                        str2 = "BadRequest";
                        break;
                    case 44:
                        str2 = "BadUsername";
                        break;
                    case 45:
                        str2 = "DeletedGmail";
                        break;
                    case 46:
                        str2 = "ExistingUsername";
                        break;
                    case 47:
                        str2 = "LoginFail";
                        break;
                    case 48:
                        str2 = "NotLoggedIn";
                        break;
                    case 49:
                        str2 = "NoGmail";
                        break;
                    case 50:
                        str2 = "RequestDenied";
                        break;
                    case 51:
                        str2 = "ServerError";
                        break;
                    case 52:
                        str2 = "UsernameUnavailable";
                        break;
                    case 53:
                        str2 = "GPlusOther";
                        break;
                    case 54:
                        str2 = "GPlusNickname";
                        break;
                    case 55:
                        str2 = "GPlusInvalidChar";
                        break;
                    case 56:
                        str2 = "GPlusInterstitial";
                        break;
                    case 57:
                        str2 = "ProfileUpgradeError";
                        break;
                    case 58:
                        str2 = "AuthSecurityError";
                        break;
                    case 59:
                        str2 = "AuthBindingError";
                        break;
                    case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                        str2 = "AccountNotPresent";
                        break;
                    case 61:
                        str2 = "AppSuspended";
                        break;
                    default:
                        throw null;
                }
                if (!str2.equals(string)) {
                    i3++;
                }
            } else {
                i = 15;
            }
        }
        StringBuilder sb = new StringBuilder("[GoogleAuthUtil] error status:");
        switch (i) {
            case 1:
                str = "CLIENT_LOGIN_DISABLED";
                break;
            case 2:
                str = "SOCKET_TIMEOUT";
                break;
            case 3:
                str = "SUCCESS";
                break;
            case 4:
                str = "UNKNOWN_ERROR";
                break;
            case 5:
                str = "NETWORK_ERROR";
                break;
            case 6:
                str = "SERVICE_UNAVAILABLE";
                break;
            case 7:
                str = "INTNERNAL_ERROR";
                break;
            case 8:
                str = "ILLEGAL_ARGUMENT";
                break;
            case XmlPullParser.COMMENT /* 9 */:
                str = "BAD_AUTHENTICATION";
                break;
            case 10:
                str = "BAD_TOKEN_REQUEST";
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                str = "EMPTY_CONSUMER_PKG_OR_SIG";
                break;
            case 12:
                str = "NEEDS_2F";
                break;
            case 13:
                str = "NEEDS_POST_SIGN_IN_FLOW";
                break;
            case 14:
                str = "NEEDS_BROWSER";
                break;
            case 15:
                str = "UNKNOWN";
                break;
            case Argon2.V10 /* 16 */:
                str = "NOT_VERIFIED";
                break;
            case 17:
                str = "TERMS_NOT_AGREED";
                break;
            case 18:
                str = "ACCOUNT_DISABLED";
                break;
            case Argon2.V13 /* 19 */:
                str = "CAPTCHA";
                break;
            case 20:
                str = "ACCOUNT_DELETED";
                break;
            case 21:
                str = "SERVICE_DISABLED";
                break;
            case 22:
                str = "CHALLENGE_REQUIRED";
                break;
            case 23:
                str = "NEED_PERMISSION";
                break;
            case 24:
                str = "NEED_REMOTE_CONSENT";
                break;
            case 25:
                str = "INVALID_SCOPE";
                break;
            case 26:
                str = "USER_CANCEL";
                break;
            case 27:
                str = "PERMISSION_DENIED";
                break;
            case 28:
                str = "RESTRICTED_CLIENT";
                break;
            case 29:
                str = "INVALID_AUDIENCE";
                break;
            case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                str = "UNREGISTERED_ON_API_CONSOLE";
                break;
            case 31:
                str = "THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED";
                break;
            case 32:
                str = "DM_INTERNAL_ERROR";
                break;
            case 33:
                str = "DM_SYNC_DISABLED";
                break;
            case 34:
                str = "DM_ADMIN_BLOCKED";
                break;
            case 35:
                str = "DM_ADMIN_PENDING_APPROVAL";
                break;
            case 36:
                str = "DM_STALE_SYNC_REQUIRED";
                break;
            case 37:
                str = "DM_DEACTIVATED";
                break;
            case 38:
                str = "DM_SCREENLOCK_REQUIRED";
                break;
            case 39:
                str = "DM_REQUIRED";
                break;
            case 40:
                str = "DEVICE_MANAGEMENT_REQUIRED";
                break;
            case 41:
                str = "ALREADY_HAS_GMAIL";
                break;
            case 42:
                str = "BAD_PASSWORD";
                break;
            case 43:
                break;
            case 44:
                str = "BAD_USERNAME";
                break;
            case 45:
                str = "DELETED_GMAIL";
                break;
            case 46:
                str = "EXISTING_USERNAME";
                break;
            case 47:
                str = "LOGIN_FAIL";
                break;
            case 48:
                str = "NOT_LOGGED_IN";
                break;
            case 49:
                str = "NO_GMAIL";
                break;
            case 50:
                str = "REQUEST_DENIED";
                break;
            case 51:
                str = "SERVER_ERROR";
                break;
            case 52:
                str = "USERNAME_UNAVAILABLE";
                break;
            case 53:
                str = "GPLUS_OTHER";
                break;
            case 54:
                str = "GPLUS_NICKNAME";
                break;
            case 55:
                str = "GPLUS_INVALID_CHAR";
                break;
            case 56:
                str = "GPLUS_INTERSTITIAL";
                break;
            case 57:
                str = "GPLUS_PROFILE_ERROR";
                break;
            case 58:
                str = "AUTH_SECURITY_ERROR";
                break;
            case 59:
                str = "AUTH_BINDING_ERROR";
                break;
            case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                str = "ACCOUNT_NOT_PRESENT";
                break;
            case 61:
                str = "APP_SUSPENDED";
                break;
            default:
                str = "null";
                break;
        }
        sb.append(str);
        sb.append(" with method:getTokenWithDetails");
        u50 u50Var = c;
        u50Var.g(sb.toString(), new Object[0]);
        if (!dj7.a(9, i) && !dj7.a(19, i) && !dj7.a(23, i) && !dj7.a(24, i) && !dj7.a(14, i) && !dj7.a(26, i) && !dj7.a(40, i) && !dj7.a(32, i) && !dj7.a(33, i) && !dj7.a(34, i) && !dj7.a(35, i) && !dj7.a(36, i) && !dj7.a(37, i) && !dj7.a(39, i) && !dj7.a(31, i) && !dj7.a(38, i)) {
            if (!dj7.a(5, i) && !dj7.a(6, i) && !dj7.a(7, i) && !dj7.a(58, i) && !dj7.a(60, i)) {
                throw new rz3(string);
            }
            y5.m(string);
            return null;
        }
        je9.c(context);
        xm9.b.zza().getClass();
        if (!((Boolean) an9.a.b()).booleanValue()) {
            throw new UserRecoverableAuthException(1, intent, string);
        }
        if (pendingIntent != null && intent != null) {
            throw new UserRecoverableAuthException(2, intent, string);
        }
        Object obj = lz3.c;
        int i4 = u04.e;
        try {
            i2 = context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            i2 = 0;
        }
        if (i2 >= Integer.MAX_VALUE && pendingIntent == null) {
            u50Var.d("Recovery PendingIntent is missing on current Gms version: 2147483647 for method: getTokenWithDetails. It should always be present on or above Gms version 2147483647. This indicates a bug in Gms implementation.", new Object[0]);
        }
        if (intent == null) {
            u50Var.d(eq3.k("no recovery Intent found with status=", string, " for method=getTokenWithDetails. This shouldn't happen"), new Object[0]);
        }
        throw new UserRecoverableAuthException(1, intent, string);
    }

    public static Object d(Context context, ComponentName componentName, qp9 qp9Var) throws IOException {
        kt0 kt0Var = new kt0();
        tt9 tt9VarA = tt9.a(context);
        try {
            tt9VarA.getClass();
            try {
                if (!tt9VarA.b(new ur9(componentName), kt0Var, "GoogleAuthUtil").n()) {
                    y5.m("Could not bind to service.");
                    return null;
                }
                try {
                    Object objA = qp9Var.a(kt0Var.a());
                    tt9VarA.c(new ur9(componentName), kt0Var);
                    return objA;
                } catch (RemoteException | InterruptedException | TimeoutException e) {
                    Log.i("GoogleAuthUtil", "Error on service connection.", e);
                    throw new IOException("Error on service connection.", e);
                }
            } catch (Throwable th) {
                tt9VarA.c(new ur9(componentName), kt0Var);
                throw th;
            }
        } catch (SecurityException e2) {
            Log.w("GoogleAuthUtil", "SecurityException while bind to auth service: " + e2.getMessage());
            throw new IOException("SecurityException while binding to Auth service.", e2);
        }
    }

    public static Object e(Task task, String str) throws re, IOException {
        u50 u50Var = c;
        try {
            return Tasks.await(task);
        } catch (InterruptedException e) {
            String strK = eq3.k("Interrupted while waiting for the task of ", str, " to finish.");
            u50Var.g(strK, new Object[0]);
            throw new IOException(strK, e);
        } catch (CancellationException e2) {
            String strK2 = eq3.k("Canceled while waiting for the task of ", str, " to finish.");
            u50Var.g(strK2, new Object[0]);
            throw new IOException(strK2, e2);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof re) {
                throw ((re) cause);
            }
            String strK3 = eq3.k("Unable to get a result for ", str, " due to ExecutionException.");
            u50Var.g(strK3, new Object[0]);
            throw new IOException(strK3, e3);
        }
    }

    public static void f(Context context) throws rz3 {
        try {
            u04.a(context.getApplicationContext());
        } catch (GooglePlayServicesIncorrectManifestValueException | s04 e) {
            throw new rz3(e.getMessage(), e);
        } catch (t04 e2) {
            throw new r04(1, new Intent(e2.a), e2.getMessage());
        }
    }

    public static void g(Context context, Bundle bundle) {
        String str = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str);
        if (TextUtils.isEmpty(bundle.getString("androidPackageName"))) {
            bundle.putString("androidPackageName", str);
        }
        bundle.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
    }

    public static void h(Account account) {
        if (TextUtils.isEmpty(account.name)) {
            c6.f("Account name cannot be empty!");
            return;
        }
        for (int i = 0; i < 3; i++) {
            if (a[i].equals(account.type)) {
                return;
            }
        }
        c6.f("Account type not supported");
    }

    public static boolean i(Context context) {
        if (lz3.d.c(context, 17895000) != 0) {
            return false;
        }
        ((gn9) dn9.b.a.zza()).getClass();
        oh9 oh9VarK = ((wm9) gn9.a.b()).k();
        String str = context.getApplicationInfo().packageName;
        Iterator it = oh9VarK.iterator();
        while (it.hasNext()) {
            if (((String) it.next()).equals(str)) {
                return false;
            }
        }
        return true;
    }
}
