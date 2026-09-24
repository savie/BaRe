package defpackage;

import android.content.Context;
import android.transition.AutoTransition;
import android.widget.TextView;
import com.google.android.material.appbar.AppBarLayout;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import org.swiftapps.swiftbackup.home.HomeActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nu2 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ nu2(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                km8 km8Var = (km8) this.b;
                nc8 nc8Var = (nc8) this.c;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.d;
                try {
                    hq3 hq3VarL = jb9.l((Context) km8Var.a);
                    if (hq3VarL == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    gq3 gq3Var = (gq3) ((ju2) hq3VarL.b);
                    synchronized (gq3Var.d) {
                        gq3Var.f = threadPoolExecutor;
                        break;
                    }
                    ((ju2) hq3VarL.b).c(new ou2(nc8Var, threadPoolExecutor));
                    return;
                } catch (Throwable th) {
                    nc8Var.P(th);
                    threadPoolExecutor.shutdown();
                    return;
                }
            case 1:
                HomeActivity homeActivity = (HomeActivity) this.b;
                TextView textView = (TextView) this.c;
                Boolean bool = (Boolean) this.d;
                Map map = HomeActivity.b0;
                AutoTransition autoTransition = new AutoTransition();
                autoTransition.setDuration(200L);
                il0.w((AppBarLayout) homeActivity.Z().c.a, autoTransition, new Class[0]);
                bool.getClass();
                sz8.d0(textView, bool.booleanValue());
                return;
            default:
                Process process = (Process) this.b;
                lh6 lh6Var = (lh6) this.c;
                xs xsVar = (xs) this.d;
                try {
                    InputStream inputStream = process.getInputStream();
                    inputStream.getClass();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, f51.a), 8192);
                    try {
                        Iterator it = ((ws1) rs9.p(bufferedReader)).iterator();
                        while (it.hasNext()) {
                            xsVar.invoke(it.next());
                        }
                        bufferedReader.close();
                        return;
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            rs9.c(bufferedReader, th2);
                            throw th3;
                        }
                    }
                } catch (Exception e) {
                    lh6Var.a = e;
                    process.destroy();
                    return;
                }
        }
    }
}
