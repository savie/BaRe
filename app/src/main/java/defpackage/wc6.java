package defpackage;

import android.util.Log;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wc6 implements w83 {
    public static final Charset c = Charset.forName("UTF-8");
    public final File a;
    public vc6 b;

    public wc6(File file) {
        this.a = file;
    }

    @Override // defpackage.w83
    public final void a() {
        jm1.h(this.b, "There was a problem closing the Crashlytics log file.");
        this.b = null;
    }

    public final void b() {
        File file = this.a;
        if (this.b == null) {
            try {
                this.b = new vc6(file);
            } catch (IOException e) {
                Log.e("FirebaseCrashlytics", "Could not open log file: " + file, e);
            }
        }
    }

    @Override // defpackage.w83
    public final String e() {
        byte[] bArrG = g();
        if (bArrG != null) {
            return new String(bArrG, c);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a  */
    @Override // defpackage.w83
    public final byte[] g() {
        yh3 yh3Var;
        if (this.a.exists()) {
            b();
            vc6 vc6Var = this.b;
            if (vc6Var == null) {
                yh3Var = null;
            } else {
                int[] iArr = {0};
                byte[] bArr = new byte[vc6Var.u()];
                try {
                    this.b.g(new ix0(7, bArr, iArr));
                } catch (IOException e) {
                    Log.e("FirebaseCrashlytics", "A problem occurred while reading the Crashlytics log file.", e);
                }
                yh3Var = new yh3(bArr, iArr[0]);
            }
        } else {
            yh3Var = null;
        }
        if (yh3Var == null) {
            return null;
        }
        int i = yh3Var.b;
        byte[] bArr2 = new byte[i];
        System.arraycopy(yh3Var.a, 0, bArr2, 0, i);
        return bArr2;
    }

    @Override // defpackage.w83
    public final void i() {
        a();
        this.a.delete();
    }

    @Override // defpackage.w83
    public final void n(long j, String str) {
        b();
        if (this.b == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            if (str.length() > 16384) {
                str = "...".concat(str.substring(str.length() - 16384));
            }
            this.b.a(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str.replaceAll("\r", TokenAuthenticationScheme.SCHEME_DELIMITER).replaceAll("\n", TokenAuthenticationScheme.SCHEME_DELIMITER)).getBytes(c));
            while (!this.b.h() && this.b.u() > 65536) {
                this.b.n();
            }
        } catch (IOException e) {
            Log.e("FirebaseCrashlytics", "There was a problem writing to the Crashlytics log.", e);
        }
    }
}
