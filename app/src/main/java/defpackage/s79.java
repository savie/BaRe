package defpackage;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.ResultReceiver;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.ProxyBillingActivityV2;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.android.recaptcha.RecaptchaTasksClient;
import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.Objects;
import java.util.WeakHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s79 implements ee, SuccessContinuation, gl2, it5, w6, r8, v49, OnFailureListener, Continuation, h9, yi6 {
    public static final lv1 c = new lv1(21);
    public final /* synthetic */ int a;
    public Object b;

    public s79(int i) {
        this.a = i;
        switch (i) {
            case 1:
                break;
            default:
                v79[] v79VarArr = {ns0.e, c};
                rb rbVar = new rb(27);
                rbVar.b = v79VarArr;
                byte[] bArr = l79.a;
                this.b = rbVar;
                break;
        }
    }

    public static s79 l(s79 s79Var, s79 s79Var2) {
        HashMap map;
        HashMap map2;
        if (s79Var == null || (map = (HashMap) s79Var.b) == null || map.isEmpty()) {
            return s79Var2;
        }
        if (s79Var2 == null || (map2 = (HashMap) s79Var2.b) == null || map2.isEmpty()) {
            return s79Var;
        }
        HashMap map3 = new HashMap();
        for (Annotation annotation : ((HashMap) s79Var2.b).values()) {
            map3.put(annotation.annotationType(), annotation);
        }
        for (Annotation annotation2 : ((HashMap) s79Var.b).values()) {
            map3.put(annotation2.annotationType(), annotation2);
        }
        return new s79(map3, 1);
    }

    @Override // defpackage.v49
    public void a(Status status) {
        h59 h59Var = (h59) this.b;
        String str = status.b;
        if (str != null) {
            if (str.contains("MISSING_MFA_PENDING_CREDENTIAL")) {
                status = new Status(17081, null, null, null);
            } else if (str.contains("MISSING_MFA_ENROLLMENT_ID")) {
                status = new Status(17082, null, null, null);
            } else if (str.contains("INVALID_MFA_PENDING_CREDENTIAL")) {
                status = new Status(17083, null, null, null);
            } else if (str.contains("MFA_ENROLLMENT_NOT_FOUND")) {
                status = new Status(17084, null, null, null);
            } else if (str.contains("ADMIN_ONLY_OPERATION")) {
                status = new Status(17085, null, null, null);
            } else if (str.contains("UNVERIFIED_EMAIL")) {
                status = new Status(17086, null, null, null);
            } else if (str.contains("SECOND_FACTOR_EXISTS")) {
                status = new Status(17087, null, null, null);
            } else if (str.contains("SECOND_FACTOR_LIMIT_EXCEEDED")) {
                status = new Status(17088, null, null, null);
            } else if (str.contains("UNSUPPORTED_FIRST_FACTOR")) {
                status = new Status(17089, null, null, null);
            } else if (str.contains("EMAIL_CHANGE_NEEDS_VERIFICATION")) {
                status = new Status(17090, null, null, null);
            }
        }
        if (h59Var.a == 8) {
            h59Var.m = true;
            throw null;
        }
        b99 b99Var = h59Var.f;
        if (b99Var != null) {
            b99Var.a(status);
        }
        h59Var.b(status);
    }

    @Override // defpackage.yi6
    public void accept(Object obj, Object obj2) {
        ka9 ka9Var = (ka9) this.b;
        at9 at9Var = (at9) ((hn9) obj).p();
        d0a d0aVar = new d0a((TaskCompletionSource) obj2);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(at9Var.c);
        int i = xa9.a;
        parcelObtain.writeStrongBinder(d0aVar);
        xa9.b(parcelObtain, ka9Var);
        at9Var.k(parcelObtain, 2);
    }

    @Override // defpackage.ee
    public Annotation b(Class cls) {
        HashMap map = (HashMap) this.b;
        if (map == null) {
            return null;
        }
        return (Annotation) map.get(cls);
    }

    @Override // defpackage.v49
    public void c(c69 c69Var) {
        h59 h59Var = (h59) this.b;
        h59Var.l = c69Var;
        h59Var.e();
        ly8.k("no success or failure set on method implementation", h59Var.m);
    }

    @Override // defpackage.w6
    public boolean d(View view) {
        SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.b;
        if (!swipeDismissBehavior.w(view)) {
            return false;
        }
        boolean z = view.getLayoutDirection() == 1;
        int i = swipeDismissBehavior.e;
        int width = (!(i == 0 && z) && (i != 1 || z)) ? view.getWidth() : -view.getWidth();
        WeakHashMap weakHashMap = dl8.a;
        view.offsetLeftAndRight(width);
        view.setAlpha(0.0f);
        jq6 jq6Var = swipeDismissBehavior.b;
        if (jq6Var != null) {
            jq6Var.u(view);
        }
        return true;
    }

    @Override // defpackage.v49
    public void e(b69 b69Var) {
        h59 h59Var = (h59) this.b;
        int i = h59Var.a;
        ly8.k("Unexpected response type: " + i, i == 1);
        h59Var.h = b69Var;
        h59Var.e();
        ly8.k("no success or failure set on method implementation", h59Var.m);
    }

    @Override // defpackage.v49
    public void f(wc9 wc9Var) {
        h59 h59Var = (h59) this.b;
        h59Var.k = wc9Var;
        h59Var.b(zv1.t("REQUIRES_SECOND_FACTOR_AUTH"));
    }

    @Override // defpackage.v49
    public void g(bs2 bs2Var) {
        Status status = (Status) bs2Var.b;
        ua9 ua9Var = (ua9) bs2Var.c;
        h59 h59Var = (h59) this.b;
        b99 b99Var = h59Var.f;
        if (b99Var != null) {
            b99Var.a(status);
        }
        h59Var.j = ua9Var;
        b99 b99Var2 = h59Var.f;
        if (b99Var2 != null) {
            b99Var2.a(status);
        }
        h59Var.b(status);
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        ProxyBillingActivityV2 proxyBillingActivityV2 = (ProxyBillingActivityV2) this.b;
        g9 g9Var = (g9) obj;
        Intent intent = g9Var.b;
        int i = g9Var.a;
        Bundle extras = intent == null ? null : intent.getExtras();
        if (i != -1) {
            if (extras == null) {
                extras = new Bundle();
            }
            ta9.h("ProxyBillingActivityV2", "External offer flow finished with resultCode: " + i);
            extras.putInt("INTERNAL_LOG_ERROR_REASON", 134);
            extras.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", "External offer flow finished with error resultCode: " + i);
        }
        int i2 = ta9.e(intent, "ProxyBillingActivityV2").a;
        ResultReceiver resultReceiver = proxyBillingActivityV2.k;
        if (resultReceiver != null) {
            resultReceiver.send(i2, extras);
        } else {
            ta9.h("ProxyBillingActivityV2", "External offer flow result receiver is null");
        }
        if (i2 != 0) {
            ta9.h("ProxyBillingActivityV2", "External offer flow finished with billing responseCode: " + i2);
        }
        proxyBillingActivityV2.finish();
    }

    @Override // defpackage.v49
    public void i(b69 b69Var, x59 x59Var) {
        h59 h59Var = (h59) this.b;
        int i = h59Var.a;
        ly8.k("Unexpected response type: " + i, i == 2);
        h59Var.h = b69Var;
        h59Var.i = x59Var;
        h59Var.e();
        ly8.k("no success or failure set on method implementation", h59Var.m);
    }

    @Override // defpackage.v49
    public void j(Status status, xz5 xz5Var) {
        h59 h59Var = (h59) this.b;
        int i = h59Var.a;
        ly8.k("Unexpected response type " + i, i == 2);
        b99 b99Var = h59Var.f;
        if (b99Var != null) {
            b99Var.a(status);
        }
        h59Var.j = xz5Var;
        b99 b99Var2 = h59Var.f;
        if (b99Var2 != null) {
            b99Var2.a(status);
        }
        h59Var.b(status);
    }

    @Override // defpackage.gl2
    public boolean k(float f) {
        int i;
        int i2;
        RecyclerView recyclerView = (RecyclerView) this.b;
        if (recyclerView.y.p()) {
            i2 = (int) f;
            i = 0;
        } else if (recyclerView.y.o()) {
            i = (int) f;
            i2 = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return false;
        }
        recyclerView.n0();
        return recyclerView.H(i, i2, 0, Integer.MAX_VALUE);
    }

    @Override // defpackage.gl2
    public float m() {
        float f;
        RecyclerView recyclerView = (RecyclerView) this.b;
        if (recyclerView.y.p()) {
            f = recyclerView.s0;
        } else {
            if (!recyclerView.y.o()) {
                return 0.0f;
            }
            f = recyclerView.r0;
        }
        return -f;
    }

    @Override // defpackage.gl2
    public void n() {
        ((RecyclerView) this.b).n0();
    }

    public fa7 o(JSONObject jSONObject) throws JSONException {
        qa7 fo8Var;
        int i = jSONObject.getInt("settings_version");
        if (i != 3) {
            Log.e("FirebaseCrashlytics", "Could not determine SettingsJsonTransform for settings version " + i + ". Using default settings values.", null);
            fo8Var = new ge();
        } else {
            fo8Var = new fo8(14);
        }
        return fo8Var.j((fo8) this.b, jSONObject);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        long j;
        if (exc instanceof sg3) {
            u50 u50Var = y89.f;
            u50Var.f("Failure to refresh token; scheduling refresh after failure", new Object[0]);
            y89 y89Var = (y89) ((c9) this.b).c;
            int i = (int) y89Var.c;
            if (i == 30 || i == 60 || i == 120 || i == 240 || i == 480) {
                j = 2 * y89Var.c;
            } else {
                j = i != 960 ? 30L : 960L;
            }
            y89Var.c = j;
            y89Var.b = (y89Var.c * 1000) + System.currentTimeMillis();
            u50Var.f(u48.l(y89Var.b, "Scheduling refresh for "), new Object[0]);
            y89Var.d.postDelayed(y89Var.e, y89Var.c * 1000);
        }
    }

    @Override // defpackage.ee
    public int size() {
        HashMap map = (HashMap) this.b;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* synthetic */ Object then(Task task) {
        if (task.isSuccessful()) {
            return ((RecaptchaTasksClient) task.getResult()).executeTask((RecaptchaAction) this.b);
        }
        Exception exception = task.getException();
        ly8.h(exception);
        if (!(exception instanceof na9)) {
            return Tasks.forException(exception);
        }
        if (Log.isLoggable("RecaptchaHandler", 4)) {
            Log.i("RecaptchaHandler", "Ignoring error related to fetching recaptcha config - " + exception.getMessage());
        }
        return Tasks.forResult("");
    }

    public String toString() {
        switch (this.a) {
            case 1:
                HashMap map = (HashMap) this.b;
                return map == null ? "[null]" : map.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ s79(z39 z39Var, ka9 ka9Var) {
        this.a = 15;
        this.b = ka9Var;
    }

    public s79(yo1 yo1Var, RecaptchaAction recaptchaAction) {
        this.a = 13;
        this.b = recaptchaAction;
        Objects.requireNonNull(yo1Var);
    }

    public /* synthetic */ s79(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public s79(qy1 qy1Var, String str) {
        this.a = 2;
        this.b = qy1Var;
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        fa7 fa7Var = (fa7) obj;
        sy1 sy1Var = ((qy1) this.b).e;
        if (fa7Var == null) {
            Log.w("FirebaseCrashlytics", "Received null app settings, cannot send reports at crash time.", null);
            return Tasks.forResult(null);
        }
        return Tasks.whenAll((Task<?>[]) new Task[]{sy1.a(sy1Var), sy1Var.m.m(null, (o02) sy1Var.e.a)});
    }
}
