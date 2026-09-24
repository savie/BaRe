package defpackage;

import android.os.Looper;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c41 {
    public static ArrayList a() {
        try {
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                throw new IllegalThreadStateException("Method called from main thread");
            }
            SwiftApp.Companion companion = SwiftApp.d;
            InputStream inputStreamOpenRawResource = SwiftApp.Companion.c().getResources().openRawResource(R.raw.changelog);
            inputStreamOpenRawResource.getClass();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource, f51.a), 8192);
            try {
                f77 f77VarP = rs9.p(bufferedReader);
                boolean z = true;
                if (nq7.Z("5.1.0", "dev", true) || nq7.Z("5.1.0", "alpha", true) || nq7.Z("5.1.0", "beta", true) || nq7.Z("5.1.0", "rc", true)) {
                    z = false;
                }
                ArrayList arrayListB = zh8.B(f77VarP, z);
                bufferedReader.close();
                return arrayListB;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "ChangeLogHelper", String.valueOf(e.getMessage()), null, 4, null);
            return new ArrayList();
        }
    }
}
