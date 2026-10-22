package defpackage;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.security.advancedprotection.AdvancedProtectionManager;
import com.google.android.play.core.integrity.model.IntegrityErrorCode;
import com.google.android.play.core.integrity.model.StandardIntegrityErrorCode;
import java.lang.ref.WeakReference;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class cr {
    public static WeakReference a = null;
    public static boolean b = false;
    public static boolean c = true;
    public static boolean d = true;
    public static mt3 e;
    public static mt3 f;

    public static ar a(int i) {
        Object next;
        z3 z3Var = (z3) ar.getEntries();
        z3Var.getClass();
        w3 w3Var = new w3(z3Var);
        do {
            if (!w3Var.hasNext()) {
                next = null;
                break;
            }
            next = w3Var.next();
        } while (((ar) next).getCode() != i);
        ar arVar = (ar) next;
        if (arVar != null) {
            return arVar;
        }
        vr6.e$default(vr6.INSTANCE, "AppInstallHelper", fz5.j(i, "Unknown status code received = "), null, 4, null);
        return ar.UNKNOWN;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0060  */
    /* JADX WARN: Code duplicated, block: B:34:0x0084  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00bc A[FALL_THROUGH] */
    public static void b(il0 il0Var, int i, int i2, Intent intent) {
        Integer numValueOf;
        Integer numValueOf2;
        ar arVar;
        zq zqVar;
        ar arVar2;
        String strH;
        if (i != 4895) {
            if (i != 47963) {
                return;
            }
            boolean z = b;
            g00 g00Var = g00.a;
            boolean zCanRequestPackageInstalls = g00.r().canRequestPackageInstalls();
            if (z && zCanRequestPackageInstalls) {
                a = new WeakReference(il0Var);
                if (c) {
                    il0Var.M(R.string.processing);
                    return;
                }
                return;
            }
            d(il0Var);
            ar arVar3 = ar.STATUS_FAILURE_ABORTED;
            boolean zF = f();
            arVar3.getClass();
            g(pe4.w(arVar3, null, zF), arVar3, il0Var);
            return;
        }
        if (intent == null) {
            numValueOf = null;
        } else {
            Intent intent2 = intent.hasExtra("android.content.pm.extra.STATUS") ? intent : null;
            if (intent2 != null) {
                numValueOf = Integer.valueOf(intent2.getIntExtra("android.content.pm.extra.STATUS", ar.UNKNOWN.getCode()));
            } else {
                numValueOf = null;
            }
        }
        String stringExtra = intent != null ? intent.getStringExtra("android.content.pm.extra.STATUS_MESSAGE") : null;
        if (intent == null) {
            numValueOf2 = null;
        } else {
            if (!intent.hasExtra("android.intent.extra.INSTALL_RESULT")) {
                intent = null;
            }
            if (intent != null) {
                numValueOf2 = Integer.valueOf(intent.getIntExtra("android.intent.extra.INSTALL_RESULT", -110));
            } else {
                numValueOf2 = null;
            }
        }
        if (numValueOf != null) {
            zqVar = new zq(a(numValueOf.intValue()), stringExtra);
        } else if (numValueOf2 != null) {
            int iIntValue = numValueOf2.intValue();
            if (iIntValue != 1) {
                switch (iIntValue) {
                    case -118:
                    case -117:
                    case -116:
                        arVar2 = ar.STATUS_FAILURE_INVALID;
                        break;
                    case -115:
                        arVar2 = ar.STATUS_FAILURE_ABORTED;
                        break;
                    default:
                        switch (iIntValue) {
                            case -113:
                            case -111:
                                arVar2 = ar.STATUS_FAILURE_INCOMPATIBLE;
                                break;
                            case -112:
                                arVar2 = ar.STATUS_FAILURE_CONFLICT;
                                break;
                            default:
                                switch (iIntValue) {
                                    default:
                                        switch (iIntValue) {
                                            case -29:
                                            case -28:
                                            case -17:
                                            case -16:
                                            case -14:
                                            case -12:
                                            case -9:
                                                arVar2 = ar.STATUS_FAILURE_INCOMPATIBLE;
                                                break;
                                            case -27:
                                            case -26:
                                            case -25:
                                            case -24:
                                            case -23:
                                            case -15:
                                            case IntegrityErrorCode.NONCE_TOO_LONG /* -11 */:
                                            case -3:
                                            case -2:
                                                break;
                                            case -22:
                                            case -21:
                                                arVar2 = ar.STATUS_FAILURE_ABORTED;
                                                break;
                                            case -20:
                                            case StandardIntegrityErrorCode.INTEGRITY_TOKEN_PROVIDER_INVALID /* -19 */:
                                            case StandardIntegrityErrorCode.CLIENT_TRANSIENT_ERROR /* -18 */:
                                            case IntegrityErrorCode.PLAY_STORE_ACCOUNT_NOT_FOUND /* -4 */:
                                                arVar2 = ar.STATUS_FAILURE_STORAGE;
                                                break;
                                            case IntegrityErrorCode.NONCE_IS_NOT_BASE64 /* -13 */:
                                            case IntegrityErrorCode.NONCE_TOO_SHORT /* -10 */:
                                            case -8:
                                            case -7:
                                            case -6:
                                            case -5:
                                            case -1:
                                                arVar2 = ar.STATUS_FAILURE_CONFLICT;
                                                break;
                                            default:
                                                arVar2 = ar.STATUS_FAILURE;
                                                break;
                                        }
                                    case -109:
                                    case -108:
                                    case -107:
                                    case -106:
                                    case -105:
                                    case -104:
                                    case -103:
                                    case -102:
                                    case -101:
                                    case -100:
                                        arVar2 = ar.STATUS_FAILURE_INVALID;
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                arVar2 = ar.STATUS_SUCCESS;
            }
            int iIntValue2 = numValueOf2.intValue();
            if (iIntValue2 != 1) {
                switch (iIntValue2) {
                    case -118:
                        strH = "INSTALL_FAILED_BAD_SIGNATURE";
                        break;
                    case -117:
                        strH = "INSTALL_FAILED_BAD_DEX_METADATA";
                        break;
                    case -116:
                        strH = "INSTALL_FAILED_SESSION_INVALID";
                        break;
                    case -115:
                        strH = "INSTALL_FAILED_ABORTED";
                        break;
                    default:
                        switch (iIntValue2) {
                            case -113:
                                strH = "INSTALL_FAILED_NO_MATCHING_ABIS";
                                break;
                            case -112:
                                strH = "INSTALL_FAILED_DUPLICATE_PERMISSION";
                                break;
                            case -111:
                                strH = "INSTALL_FAILED_USER_RESTRICTED";
                                break;
                            case -110:
                                strH = "INSTALL_FAILED_INTERNAL_ERROR";
                                break;
                            case -109:
                                strH = "INSTALL_PARSE_FAILED_MANIFEST_EMPTY";
                                break;
                            case -108:
                                strH = "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED";
                                break;
                            case -107:
                                strH = "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID";
                                break;
                            case -106:
                                strH = "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME";
                                break;
                            case -105:
                                strH = "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING";
                                break;
                            case -104:
                                strH = "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES";
                                break;
                            case -103:
                                strH = "INSTALL_PARSE_FAILED_NO_CERTIFICATES";
                                break;
                            case -102:
                                strH = "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION";
                                break;
                            case -101:
                                strH = "INSTALL_PARSE_FAILED_BAD_MANIFEST";
                                break;
                            case -100:
                                strH = "INSTALL_PARSE_FAILED_NOT_APK";
                                break;
                            default:
                                switch (iIntValue2) {
                                    case -29:
                                        strH = "INSTALL_FAILED_DEPRECATED_SDK_VERSION";
                                        break;
                                    case -28:
                                        strH = "INSTALL_FAILED_MISSING_SPLIT";
                                        break;
                                    case -27:
                                        strH = "INSTALL_FAILED_SANDBOX_VERSION_DOWNGRADE";
                                        break;
                                    case -26:
                                        strH = "INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE";
                                        break;
                                    case -25:
                                        strH = "INSTALL_FAILED_VERSION_DOWNGRADE";
                                        break;
                                    case -24:
                                        strH = "INSTALL_FAILED_UID_CHANGED";
                                        break;
                                    case -23:
                                        strH = "INSTALL_FAILED_PACKAGE_CHANGED";
                                        break;
                                    case -22:
                                        strH = "INSTALL_FAILED_VERIFICATION_FAILURE";
                                        break;
                                    case -21:
                                        strH = "INSTALL_FAILED_VERIFICATION_TIMEOUT";
                                        break;
                                    case -20:
                                        strH = "INSTALL_FAILED_MEDIA_UNAVAILABLE";
                                        break;
                                    case StandardIntegrityErrorCode.INTEGRITY_TOKEN_PROVIDER_INVALID /* -19 */:
                                        strH = "INSTALL_FAILED_INVALID_INSTALL_LOCATION";
                                        break;
                                    case StandardIntegrityErrorCode.CLIENT_TRANSIENT_ERROR /* -18 */:
                                        strH = "INSTALL_FAILED_CONTAINER_ERROR";
                                        break;
                                    case -17:
                                        strH = "INSTALL_FAILED_MISSING_FEATURE";
                                        break;
                                    case -16:
                                        strH = "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE";
                                        break;
                                    case -15:
                                        strH = "INSTALL_FAILED_TEST_ONLY";
                                        break;
                                    case -14:
                                        strH = "INSTALL_FAILED_NEWER_SDK";
                                        break;
                                    case IntegrityErrorCode.NONCE_IS_NOT_BASE64 /* -13 */:
                                        strH = "INSTALL_FAILED_CONFLICTING_PROVIDER";
                                        break;
                                    case -12:
                                        strH = "INSTALL_FAILED_OLDER_SDK";
                                        break;
                                    case IntegrityErrorCode.NONCE_TOO_LONG /* -11 */:
                                        strH = "INSTALL_FAILED_DEXOPT";
                                        break;
                                    case IntegrityErrorCode.NONCE_TOO_SHORT /* -10 */:
                                        strH = "INSTALL_FAILED_REPLACE_COULDNT_DELETE";
                                        break;
                                    case -9:
                                        strH = "INSTALL_FAILED_MISSING_SHARED_LIBRARY";
                                        break;
                                    case -8:
                                        strH = "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE";
                                        break;
                                    case -7:
                                        strH = "INSTALL_FAILED_UPDATE_INCOMPATIBLE";
                                        break;
                                    case -6:
                                        strH = "INSTALL_FAILED_NO_SHARED_USER";
                                        break;
                                    case -5:
                                        strH = "INSTALL_FAILED_DUPLICATE_PACKAGE";
                                        break;
                                    case IntegrityErrorCode.PLAY_STORE_ACCOUNT_NOT_FOUND /* -4 */:
                                        strH = "INSTALL_FAILED_INSUFFICIENT_STORAGE";
                                        break;
                                    case -3:
                                        strH = "INSTALL_FAILED_INVALID_URI";
                                        break;
                                    case -2:
                                        strH = "INSTALL_FAILED_INVALID_APK";
                                        break;
                                    case -1:
                                        strH = "INSTALL_FAILED_ALREADY_EXISTS";
                                        break;
                                    default:
                                        strH = xs1.h(iIntValue2, "Install failed (", ")");
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                strH = "INSTALL_SUCCEEDED";
            }
            zqVar = new zq(arVar2, strH);
        } else {
            if (i2 != -1) {
                arVar = i2 != 0 ? ar.STATUS_FAILURE : ar.STATUS_FAILURE_ABORTED;
            } else {
                arVar = ar.STATUS_SUCCESS;
            }
            zqVar = new zq(arVar, null);
        }
        d(il0Var);
        int[] iArr = br.a;
        ar arVar4 = zqVar.a;
        if (iArr[arVar4.ordinal()] == 2) {
            vr6.i$default(vr6.INSTANCE, "AppInstallHelper", "Manual install successful", null, 4, null);
            String string = il0Var.getString(R.string.restore_successful);
            string.getClass();
            zn4 zn4Var = zn4.a;
            zn4.e(new cv(14, il0Var, string));
            mt3 mt3VarI = i();
            if (mt3VarI != null) {
                mt3VarI.invoke(arVar4);
                return;
            }
            return;
        }
        cw5 cw5VarW = pe4.w(arVar4, zqVar.b, f());
        String str = cw5VarW.b;
        vr6.e$default(vr6.INSTANCE, "AppInstallHelper", "Manual install failed with status=" + arVar4 + ", message=" + str, null, 4, null);
        if (d) {
            h(il0Var, str, arVar4);
        } else {
            g(cw5VarW, arVar4, il0Var);
        }
    }

    public static void c(Context context, il0 il0Var, Intent intent) {
        if (il0Var == null) {
            WeakReference weakReference = a;
            il0Var = weakReference != null ? (il0) weakReference.get() : null;
        }
        ar arVarA = a(intent.getIntExtra("android.content.pm.extra.STATUS", ar.UNKNOWN.getCode()));
        String stringExtra = intent.getStringExtra("android.content.pm.extra.STATUS_MESSAGE");
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "AppInstallHelper", "handlePackageInstallerResult: PackageInstaller status = " + arVarA + ", message=" + stringExtra, null, 4, null);
        int i = br.a[arVarA.ordinal()];
        if (i == 1) {
            b = true;
            Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.INTENT");
            if (intent2 == null) {
                vr6.e$default(vr6Var, "AppInstallHelper", "Confirmation intent is null!", null, 4, null);
                if (il0Var != null) {
                    d(il0Var);
                }
                String string = context.getString(R.string.error);
                string.getClass();
                String string2 = context.getString(R.string.unknown_error_occured);
                string2.getClass();
                g(new cw5(string, string2), ar.STATUS_FAILURE, context);
                return;
            }
            try {
                if (il0Var != null) {
                    il0Var.startActivityForResult(intent2, 47963);
                    return;
                } else {
                    intent2.addFlags(268435456);
                    context.startActivity(intent2);
                    return;
                }
            } catch (ActivityNotFoundException e2) {
                vr6.e$default(vr6.INSTANCE, "AppInstallHelper", yc9.g0(e2), null, 4, null);
                if (il0Var != null) {
                    d(il0Var);
                }
                String string3 = context.getString(R.string.error);
                string3.getClass();
                g(new cw5(string3, "System did not handle installation!"), ar.STATUS_FAILURE, context);
                return;
            }
        }
        if (i == 2) {
            vr6.i$default(vr6Var, "AppInstallHelper", "Manual install successful", null, 4, null);
            if (il0Var != null) {
                d(il0Var);
            }
            String string4 = context.getString(R.string.restore_successful);
            string4.getClass();
            zn4 zn4Var = zn4.a;
            zn4.e(new cv(14, context, string4));
            mt3 mt3VarI = i();
            if (mt3VarI != null) {
                mt3VarI.invoke(arVarA);
                return;
            }
            return;
        }
        cw5 cw5VarW = pe4.w(arVarA, stringExtra, f());
        String str = cw5VarW.b;
        vr6.e$default(vr6Var, "AppInstallHelper", "Manual install failed with status=" + arVarA + ", message=" + str, null, 4, null);
        if (il0Var != null) {
            d(il0Var);
        }
        if (!d || il0Var == null) {
            g(cw5VarW, arVarA, context);
        } else {
            h(il0Var, str, arVarA);
        }
    }

    public static void d(il0 il0Var) {
        if (c) {
            il0Var.H();
        }
    }

    public static void e(il0 il0Var, List list, boolean z, boolean z2, hf hfVar, jf jfVar) {
        il0Var.getClass();
        vr6.d$default(vr6.INSTANCE, "AppInstallHelper", "install() called with \n".concat(el1.Y0(list, "\n", null, null, null, 62)), null, 4, null);
        a = new WeakReference(il0Var);
        c = z;
        d = z2;
        e = hfVar;
        f = jfVar;
        b = true;
        if (list.size() > 0) {
            if (c) {
                il0Var.M(R.string.processing);
            }
            zn4 zn4Var = zn4.a;
            zn4.d(new xq(0, list, il0Var));
            return;
        }
        String string = il0Var.getString(R.string.error);
        string.getClass();
        String string2 = il0Var.getString(R.string.unknown_error_occured);
        string2.getClass();
        g(new cw5(string, string2), ar.STATUS_FAILURE, il0Var);
    }

    public static boolean f() {
        Object bn6Var;
        if (Build.VERSION.SDK_INT < 36) {
            return false;
        }
        try {
            SwiftApp.Companion companion = SwiftApp.d;
            AdvancedProtectionManager advancedProtectionManager = (AdvancedProtectionManager) SwiftApp.Companion.c().getSystemService(AdvancedProtectionManager.class);
            if (advancedProtectionManager == null) {
                return false;
            }
            bn6Var = Boolean.valueOf(advancedProtectionManager.isAdvancedProtectionEnabled());
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Object obj = Boolean.FALSE;
        if (bn6Var instanceof bn6) {
            bn6Var = obj;
        }
        return ((Boolean) bn6Var).booleanValue();
    }

    public static void g(cw5 cw5Var, ar arVar, Context context) {
        mt3 mt3Var = e;
        mt3 mt3VarI = i();
        if (mt3Var != null) {
            mt3Var.invoke(cw5Var);
            return;
        }
        String str = cw5Var.b;
        context.getClass();
        zn4 zn4Var = zn4.a;
        dj7.y(context, str);
        if (mt3VarI != null) {
            mt3VarI.invoke(arVar);
        }
    }

    public static void h(il0 il0Var, String str, final ar arVar) {
        final mt3 mt3VarI = i();
        s35 s35Var = new s35(il0Var, R.style.M3AlertDialogTheme, new hv1(il0Var, R.style.M3AlertDialogTheme), null);
        ra raVar = (ra) s35Var.b;
        raVar.d = "APK install failed";
        raVar.f = str;
        s35Var.s(R.string.ok, null);
        raVar.n = new DialogInterface.OnDismissListener() { // from class: wq
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                mt3 mt3Var = mt3VarI;
                if (mt3Var != null) {
                    mt3Var.invoke(arVar);
                }
            }
        };
        if (s35Var.m() != null || mt3VarI == null) {
            return;
        }
        mt3VarI.invoke(arVar);
    }

    public static mt3 i() {
        mt3 mt3Var = f;
        a = null;
        b = false;
        c = true;
        d = true;
        e = null;
        f = null;
        return mt3Var;
    }
}
