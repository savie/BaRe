package defpackage;

import android.util.JsonReader;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.io.EOFException;
import java.io.IOException;
import java.security.InvalidKeyException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d6 implements ObjectConstructor, e02, mo1, w98 {
    public static /* synthetic */ void d() throws EOFException {
        throw new EOFException();
    }

    public static /* synthetic */ void e(Object obj, Object obj2, String str) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    public static /* synthetic */ void f(String str) throws InvalidKeyException {
        throw new InvalidKeyException(str);
    }

    public static /* synthetic */ void g(String str, double d) {
        throw new IllegalArgumentException(str + d);
    }

    public static /* synthetic */ void h(String str, int i, Object obj) {
        throw new IllegalArgumentException(str + i + obj);
    }

    public static /* synthetic */ void i(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void j(String str, Object obj, Object obj2, Object obj3, int i) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + ((char) i));
    }

    public static /* synthetic */ void k(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + obj4);
    }

    public static /* synthetic */ void l(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void n() {
        throw new AssertionError();
    }

    public static /* synthetic */ void o() {
        throw new IllegalThreadStateException("Method called from main thread");
    }

    @Override // defpackage.w98
    public void a(v98 v98Var, y98 y98Var, boolean z) {
        v98Var.f(y98Var);
    }

    @Override // defpackage.e02
    public Object b(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        String strNextString = null;
        String strNextString2 = null;
        String strNextString3 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "libraryName":
                    strNextString2 = jsonReader.nextString();
                    if (strNextString2 == null) {
                        f6.n("Null libraryName");
                        return null;
                    }
                    break;
                    break;
                case "arch":
                    strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        f6.n("Null arch");
                        return null;
                    }
                    break;
                    break;
                case "buildId":
                    strNextString3 = jsonReader.nextString();
                    if (strNextString3 == null) {
                        f6.n("Null buildId");
                        return null;
                    }
                    break;
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (strNextString != null && strNextString2 != null && strNextString3 != null) {
            return new bc0(strNextString, strNextString2, strNextString3);
        }
        StringBuilder sb = new StringBuilder();
        if (strNextString == null) {
            sb.append(" arch");
        }
        if (strNextString2 == null) {
            sb.append(" libraryName");
        }
        if (strNextString3 == null) {
            sb.append(" buildId");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ConstructorConstructor.lambda$newDefaultImplementationConstructor$12();
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        return FirebaseSessionsRegistrar.getComponents$lambda$1(pp0Var);
    }
}
