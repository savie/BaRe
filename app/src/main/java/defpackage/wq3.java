package defpackage;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.RemoteException;
import java.io.BufferedWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wq3 {
    public static final char[] e = {'x', 'm', 'l', 'n', 's'};
    public static final char[] f = {'&', 'l', 't', ';'};
    public static final char[] g = {'&', 'g', 't', ';'};
    public static final char[] h = {'&', 'q', 'u', 'o', 't', ';'};
    public static final char[] i = {'&', 'a', 'p', 'o', 's', ';'};
    public static final char[] j = {'&', 'a', 'm', 'p', ';'};
    public int a;
    public Object b;
    public Object c;
    public Object d;

    public static xv0 b(Throwable th) {
        ds8 ds8Var;
        while (th instanceof InvocationTargetException) {
            InvocationTargetException invocationTargetException = (InvocationTargetException) th;
            if (invocationTargetException.getCause() == null) {
                break;
            }
            th = invocationTargetException.getCause();
            th.getClass();
        }
        if (th instanceof if8) {
            ds8Var = ds8.SHIZUKU_UID_UNSUPPORTED;
        } else if (th instanceof SecurityException) {
            ds8Var = ds8.SECURITY_REJECTED;
        } else if (th instanceof DeadObjectException) {
            ds8Var = ds8.BINDER_DEAD;
        } else if (th instanceof RemoteException) {
            ds8Var = ds8.REMOTE_FAILURE;
        } else {
            ds8Var = ((th instanceof ReflectiveOperationException) || (th instanceof LinkageError)) ? ds8.API_INCOMPATIBLE : ds8.REMOTE_FAILURE;
        }
        return new xv0(ds8Var, th);
    }

    public void a(String str) {
        char[] cArr;
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\"') {
                cArr = h;
            } else if (cCharAt == '<') {
                cArr = f;
            } else if (cCharAt == '>') {
                cArr = g;
            } else if (cCharAt != '&') {
                cArr = cCharAt != '\'' ? null : i;
            } else {
                cArr = j;
            }
            if (cArr != null) {
                ln5 ln5Var = (ln5) this.b;
                BufferedWriter bufferedWriter = (BufferedWriter) this.d;
                bufferedWriter.append((CharSequence) ln5Var.b);
                ((StringBuilder) ln5Var.b).setLength(0);
                bufferedWriter.write(cArr);
            } else {
                d(cCharAt);
            }
        }
    }

    public Object c() {
        int i2 = this.a;
        qt3 qt3Var = (qt3) this.c;
        if (i2 >= 33) {
            return qt3Var.invoke(3, f76.d((xr8) ((bt3) this.b).invoke()));
        }
        try {
            return qt3Var.invoke(2, null);
        } catch (NoSuchMethodException unused) {
            return qt3Var.invoke(3, new Bundle());
        }
    }

    public void d(char c) {
        ln5 ln5Var = (ln5) this.b;
        BufferedWriter bufferedWriter = (BufferedWriter) this.d;
        bufferedWriter.append((CharSequence) ln5Var.b);
        ((StringBuilder) ln5Var.b).setLength(0);
        bufferedWriter.write(c);
    }

    public void e(String str) {
        ln5 ln5Var = (ln5) this.b;
        BufferedWriter bufferedWriter = (BufferedWriter) this.d;
        bufferedWriter.append((CharSequence) ln5Var.b);
        ((StringBuilder) ln5Var.b).setLength(0);
        bufferedWriter.write(str);
    }

    public void f(Throwable th) {
        boolean z = th instanceof TimeoutException;
        ud9 ud9Var = (ud9) this.d;
        if (z) {
            ud9Var.G(102, 28, le9.r);
            ta9.i("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", th);
        } else {
            ud9Var.G(95, 28, le9.r);
            ta9.i("BillingClientTesting", "An error occurred while retrieving billing override.", th);
        }
        ((Runnable) this.c).run();
    }
}
