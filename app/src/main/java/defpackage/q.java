package defpackage;

import android.util.JsonReader;
import android.util.Log;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.microsoft.identity.common.java.exception.ClientException;
import java.io.IOException;
import java.util.ConcurrentModificationException;
import java.util.LinkedHashSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q implements er5, e02, mo1, OnFailureListener {
    public final /* synthetic */ int a;

    public /* synthetic */ q(int i) {
        this.a = i;
    }

    public static /* synthetic */ void a() {
        throw new ConcurrentModificationException();
    }

    public static /* synthetic */ void c(Object obj, Object obj2, String str) {
        throw new lj4(str + obj + ((Object) " at path ") + obj2);
    }

    public static /* synthetic */ void d(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void e(String str, Object obj, Exception exc) {
        throw new p1(str + obj, exc);
    }

    public static /* synthetic */ void f(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3).toString());
    }

    public static /* synthetic */ void g(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalStateException((str + obj + obj2 + obj3 + obj4).toString());
    }

    public static /* synthetic */ void h(String str, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + obj4 + obj5);
    }

    public static /* synthetic */ void i(String str, String str2, Throwable th) throws ClientException {
        throw new ClientException(str, str2, th);
    }

    public static /* synthetic */ void j() {
        throw new mn5();
    }

    public static /* synthetic */ void k(String str, Object obj, Object obj2, Object obj3) throws IOException {
        throw new IOException(str + obj + obj2 + obj3);
    }

    @Override // defpackage.e02
    public Object b(JsonReader jsonReader) {
        return f02.a(jsonReader);
    }

    @Override // defpackage.er5
    public Object construct() {
        switch (this.a) {
            case 3:
                return new ConcurrentHashMap();
            case 4:
                return new LinkedHashSet();
            default:
                return new iw4(true);
        }
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        return (ScheduledExecutorService) ExecutorsRegistrar.c.get();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        Log.e("FirebaseCrashlytics", "Error fetching settings.", exc);
    }
}
