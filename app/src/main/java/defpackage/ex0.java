package defpackage;

import android.text.TextUtils;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ex0 extends md7 {
    public long a = 20;
    public int b = 0;

    /* JADX WARN: Code duplicated, block: B:10:0x001f  */
    public final zd7 a() {
        zd7 zd7VarC;
        int i = this.b;
        if ((i & 1) != 1 && (i & 2) == 2) {
            try {
                zd7VarC = c("su", "--mount-master");
                try {
                    if (!zd7VarC.isRoot()) {
                        zd7VarC = null;
                    }
                } catch (kn5 unused) {
                }
            } catch (kn5 unused2) {
            }
        } else {
            zd7VarC = null;
        }
        if (zd7VarC == null && (this.b & 1) != 1) {
            try {
                zd7VarC = c("su");
                zd7VarC = zd7VarC.isRoot() ? zd7VarC : null;
            } catch (kn5 unused3) {
            }
        }
        if (zd7VarC != null) {
            return zd7VarC;
        }
        if ((this.b & 1) != 1) {
            synchronized (ji8.class) {
                ji8.b = 0;
            }
        }
        return c("sh");
    }

    public final zd7 b(Process process) {
        try {
            zd7 zd7Var = new zd7(this, process);
            synchronized (k55.class) {
                if (k55.b) {
                    zd7[] zd7VarArr = k55.a;
                    synchronized (zd7VarArr) {
                        zd7VarArr[0] = zd7Var;
                    }
                }
            }
            return zd7Var;
        } catch (IOException e) {
            throw new kn5("Unable to create a shell!", e);
        }
    }

    public final zd7 c(String... strArr) {
        try {
            TextUtils.join(TokenAuthenticationScheme.SCHEME_DELIMITER, strArr);
            return b(Runtime.getRuntime().exec(strArr));
        } catch (IOException e) {
            throw new kn5("Unable to create a shell!", e);
        }
    }
}
