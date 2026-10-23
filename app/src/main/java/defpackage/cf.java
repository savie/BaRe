package defpackage;

import android.app.Application;
import android.app.Notification;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Icon;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.StrictMode;
import android.text.PrecomputedText;
import android.view.DisplayCutout;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import android.widget.TextView;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class cf {
    public static String a;
    public static int b;
    public static Boolean c;

    public static Handler a(Looper looper) {
        return Handler.createAsync(looper);
    }

    public static Handler b(Looper looper) {
        return Handler.createAsync(looper);
    }

    public static String[] c(DecimalFormatSymbols decimalFormatSymbols) {
        return decimalFormatSymbols.getDigitStrings();
    }

    public static long d(PackageInfo packageInfo) {
        return packageInfo.getLongVersionCode();
    }

    public static String e() throws Throwable {
        BufferedReader bufferedReader;
        if (a == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                a = Application.getProcessName();
            } else {
                int iMyPid = b;
                if (iMyPid == 0) {
                    iMyPid = Process.myPid();
                    b = iMyPid;
                }
                String strTrim = null;
                strTrim = null;
                strTrim = null;
                BufferedReader bufferedReader2 = null;
                strTrim = null;
                try {
                    if (iMyPid > 0) {
                        try {
                            StringBuilder sb = new StringBuilder(String.valueOf(iMyPid).length() + 14);
                            sb.append("/proc/");
                            sb.append(iMyPid);
                            sb.append("/cmdline");
                            String string = sb.toString();
                            StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                            try {
                                bufferedReader = new BufferedReader(new FileReader(string));
                                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                                try {
                                    String line = bufferedReader.readLine();
                                    ly8.h(line);
                                    strTrim = line.trim();
                                    bufferedReader.close();
                                } catch (IOException unused) {
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    a = strTrim;
                                    return a;
                                } catch (Throwable th) {
                                    th = th;
                                    bufferedReader2 = bufferedReader;
                                    if (bufferedReader2 != null) {
                                        try {
                                            bufferedReader2.close();
                                        } catch (IOException unused2) {
                                        }
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                                throw th2;
                            }
                        } catch (IOException unused3) {
                            bufferedReader = null;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                } catch (IOException unused4) {
                }
                a = strTrim;
            }
        }
        return a;
    }

    public static int f(Object obj) {
        return ((Icon) obj).getResId();
    }

    public static String g(Object obj) {
        return ((Icon) obj).getResPackage();
    }

    public static int h(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetBottom();
    }

    public static int i(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetLeft();
    }

    public static int j(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetRight();
    }

    public static int k(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetTop();
    }

    public static PrecomputedText.Params l(tp tpVar) {
        return tpVar.getTextMetricsParams();
    }

    public static int m(Object obj) {
        return ((Icon) obj).getType();
    }

    public static Uri n(Object obj) {
        return ((Icon) obj).getUri();
    }

    public static ClassLoader o() {
        return WebView.getWebViewClassLoader();
    }

    public static void p(TextView textView, int i) {
        textView.setFirstBaselineToTopHeight(i);
    }

    public static void q(Notification.Action.Builder builder) {
        builder.setSemanticAction(0);
    }

    public static boolean r(ViewConfiguration viewConfiguration) {
        return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
    }

    public static boolean s() {
        Boolean boolValueOf = c;
        if (boolValueOf == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                boolValueOf = Boolean.valueOf(Process.isIsolated());
            } else {
                try {
                    Object objInvoke = Process.class.getDeclaredMethod("isIsolated", new Class[0]).invoke(null, new Object[0]);
                    Object[] objArr = new Object[0];
                    if (objInvoke == null) {
                        throw new fx5(vm4.F("expected a non-null reference", objArr));
                    }
                    boolValueOf = (Boolean) objInvoke;
                } catch (ReflectiveOperationException unused) {
                    boolValueOf = Boolean.FALSE;
                }
            }
            c = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }
}
