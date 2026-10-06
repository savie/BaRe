package defpackage;

import android.graphics.Canvas;
import android.os.Build;
import android.text.Layout;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.webkit.WebView;
import android.widget.TextView;
import com.google.android.gms.common.api.Status;
import com.jcraft.jsch.SftpATTRS;
import java.io.File;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zv1 implements cw1 {
    public static final byte[] a = {-96, 0, 0, 3, 8};
    public static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final byte[] c = {83, 66, 65, 49};
    public static final byte[] d = {83, 65, 69, 49};
    public static final byte[] e = {83, 65, 73, 49};
    public static final byte[] f = {83, 65, 70, 49};
    public static final y53 g = new y53("account_capability_api", 1);
    public static final y53 h = new y53("google_auth_service_accounts", 2);
    public static final y53 i = new y53("google_auth_service_token", 3);
    public static int j;
    public static volatile om5 k;
    public static volatile km5 l;

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(r76 r76Var, w93 w93Var, kv1 kv1Var) {
        p76 p76Var;
        if (kv1Var instanceof p76) {
            p76Var = (p76) kv1Var;
            int i2 = p76Var.c;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                p76Var.c = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                p76Var = new p76(kv1Var);
            }
        } else {
            p76Var = new p76(kv1Var);
        }
        Object obj = p76Var.b;
        int i3 = p76Var.c;
        try {
            if (i3 == 0) {
                lg7.H(obj);
                if (p76Var.getContext().get(nh4.b) != r76Var) {
                    l0.e("awaitClose() can only be invoked from the producer context");
                    return null;
                }
                p76Var.a = w93Var;
                p76Var.c = 1;
                o21 o21Var = new o21(1, nc8.D(p76Var));
                o21Var.u();
                r76Var.f.v(new q76(o21Var));
                Object objS = o21Var.s();
                yx1 yx1Var = yx1.a;
                if (objS == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i3 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                w93Var = p76Var.a;
                lg7.H(obj);
            }
            w93Var.invoke();
            return be8.a;
        } catch (Throwable th) {
            w93Var.invoke();
            throw th;
        }
    }

    public static void b(String str) {
        if (str.length() <= 10000) {
            return;
        }
        y5.f(str.substring(0, 30), "...", "Number string too large: ");
    }

    public static void c(CharSequence charSequence, sc6 sc6Var, g88 g88Var, StringBuilder sb) {
        Objects.requireNonNull(charSequence, "Char sequence");
        int i2 = sc6Var.c;
        int i3 = sc6Var.b;
        int i4 = i2;
        while (i2 < i3) {
            char cCharAt = charSequence.charAt(i2);
            if ((g88Var != null && g88Var.a(cCharAt)) || k(cCharAt)) {
                break;
            }
            i4++;
            sb.append(cCharAt);
            i2++;
        }
        sc6Var.b(i4);
    }

    public static void d() {
        int i2 = j;
        if (i2 > 0) {
            j = i2 - 1;
        }
    }

    public static InvocationHandler e() {
        ClassLoader classLoader;
        if (Build.VERSION.SDK_INT >= 28) {
            classLoader = cf.o();
        } else {
            try {
                Method declaredMethod = WebView.class.getDeclaredMethod("getFactory", null);
                declaredMethod.setAccessible(true);
                classLoader = declaredMethod.invoke(null, null).getClass().getClassLoader();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
                y5.k(e2);
                return null;
            }
        }
        return (InvocationHandler) Class.forName("org.chromium.support_lib_glue.SupportLibReflectionUtil", false, classLoader).getDeclaredMethod("createWebViewProviderFactory", null).invoke(null, null);
    }

    public static void f(StringBuilder sb, dp0 dp0Var, boolean z) {
        sb.append(dp0Var.a);
        String str = dp0Var.b;
        if (str != null) {
            sb.append('=');
            if (!z) {
                for (int i2 = 0; i2 < str.length() && !z; i2++) {
                    z = " ;,:@()<>\\\"/[]?={}\t".indexOf(str.charAt(i2)) >= 0;
                }
            }
            if (z) {
                sb.append('\"');
            }
            for (int i3 = 0; i3 < str.length(); i3++) {
                char cCharAt = str.charAt(i3);
                if ("\"\\".indexOf(cCharAt) >= 0) {
                    sb.append('\\');
                }
                sb.append(cCharAt);
            }
            if (z) {
                sb.append('\"');
            }
        }
    }

    public static boolean k(char c2) {
        return c2 == ' ' || c2 == '\t' || c2 == '\r' || c2 == '\n';
    }

    public static float l(float f2, float f3, float f4) {
        return (f4 * f3) + ((1.0f - f4) * f2);
    }

    public static void m(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public static BigDecimal n(String str) {
        b(str);
        BigDecimal bigDecimal = new BigDecimal(str);
        if (Math.abs(bigDecimal.scale()) < 10000) {
            return bigDecimal;
        }
        throw new NumberFormatException("Number has unsupported scale: ".concat(str));
    }

    public static String o(CharSequence charSequence, sc6 sc6Var, g88 g88Var) {
        Objects.requireNonNull(charSequence, "Char sequence");
        StringBuilder sb = new StringBuilder();
        c(charSequence, sc6Var, g88Var, sb);
        return sb.toString();
    }

    public static String p(String str, dx5 dx5Var, g88 g88Var) {
        StringBuilder sb = new StringBuilder();
        loop0: while (true) {
            boolean z = false;
            while (true) {
                if (dx5Var.a()) {
                    break loop0;
                }
                char cCharAt = str.charAt(dx5Var.c);
                if (g88Var.a(cCharAt)) {
                    break loop0;
                }
                if (k(cCharAt)) {
                    int i2 = dx5Var.c;
                    int i3 = dx5Var.b;
                    int i4 = i2;
                    while (i2 < i3 && k(str.charAt(i2))) {
                        i4++;
                        i2++;
                    }
                    dx5Var.b(i4);
                    z = true;
                }
            }
            if (z && sb.length() > 0) {
                sb.append(' ');
            }
            c(str, dx5Var, g88Var, sb);
        }
        return sb.toString();
    }

    public static final void q(o21 o21Var, jv1 jv1Var, boolean z) {
        Object objT = o21Var.t();
        Throwable thF = o21Var.f(objT);
        Object bn6Var = thF != null ? new bn6(thF) : o21Var.h(objT);
        if (!z) {
            jv1Var.resumeWith(bn6Var);
            return;
        }
        jv1Var.getClass();
        ym2 ym2Var = (ym2) jv1Var;
        kv1 kv1Var = ym2Var.e;
        Object obj = ym2Var.k;
        ox1 context = kv1Var.getContext();
        Object objJ = pe4.J(context, obj);
        vd8 vd8VarV = objJ != pe4.i ? w13.v(kv1Var, context, objJ) : null;
        try {
            kv1Var.resumeWith(bn6Var);
        } finally {
            if (vd8VarV == null || vd8VarV.c0()) {
                pe4.y(context, objJ);
            }
        }
    }

    public static String r(String str) {
        if (uq7.V(str, "/storage/emulated/", false)) {
            String strQ0 = nq7.q0(str, "/storage/emulated/");
            String strC0 = nq7.C0(strQ0, "/", strQ0);
            if (strC0.length() != 0) {
                String strZ0 = nq7.z0(strQ0, "/", "");
                String path = new File(strZ0.length() == 0 ? "/data/media/".concat(strC0) : dj7.l("/data/media/", strC0, "/", strZ0)).getPath();
                path.getClass();
                return path;
            }
        } else if (uq7.V(str, "/storage/emulated/", false) && !uq7.V(str, "/storage/emulated/0/", false)) {
            String path2 = new File(uq7.T(str, "/storage/emulated/", "/data/media/")).getPath();
            path2.getClass();
            return path2;
        }
        return str;
    }

    public static int s(Canvas canvas, CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            m18[] m18VarArr = (m18[]) spanned.getSpans(0, spanned.length(), m18.class);
            TextView textView = null;
            Layout layout = (m18VarArr == null || m18VarArr.length <= 0) ? null : (Layout) m18VarArr[0].a.get();
            if (layout != null) {
                return layout.getWidth();
            }
            y18[] y18VarArr = (y18[]) spanned.getSpans(0, spanned.length(), y18.class);
            if (y18VarArr != null && y18VarArr.length > 0) {
                textView = (TextView) y18VarArr[0].a.get();
            }
            if (textView != null) {
                return (textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight();
            }
        }
        return canvas.getWidth();
    }

    public static Status t(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return new Status(17499, null, null, null);
        }
        String[] strArrSplit = str.split(":", 2);
        strArrSplit[0] = strArrSplit[0].trim();
        if (strArrSplit.length > 1 && (str2 = strArrSplit[1]) != null) {
            strArrSplit[1] = str2.trim();
        }
        List listAsList = Arrays.asList(strArrSplit);
        return listAsList.size() > 1 ? u((String) listAsList.get(0), (String) listAsList.get(1)) : u((String) listAsList.get(0), null);
    }

    public static Status u(String str, String str2) {
        int i2;
        str.getClass();
        switch (str) {
            case "USER_CANCELLED":
                i2 = 18001;
                break;
            case "INVALID_RECIPIENT_EMAIL":
                i2 = 17033;
                break;
            case "WEB_CONTEXT_ALREADY_PRESENTED":
                i2 = 17057;
                break;
            case "INTERNAL_SUCCESS_SIGN_OUT":
                i2 = 17091;
                break;
            case "INVALID_IDP_RESPONSE":
            case "INVALID_LOGIN_CREDENTIALS":
            case "INVALID_PENDING_TOKEN":
                i2 = 17004;
                break;
            case "DYNAMIC_LINK_NOT_ACTIVATED":
                i2 = 17068;
                break;
            case "QUOTA_EXCEEDED":
                i2 = 17052;
                break;
            case "WEB_NETWORK_REQUEST_FAILED":
                i2 = 17061;
                break;
            case "INVALID_RECAPTCHA_VERSION":
                i2 = 17206;
                break;
            case "RECAPTCHA_NOT_ENABLED":
                i2 = 17200;
                break;
            case "EXPIRED_OOB_CODE":
                i2 = 17029;
                break;
            case "UNAUTHORIZED_DOMAIN":
                i2 = 17038;
                break;
            case "INVALID_OOB_CODE":
                i2 = 17030;
                break;
            case "MISSING_EMAIL":
                i2 = 17034;
                break;
            case "INVALID_CODE":
                i2 = 17044;
                break;
            case "INVALID_HOSTING_LINK_DOMAIN":
                i2 = 17214;
                break;
            case "TOKEN_EXPIRED":
                i2 = 17021;
                break;
            case "INVALID_TENANT_ID":
                i2 = 17079;
                break;
            case "ALTERNATE_CLIENT_IDENTIFIER_REQUIRED":
                i2 = 18002;
                break;
            case "INVALID_SESSION_INFO":
                i2 = 17046;
                break;
            case "SECOND_FACTOR_EXISTS":
                i2 = 17087;
                break;
            case "INVALID_EMAIL":
            case "INVALID_IDENTIFIER":
                i2 = 17008;
                break;
            case "ADMIN_ONLY_OPERATION":
                i2 = 17085;
                break;
            case "MISSING_OR_INVALID_NONCE":
                i2 = 17094;
                break;
            case "INVALID_CERT_HASH":
                i2 = 17064;
                break;
            case "NO_SUCH_PROVIDER":
                i2 = 17016;
                break;
            case "MFA_ENROLLMENT_NOT_FOUND":
                i2 = 17084;
                break;
            case "MISSING_PASSWORD":
                i2 = 17035;
                break;
            case "CREDENTIAL_TOO_OLD_LOGIN_AGAIN":
                i2 = 17014;
                break;
            case "TIMEOUT":
            case "<<Network Error>>":
                i2 = 17020;
                break;
            case "INVALID_REQ_TYPE":
                i2 = 17207;
                break;
            case "INVALID_RECAPTCHA_ACTION":
                i2 = 17203;
                break;
            case "OPERATION_NOT_ALLOWED":
            case "PASSWORD_LOGIN_DISABLED":
                i2 = 17006;
                break;
            case "WEB_INTERNAL_ERROR":
                i2 = 17062;
                break;
            case "SECOND_FACTOR_LIMIT_EXCEEDED":
                i2 = 17088;
                break;
            case "MISSING_MFA_ENROLLMENT_ID":
                i2 = 17082;
                break;
            case "USER_NOT_FOUND":
            case "EMAIL_NOT_FOUND":
                i2 = 17011;
                break;
            case "CAPTCHA_CHECK_FAILED":
                i2 = 17056;
                break;
            case "WEAK_PASSWORD":
                i2 = 17026;
                break;
            case "UNSUPPORTED_FIRST_FACTOR":
                i2 = 17089;
                break;
            case "INVALID_SENDER":
                i2 = 17032;
                break;
            case "MISSING_PHONE_NUMBER":
                i2 = 17041;
                break;
            case "INVALID_DYNAMIC_LINK_DOMAIN":
                i2 = 17074;
                break;
            case "MISSING_MFA_PENDING_CREDENTIAL":
                i2 = 17081;
                break;
            case "UNSUPPORTED_PASSTHROUGH_OPERATION":
                i2 = 17095;
                break;
            case "EMAIL_EXISTS":
                i2 = 17007;
                break;
            case "INVALID_ID_TOKEN":
                i2 = 17017;
                break;
            case "WEB_STORAGE_UNSUPPORTED":
                i2 = 17065;
                break;
            case "MISSING_CLIENT_TYPE":
                i2 = 17204;
                break;
            case "MISSING_RECAPTCHA_VERSION":
                i2 = 17205;
                break;
            case "UNVERIFIED_EMAIL":
                i2 = 17086;
                break;
            case "REJECTED_CREDENTIAL":
                i2 = 17075;
                break;
            case "INVALID_MFA_PENDING_CREDENTIAL":
                i2 = 17083;
                break;
            case "INVALID_VERIFICATION_PROOF":
                i2 = 17049;
                break;
            case "INVALID_PROVIDER_ID":
                i2 = 17071;
                break;
            case "CREDENTIAL_MISMATCH":
                i2 = 17002;
                break;
            case "WEB_CONTEXT_CANCELED":
                i2 = 17058;
                break;
            case "REQUIRES_SECOND_FACTOR_AUTH":
                i2 = 17078;
                break;
            case "MISSING_CLIENT_IDENTIFIER":
                i2 = 17093;
                break;
            case "INVALID_MESSAGE_PAYLOAD":
                i2 = 17031;
                break;
            case "RESET_PASSWORD_EXCEED_LIMIT":
            case "TOO_MANY_ATTEMPTS_TRY_LATER":
                i2 = 17010;
                break;
            case "INVALID_CUSTOM_TOKEN":
                i2 = 17000;
                break;
            case "INVALID_PASSWORD":
                i2 = 17009;
                break;
            case "INVALID_RECAPTCHA_TOKEN":
                i2 = 17202;
                break;
            case "SESSION_EXPIRED":
                i2 = 17051;
                break;
            case "MISSING_CODE":
                i2 = 17043;
                break;
            case "FEDERATED_USER_ID_ALREADY_LINKED":
                i2 = 17025;
                break;
            case "MISSING_RECAPTCHA_TOKEN":
                i2 = 17201;
                break;
            case "USER_DISABLED":
                i2 = 17005;
                break;
            case "INVALID_PHONE_NUMBER":
                i2 = 17042;
                break;
            case "INVALID_APP_CREDENTIAL":
                i2 = 17028;
                break;
            case "MISSING_CONTINUE_URI":
                i2 = 17040;
                break;
            case "MISSING_SESSION_INFO":
                i2 = 17045;
                break;
            case "EMAIL_CHANGE_NEEDS_VERIFICATION":
                i2 = 17090;
                break;
            case "UNSUPPORTED_TENANT_OPERATION":
                i2 = 17073;
                break;
            default:
                i2 = 17499;
                break;
        }
        if (i2 == 17499) {
            return str2 != null ? new Status(i2, dj7.k(str, ":", str2), null, null) : new Status(i2, str, null, null);
        }
        return new Status(i2, str2, null, null);
    }

    public static /* synthetic */ boolean v(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, ks9 ks9Var, Object obj, Object obj2) {
        while (!atomicReferenceFieldUpdater.compareAndSet(ks9Var, obj, obj2)) {
            if (atomicReferenceFieldUpdater.get(ks9Var) != obj && atomicReferenceFieldUpdater.get(ks9Var) != obj) {
                return false;
            }
        }
        return true;
    }

    public abstract void g(mc7 mc7Var, float f2, float f3);

    public abstract int h(View view, ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract int i();

    public abstract ViewPropertyAnimator j(View view, int i2);
}
