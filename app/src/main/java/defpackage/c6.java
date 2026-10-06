package defpackage;

import com.android.billingclient.api.Purchase;
import com.google.android.recaptcha.internal.zznm;
import com.google.firebase.datatransport.TransportRegistrar;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.io.IOException;
import java.security.spec.InvalidKeySpecException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c6 implements ObjectConstructor, mo1, ig2, w98 {
    public final /* synthetic */ int a;

    public /* synthetic */ c6(int i) {
        this.a = i;
    }

    public static /* synthetic */ void b() {
        throw new IllegalArgumentException();
    }

    public static /* synthetic */ void d(Object obj, Object obj2, String str) {
        throw new IllegalArgumentException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void e(Object obj, String str) throws JOSEException {
        throw new JOSEException(str + obj);
    }

    public static /* synthetic */ void f(String str) {
        throw new IllegalArgumentException(str);
    }

    public static /* synthetic */ void g(String str, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + obj4 + obj5);
    }

    public static /* synthetic */ void h(String str, Object obj, Throwable th) {
        throw new RuntimeException(str + obj, th);
    }

    public static /* synthetic */ void i() throws zznm {
        throw new zznm("Protocol message tag had invalid wire type.");
    }

    public static /* synthetic */ void j(Object obj, String str) throws InvalidKeySpecException {
        throw new InvalidKeySpecException(str + obj + ((Object) "."));
    }

    public static /* synthetic */ void k(Object obj, String str) throws IOException {
        throw new IOException(str + obj);
    }

    public static /* synthetic */ void l(Object obj, String str) {
        throw new RuntimeException(str + obj);
    }

    public static /* synthetic */ void n(Object obj, String str) throws IOException {
        throw new IOException(str + obj);
    }

    public static void o(yq0 yq0Var, List list) {
        yq0Var.getClass();
        wq0 wq0Var = wq0.a;
        Object next = null;
        wq0.e("PurchasesUpdatedListener", "result=" + yq0Var + ", purchases.size=" + (list != null ? Integer.valueOf(list.size()) : null));
        if (yq0Var.a != 0 || list == null || list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                long jOptLong = ((Purchase) next).c.optLong("purchaseTime");
                do {
                    Object next2 = it.next();
                    long jOptLong2 = ((Purchase) next2).c.optLong("purchaseTime");
                    if (jOptLong < jOptLong2) {
                        next = next2;
                        jOptLong = jOptLong2;
                    }
                } while (it.hasNext());
            }
        }
        Purchase purchase = (Purchase) next;
        if (purchase != null) {
            vr6.i$default(vr6.INSTANCE, "BillingManager", u48.l(purchase.c.optLong("purchaseTime"), "onPurchasesUpdated called with new purchase time = "), null, 4, null);
            zn4 zn4Var = zn4.a;
            zn4.c(new d76(purchase, 9));
        }
    }

    @Override // defpackage.w98
    public void a(v98 v98Var, y98 y98Var, boolean z) {
        v98Var.c(y98Var);
    }

    @Override // defpackage.ig2
    public void c(ga6 ga6Var) {
        ga6Var.get().getClass();
        throw new ClassCastException();
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ConstructorConstructor.lambda$newDefaultImplementationConstructor$11();
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        switch (this.a) {
            case 6:
                return FirebaseSessionsRegistrar.getComponents$lambda$0(pp0Var);
            default:
                return TransportRegistrar.lambda$getComponents$2(pp0Var);
        }
    }
}
