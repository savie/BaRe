package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.c;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uy1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ uy1(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                String str = (String) obj2;
                String str2 = (String) obj;
                sy1 sy1Var = ((zy1) obj3).h;
                sy1Var.getClass();
                try {
                    ((fh8) sy1Var.d.d).b(str, str2);
                    return;
                } catch (IllegalArgumentException e) {
                    Context context = sy1Var.a;
                    if (context != null && (context.getApplicationInfo().flags & 2) != 0) {
                        throw e;
                    }
                    Log.e("FirebaseCrashlytics", "Attempting to set custom attribute with null key, ignoring.", null);
                    return;
                }
            case 1:
                ViewGroup viewGroup = (ViewGroup) obj3;
                c cVar = (c) obj;
                viewGroup.getClass();
                viewGroup.endViewTransition((View) obj2);
                cVar.c.a.c(cVar);
                return;
            default:
                Process process = (Process) obj3;
                lh6 lh6Var = (lh6) obj2;
                StringBuilder sb = (StringBuilder) obj;
                try {
                    InputStream errorStream = process.getErrorStream();
                    errorStream.getClass();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f51.a), 8192);
                    try {
                        for (String str3 : (ws1) rs9.p(bufferedReader)) {
                            if (sb.length() > 0) {
                                sb.append('\n');
                            }
                            sb.append(str3);
                            break;
                        }
                        bufferedReader.close();
                        return;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(bufferedReader, th);
                            throw th2;
                        }
                    }
                } catch (Exception e2) {
                    lh6Var.a = e2;
                    process.destroy();
                    return;
                }
        }
    }
}
