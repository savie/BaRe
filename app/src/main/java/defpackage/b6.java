package defpackage;

import com.google.firebase.datatransport.TransportRegistrar;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.security.spec.InvalidKeySpecException;
import okhttp3.EventListener;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b6 implements ObjectConstructor, mo1, w98, EventListener.Factory {
    public final /* synthetic */ int a;

    public /* synthetic */ b6(int i) {
        this.a = i;
    }

    public static /* synthetic */ void b(int i, StringBuilder sb) {
        sb.append(i);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public static /* synthetic */ void c(Object obj) throws InvalidKeySpecException {
        throw new InvalidKeySpecException(obj.toString());
    }

    public static /* synthetic */ void d(Object obj, Object obj2, Object obj3, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        throw new IllegalStateException(sb.toString(), th);
    }

    public static /* synthetic */ void e(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void f(String str) throws uj9 {
        throw new uj9(str);
    }

    @Override // defpackage.w98
    public void a(v98 v98Var, y98 y98Var, boolean z) {
        v98Var.d(y98Var);
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ConstructorConstructor.lambda$newDefaultImplementationConstructor$10();
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        switch (this.a) {
            case 5:
                return FirebaseInstallationsRegistrar.lambda$getComponents$0(pp0Var);
            default:
                return TransportRegistrar.lambda$getComponents$1(pp0Var);
        }
    }
}
