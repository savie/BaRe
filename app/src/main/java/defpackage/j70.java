package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.jcraft.jsch.Session;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j70 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ j70(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((bt3) obj).invoke();
                break;
            case 1:
                ((CarouselLayoutManager) obj).B0();
                break;
            case 2:
                CredentialProviderPlayServicesImpl.onClearCredential$lambda$0$0((t22) obj);
                break;
            case 3:
                Executor executor = (Executor) obj;
                try {
                    zd7 zd7VarJ = k55.j();
                    executor.getClass();
                    executor.execute(new j55(zd7VarJ));
                } catch (kn5 unused) {
                    return;
                }
                break;
            case 4:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new is((Context) obj, 7));
                break;
            case 5:
                ((Session) obj).t();
                break;
            default:
                iv7 iv7Var = ((lv7) obj).a;
                ViewParent parent = iv7Var.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(iv7Var);
                }
                break;
        }
    }
}
