package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.identitycredentials.GetCredentialRequest;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.navigationrail.NavigationRailView;
import com.google.firebase.FirebaseApp;
import com.microsoft.identity.common.internal.providers.oauth2.PasskeyWebListener;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessageBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class zq8 implements WebMessageListenerBoundaryInterface, oc, hu1, jk8, hc5, SuccessContinuation, dh5, vl2, w23, vn5, um8, dc5, n59, Continuation, yi6 {
    public final /* synthetic */ int a;
    public Object b;

    public zq8(int i) {
        this.a = i;
        switch (i) {
            case 2:
                this.b = new Handler(Looper.getMainLooper());
                break;
            case 12:
                this.b = new LinkedHashMap(0, 0.75f, true);
                break;
            default:
                this.b = new n6(this);
                break;
        }
    }

    public static uf5 u(Method method, Annotation annotation, Annotation[] annotationArr) throws sf5 {
        y40 y40Var;
        int iV = v(method);
        if (iV == 1 || iV == 2) {
            y40Var = w(method, iV);
        } else {
            if (iV != 3) {
                throw new sf5("Annotation %s must mark a set or get method", annotation);
            }
            Class<?>[] parameterTypes = method.getParameterTypes();
            String name = method.getName();
            if (parameterTypes.length != 1) {
                throw new sf5("Set method %s is not a valid property", method);
            }
            int iC = eq3.c(iV);
            int length = name.length();
            if (length > iC) {
                name = name.substring(iC, length);
            }
            y40Var = new y40(method, iV, z85.v(name));
        }
        return y40Var.b == 3 ? new aa7(y40Var, annotation, annotationArr) : new sw3(y40Var, annotation, annotationArr);
    }

    public static int v(Method method) {
        String name = method.getName();
        if (name.startsWith("get")) {
            return 1;
        }
        if (name.startsWith("is")) {
            return 2;
        }
        return name.startsWith("set") ? 3 : 4;
    }

    public static y40 w(Method method, int i) throws sf5 {
        Class<?>[] parameterTypes = method.getParameterTypes();
        String name = method.getName();
        if (parameterTypes.length != 0) {
            throw new sf5("Get method %s is not a valid property", method);
        }
        int iC = eq3.c(i);
        int length = name.length();
        if (length > iC) {
            name = name.substring(iC, length);
        }
        return new y40(method, i, z85.v(name));
    }

    public static Class x(Method method) {
        int iV = v(method);
        if (iV == 3) {
            if (method.getParameterTypes().length == 1) {
                return method.getParameterTypes()[0];
            }
        } else {
            if (iV == 1) {
                if (method.getParameterTypes().length == 0) {
                    return method.getReturnType();
                }
                return null;
            }
            if (iV == 2 && method.getParameterTypes().length == 0) {
                return method.getReturnType();
            }
        }
        return null;
    }

    public boolean A(int i, int i2, Bundle bundle) {
        return false;
    }

    public void B(zq8 zq8Var) {
        int i = 0;
        while (true) {
            l22[] l22VarArr = (l22[]) this.b;
            if (i >= l22VarArr.length) {
                return;
            }
            l22 l22Var = l22VarArr[i];
            l22 l22Var2 = ((l22[]) zq8Var.b)[i];
            for (int i2 = 0; i2 < 256; i2++) {
                int[] iArr = (int[]) l22Var.b;
                int i3 = iArr[i2];
                int i4 = (i3 + 4095) >> 13;
                int[] iArr2 = {i4, i3 - (i4 << 13)};
                iArr[i2] = iArr2[0];
                ((int[]) l22Var2.b)[i2] = iArr2[1];
            }
            l22Var.getClass();
            i++;
        }
    }

    public void C() {
        int i = 0;
        while (true) {
            l22[] l22VarArr = (l22[]) this.b;
            if (i >= l22VarArr.length) {
                return;
            }
            l22 l22Var = l22VarArr[i];
            for (int i2 = 0; i2 < 256; i2++) {
                int[] iArr = (int[]) l22Var.b;
                int i3 = iArr[i2];
                iArr[i2] = i3 - (((4194304 + i3) >> 23) * 8380417);
            }
            l22Var.getClass();
            i++;
        }
    }

    @Override // defpackage.vl2
    public Class a() {
        return InputStream.class;
    }

    @Override // defpackage.yi6
    public void accept(Object obj, Object obj2) {
        int i = this.a;
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
        Object obj3 = this.b;
        switch (i) {
            case 20:
                ee4 ee4Var = new ee4(taskCompletionSource);
                v74 v74Var = (v74) ((o94) obj).p();
                ef efVar = new ef(new qn1(-1, -1, 0, true), false);
                efVar.c = false;
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken("com.google.android.gms.identitycredentials.internal.IIdentityCredentialService");
                int i2 = sa9.a;
                parcelObtain.writeStrongBinder(ee4Var);
                sa9.b(parcelObtain, (e91) obj3);
                sa9.b(parcelObtain, efVar);
                ((t74) v74Var).a(parcelObtain, 9);
                break;
            default:
                ge4 ge4Var = new ge4(taskCompletionSource);
                v74 v74Var2 = (v74) ((o94) obj).p();
                ef efVar2 = new ef(new qn1(-1, -1, 0, true), false);
                efVar2.c = false;
                Parcel parcelObtain2 = Parcel.obtain();
                parcelObtain2.writeInterfaceToken("com.google.android.gms.identitycredentials.internal.IIdentityCredentialService");
                int i3 = sa9.a;
                parcelObtain2.writeStrongBinder(ge4Var);
                sa9.b(parcelObtain2, (GetCredentialRequest) obj3);
                sa9.b(parcelObtain2, efVar2);
                ((t74) v74Var2).a(parcelObtain2, 1);
                break;
        }
    }

    @Override // defpackage.vl2
    public void b(Object obj) throws IOException {
        ((InputStream) obj).close();
    }

    @Override // defpackage.vn5
    public sb4 c(sb4 sb4Var, qn5 qn5Var) {
        return sb4Var.a.isEmpty() ? sb4Var : new sb4(sb4Var.a.q(qn5Var), sb4Var.c, sb4Var.b);
    }

    @Override // defpackage.hc5
    public void d(fc5 fc5Var, MenuItem menuItem) {
        ((b31) this.b).k.removeCallbacksAndMessages(fc5Var);
    }

    @Override // defpackage.dc5
    public boolean e(fc5 fc5Var, MenuItem menuItem) {
        g36 g36Var = (g36) ((l90) this.b).e;
        if (g36Var != null) {
            return g36Var.onMenuItemClick(menuItem);
        }
        return false;
    }

    @Override // defpackage.vn5
    public boolean g() {
        return false;
    }

    @Override // defpackage.ea6
    public Object get() {
        switch (this.a) {
            case 10:
                FirebaseApp firebaseApp = (FirebaseApp) ((id4) this.b).a;
                firebaseApp.getClass();
                x87 x87Var = x87.a;
                return x87.a(firebaseApp);
            default:
                return new j97((kd7) ((ca6) this.b).get());
        }
    }

    @Override // defpackage.vn5
    public nb4 getIndex() {
        return (nb4) this.b;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 5:
                return (MaterialCardView) this.b;
            default:
                return (LinearLayout) this.b;
        }
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public String[] getSupportedFeatures() {
        return new String[]{"WEB_MESSAGE_LISTENER", "WEB_MESSAGE_ARRAY_BUFFER"};
    }

    @Override // defpackage.n59
    public /* synthetic */ void h(f59 f59Var) {
        ((yf1) this.b).e((b69) f59Var);
    }

    @Override // defpackage.vn5
    public sb4 i(sb4 sb4Var, m61 m61Var, qn5 qn5Var, gy5 gy5Var, un5 un5Var, vk9 vk9Var) {
        zm5.r("The index must match the filter", sb4Var.c == ((nb4) this.b));
        qn5 qn5Var2 = sb4Var.a;
        qn5 qn5VarM = qn5Var2.m(m61Var);
        if (!qn5VarM.U(gy5Var).equals(qn5Var.U(gy5Var)) || qn5VarM.isEmpty() != qn5Var.isEmpty()) {
            if (vk9Var != null) {
                if (qn5Var.isEmpty()) {
                    if (qn5Var2.c0(m61Var)) {
                        vk9Var.p(new k31(1, sb4.d(qn5VarM), m61Var, null, null));
                    } else {
                        zm5.r("A child remove without an old child only makes sense on a leaf node", qn5Var2.Z());
                    }
                } else if (qn5VarM.isEmpty()) {
                    vk9Var.p(new k31(2, sb4.d(qn5Var), m61Var, null, null));
                } else {
                    vk9Var.p(new k31(4, sb4.d(qn5Var), m61Var, null, sb4.d(qn5VarM)));
                }
            }
            if (!qn5Var2.Z() || !qn5Var.isEmpty()) {
                return sb4Var.e(m61Var, qn5Var);
            }
        }
        return sb4Var;
    }

    @Override // defpackage.hc5
    public void j(fc5 fc5Var, ic5 ic5Var) {
        b31 b31Var = (b31) this.b;
        Handler handler = b31Var.k;
        handler.removeCallbacksAndMessages(null);
        ArrayList arrayList = b31Var.p;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (fc5Var == ((a31) arrayList.get(i)).b) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        handler.postAtTime(new z21(this, i2 < arrayList.size() ? (a31) arrayList.get(i2) : null, ic5Var, fc5Var), fc5Var, SystemClock.uptimeMillis() + 200);
    }

    @Override // defpackage.vl2
    public Object k(int i, Resources.Theme theme, Resources resources) {
        return resources.openRawResource(i);
    }

    @Override // defpackage.vn5
    public sb4 l(sb4 sb4Var, sb4 sb4Var2, vk9 vk9Var) {
        boolean z = sb4Var2.c == ((nb4) this.b);
        qn5<hk5> qn5Var = sb4Var2.a;
        zm5.r("Can't use IndexedNode that doesn't have filter's index", z);
        if (vk9Var != null) {
            qn5<hk5> qn5Var2 = sb4Var.a;
            for (hk5 hk5Var : qn5Var2) {
                if (!qn5Var.c0(hk5Var.a)) {
                    vk9Var.p(new k31(1, sb4.d(hk5Var.b), hk5Var.a, null, null));
                }
            }
            if (!qn5Var.Z()) {
                for (hk5 hk5Var2 : qn5Var) {
                    m61 m61Var = hk5Var2.a;
                    qn5 qn5Var3 = hk5Var2.b;
                    if (qn5Var2.c0(m61Var)) {
                        qn5 qn5VarM = qn5Var2.m(m61Var);
                        if (!qn5VarM.equals(qn5Var3)) {
                            vk9Var.p(new k31(4, sb4.d(qn5Var3), m61Var, null, sb4.d(qn5VarM)));
                        }
                    } else {
                        vk9Var.p(new k31(2, sb4.d(qn5Var3), m61Var, null, null));
                    }
                }
            }
        }
        return sb4Var2;
    }

    @Override // defpackage.oc
    public yl0 n() {
        ArrayList arrayList = (ArrayList) this.b;
        return ((wo4) arrayList.get(0)).c() ? new e26(arrayList) : new jy5(arrayList);
    }

    @Override // defpackage.um8
    public tv8 o(View view, tv8 tv8Var, vm8 vm8Var) {
        qv8 qv8Var = tv8Var.a;
        vc4 vc4VarH = qv8Var.h(519);
        vc4 vc4VarH2 = qv8Var.h(128);
        NavigationRailView navigationRailView = (NavigationRailView) this.b;
        Boolean bool = navigationRailView.r;
        if (bool != null ? bool.booleanValue() : navigationRailView.getFitsSystemWindows()) {
            vm8Var.b += vc4VarH.b;
        }
        Boolean bool2 = navigationRailView.t;
        if (bool2 != null ? bool2.booleanValue() : navigationRailView.getFitsSystemWindows()) {
            vm8Var.d += vc4VarH.d;
        }
        Boolean bool3 = navigationRailView.x;
        if (bool3 != null ? bool3.booleanValue() : navigationRailView.getFitsSystemWindows()) {
            int layoutDirection = view.getLayoutDirection();
            int i = vm8Var.a;
            if (layoutDirection == 1) {
                vm8Var.a = Math.max(vc4VarH.c, vc4VarH2.c) + i;
            } else {
                vm8Var.a = Math.max(vc4VarH.a, vc4VarH2.a) + i;
            }
        }
        view.setPaddingRelative(vm8Var.a, vm8Var.b, vm8Var.c, vm8Var.d);
        return tv8Var;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x006c  */
    /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
    @Override // org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface
    public void onPostMessage(WebView webView, InvocationHandler invocationHandler, Uri uri, boolean z, InvocationHandler invocationHandler2) {
        hb5 hb5Var;
        hb5 hb5Var2;
        WebMessageBoundaryInterface webMessageBoundaryInterface = (WebMessageBoundaryInterface) tu0.a(WebMessageBoundaryInterface.class, invocationHandler);
        InvocationHandler[] ports = webMessageBoundaryInterface.getPorts();
        ke[] keVarArr = new ke[ports.length];
        for (int i = 0; i < ports.length; i++) {
            InvocationHandler invocationHandler3 = ports[i];
            ke keVar = new ke(15);
            keVar.b = (WebMessagePortBoundaryInterface) tu0.a(WebMessagePortBoundaryInterface.class, invocationHandler3);
            keVarArr[i] = keVar;
        }
        if (jr8.a.b()) {
            WebMessagePayloadBoundaryInterface webMessagePayloadBoundaryInterface = (WebMessagePayloadBoundaryInterface) tu0.a(WebMessagePayloadBoundaryInterface.class, webMessageBoundaryInterface.getMessagePayload());
            int type = webMessagePayloadBoundaryInterface.getType();
            if (type != 0) {
                if (type != 1) {
                    hb5Var2 = null;
                } else {
                    hb5Var = new hb5(webMessagePayloadBoundaryInterface.getAsArrayBuffer());
                }
                if (hb5Var2 != null) {
                    final JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface = (JsReplyProxyBoundaryInterface) tu0.a(JsReplyProxyBoundaryInterface.class, invocationHandler2);
                    ((PasskeyWebListener) this.b).onPostMessage(webView, hb5Var2, uri, z, (kh4) jsReplyProxyBoundaryInterface.getOrCreatePeer(new Callable() { // from class: jh4
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return new kh4(jsReplyProxyBoundaryInterface);
                        }
                    }));
                }
            }
            hb5Var = new hb5(webMessagePayloadBoundaryInterface.getAsString());
        } else {
            hb5Var = new hb5(webMessageBoundaryInterface.getData());
        }
        hb5Var2 = hb5Var;
        if (hb5Var2 != null) {
            final JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface2 = (JsReplyProxyBoundaryInterface) tu0.a(JsReplyProxyBoundaryInterface.class, invocationHandler2);
            ((PasskeyWebListener) this.b).onPostMessage(webView, hb5Var2, uri, z, (kh4) jsReplyProxyBoundaryInterface2.getOrCreatePeer(new Callable() { // from class: jh4
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new kh4(jsReplyProxyBoundaryInterface2);
                }
            }));
        }
    }

    @Override // defpackage.oc
    public List p() {
        return (ArrayList) this.b;
    }

    @Override // defpackage.oc
    public boolean q() {
        ArrayList arrayList = (ArrayList) this.b;
        return arrayList.size() == 1 && ((wo4) arrayList.get(0)).c();
    }

    public void r() {
        int i = 0;
        while (true) {
            l22[] l22VarArr = (l22[]) this.b;
            if (i >= l22VarArr.length) {
                return;
            }
            l22 l22Var = l22VarArr[i];
            for (int i2 = 0; i2 < 256; i2++) {
                int[] iArr = (int[]) l22Var.b;
                int i3 = iArr[i2];
                iArr[i2] = i3 + ((i3 >> 31) & 8380417);
            }
            l22Var.getClass();
            i++;
        }
    }

    public m6 s(int i) {
        return null;
    }

    public m6 t(int i) {
        return null;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        jd4 jd4Var = (jd4) this.b;
        if (task.isSuccessful()) {
            return jd4Var.P((String) task.getResult());
        }
        Exception exception = task.getException();
        ly8.h(exception);
        Log.e("RecaptchaCallWrapper", "Failed to get Recaptcha token, error - " + exception.getMessage() + "\n\n Failing open with a fake token.");
        return jd4Var.P("NO_RECAPTCHA");
    }

    public String toString() {
        switch (this.a) {
            case 15:
                l22[] l22VarArr = (l22[]) this.b;
                String strConcat = "[";
                for (int i = 0; i < l22VarArr.length; i++) {
                    strConcat = strConcat + i + TokenAuthenticationScheme.SCHEME_DELIMITER + l22VarArr[i].toString();
                    if (i != l22VarArr.length - 1) {
                        strConcat = strConcat.concat(",\n");
                    }
                }
                return strConcat.concat("]");
            default:
                return super.toString();
        }
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new wl2((Context) this.b, this);
    }

    public void z() {
        int i;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            l22[] l22VarArr = (l22[]) this.b;
            if (i3 >= l22VarArr.length) {
                return;
            }
            l22 l22Var = l22VarArr[i3];
            int[] iArr = (int[]) l22Var.b;
            int iW = ms8.w(i2, iArr.length);
            int[] iArr2 = new int[iW];
            System.arraycopy(iArr, i2, iArr2, i2, Math.min(iArr.length, iW));
            int i4 = 1;
            int i5 = 256;
            while (i4 < 256) {
                for (int i6 = i2; i6 < 256; i6 = i + i4) {
                    i5--;
                    int i7 = ms8.b[i5] * (-1);
                    i = i6;
                    while (i < i6 + i4) {
                        int i8 = iArr2[i];
                        int i9 = i + i4;
                        iArr2[i] = iArr2[i9] + i8;
                        int i10 = i8 - iArr2[i9];
                        iArr2[i9] = i10;
                        iArr2[i9] = xx3.w(((long) i7) * ((long) i10));
                        i++;
                    }
                }
                i4 <<= 1;
                i2 = 0;
            }
            for (int i11 = 0; i11 < 256; i11++) {
                iArr2[i11] = xx3.w(((long) iArr2[i11]) * 41978);
            }
            l22Var.b = iArr2;
            i3++;
            i2 = 0;
        }
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((yf1) this.b).a(zv1.t(str));
    }

    @Override // defpackage.vn5
    public zq8 f() {
        return this;
    }

    @Override // defpackage.dc5
    public void m(fc5 fc5Var) {
    }

    public zq8(g45 g45Var) {
        this.a = 15;
        int i = g45Var.c;
        this.b = new l22[i];
        for (int i2 = 0; i2 < i; i2++) {
            ((l22[]) this.b)[i2] = new l22(g45Var);
        }
    }

    public /* synthetic */ zq8(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public zq8(ke keVar, yf1 yf1Var) {
        this.a = 18;
        this.b = yf1Var;
        Objects.requireNonNull(keVar);
    }

    public zq8(LinearLayout linearLayout, vq vqVar, vq vqVar2) {
        this.a = 9;
        this.b = linearLayout;
    }

    public zq8(MaterialCardView materialCardView, ImageView imageView, TextView textView, TextView textView2) {
        this.a = 5;
        this.b = materialCardView;
    }

    public zq8(ri2 ri2Var, x44 x44Var) {
        this.a = 13;
        this.b = new be(ri2Var, x44Var);
    }

    public /* synthetic */ zq8(int i, boolean z) {
        this.a = i;
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        fa7 fa7Var = (fa7) obj;
        yf1 yf1Var = (yf1) this.b;
        if (fa7Var == null) {
            Log.w("FirebaseCrashlytics", "Received null app settings at app startup. Cannot send cached reports", null);
            return Tasks.forResult(null);
        }
        sy1 sy1Var = (sy1) yf1Var.c;
        sy1.a(sy1Var);
        sy1Var.m.m(null, (o02) sy1Var.e.a);
        sy1Var.q.trySetResult(null);
        return Tasks.forResult(null);
    }
}
