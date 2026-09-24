package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c14 {
    public static c14 b;
    public final Context a;

    public c14(Context context) {
        this.a = context.getApplicationContext();
    }

    public static c14 a(Context context) {
        ly8.h(context);
        synchronized (c14.class) {
            if (b == null) {
                el9 el9Var = ls9.a;
                synchronized (ls9.class) {
                    if (ls9.c == null) {
                        ls9.c = context.getApplicationContext();
                    } else {
                        Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                    }
                }
                b = new c14(context);
            }
        }
        return b;
    }

    public static final boolean b(PackageInfo packageInfo, boolean z) {
        p69 p69Var;
        int i;
        if (packageInfo != null) {
            if (z && ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName))) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                z = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
            }
            try {
                p69 p69Var2 = z ? vr9.c : vr9.b;
                int i2 = Build.VERSION.SDK_INT;
                if (i2 < 28) {
                    Signature[] signatureArr = packageInfo.signatures;
                    byte[] byteArray = null;
                    if (signatureArr != null && signatureArr.length == 1) {
                        byteArray = signatureArr[0].toByteArray();
                    }
                    if (byteArray != null) {
                        z49 z49Var = y59.f;
                        Object[] objArr = {byteArray};
                        bb9.P(1, objArr);
                        p69Var = new p69(1, objArr);
                    } else {
                        z49 z49Var2 = y59.f;
                        p69Var = p69.p;
                    }
                } else {
                    if (i2 < 28) {
                        throw new IllegalStateException();
                    }
                    SigningInfo signingInfo = packageInfo.signingInfo;
                    if (signingInfo == null || signingInfo.hasMultipleSigners() || signingInfo.getSigningCertificateHistory() == null) {
                        z49 z49Var3 = y59.f;
                        p69Var = p69.p;
                    } else {
                        z49 z49Var4 = y59.f;
                        Object[] objArrCopyOf = new Object[4];
                        Signature[] signingCertificateHistory = signingInfo.getSigningCertificateHistory();
                        int length = signingCertificateHistory.length;
                        int i3 = 0;
                        int i4 = 0;
                        while (i3 < length) {
                            byte[] byteArray2 = signingCertificateHistory[i3].toByteArray();
                            byteArray2.getClass();
                            int length2 = objArrCopyOf.length;
                            int i5 = i4 + 1;
                            if (i5 < 0) {
                                throw new IllegalArgumentException("cannot store more than Integer.MAX_VALUE elements");
                            }
                            if (i5 <= length2) {
                                i = length2;
                            } else {
                                i = (length2 >> 1) + length2 + 1;
                                if (i < i5) {
                                    int iHighestOneBit = Integer.highestOneBit(i4);
                                    i = iHighestOneBit + iHighestOneBit;
                                }
                                if (i < 0) {
                                    i = Integer.MAX_VALUE;
                                }
                            }
                            if (i > length2) {
                                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i);
                            }
                            objArrCopyOf[i4] = byteArray2;
                            i3++;
                            i4 = i5;
                        }
                        p69Var = i4 == 0 ? p69.p : new p69(i4, objArrCopyOf);
                    }
                }
                if (p69Var.isEmpty()) {
                    throw new IllegalArgumentException("Unable to obtain package certificate history.");
                }
                y59 y59VarX = p69Var.x();
                int size = y59VarX.size();
                int i6 = 0;
                while (i6 < size) {
                    byte[] bArr = (byte[]) y59VarX.get(i6);
                    z49 z49VarB = p69Var2.listIterator(0);
                    do {
                        int i7 = i6 + 1;
                        if (!z49VarB.hasNext()) {
                            i6 = i7;
                        }
                    } while (!Arrays.equals(bArr, (byte[]) z49VarB.next()));
                    return true;
                }
            } catch (IllegalArgumentException unused) {
                Log.i("GoogleSignatureVerifier", "package info is not set correctly");
                if ((z ? c(packageInfo, vr9.a) : c(packageInfo, vr9.a[0])) == null) {
                    return false;
                }
            }
        }
        return false;
    }

    public static mo9 c(PackageInfo packageInfo, mo9... mo9VarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            pp9 pp9Var = new pp9(packageInfo.signatures[0].toByteArray());
            for (int i = 0; i < mo9VarArr.length; i++) {
                if (mo9VarArr[i].equals(pp9Var)) {
                    return mo9VarArr[i];
                }
            }
        }
        return null;
    }
}
