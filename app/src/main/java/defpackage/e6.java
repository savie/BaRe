package defpackage;

import android.util.Base64;
import android.util.JsonReader;
import android.view.View;
import android.window.OnBackInvokedDispatcher;
import com.jcraft.jsch.JSchException;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e6 implements ObjectConstructor, e02, ls5, w98 {
    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher c(Object obj) {
        return (OnBackInvokedDispatcher) obj;
    }

    public static /* synthetic */ void d() {
        throw new ClassCastException();
    }

    public static /* synthetic */ void e(Object obj) {
        throw new AssertionError(obj);
    }

    public static /* synthetic */ void f(Object obj, Object obj2, String str) {
        throw new mn1(str + obj + obj2);
    }

    public static /* synthetic */ void g(Object obj, String str) {
        throw new xc2(str + obj);
    }

    public static /* synthetic */ void h(String str) throws JSchException {
        throw new JSchException(str);
    }

    public static /* synthetic */ void i(String str, Throwable th) {
        throw new RuntimeException(str, th);
    }

    public static /* synthetic */ void j(String str, Throwable th) {
        throw new IllegalStateException(str, th);
    }

    @Override // defpackage.w98
    public void a(v98 v98Var, y98 y98Var, boolean z) {
        v98Var.b();
    }

    @Override // defpackage.e02
    public Object b(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        String strNextString = null;
        byte[] bArrDecode = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("filename")) {
                strNextString = jsonReader.nextString();
                if (strNextString == null) {
                    f6.n("Null filename");
                    return null;
                }
            } else if (strNextName.equals("contents")) {
                bArrDecode = Base64.decode(jsonReader.nextString(), 2);
                if (bArrDecode == null) {
                    f6.n("Null contents");
                    return null;
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (strNextString != null && bArrDecode != null) {
            return new ec0(strNextString, bArrDecode);
        }
        StringBuilder sb = new StringBuilder();
        if (strNextString == null) {
            sb.append(" filename");
        }
        if (bArrDecode == null) {
            sb.append(" contents");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ConstructorConstructor.lambda$newDefaultImplementationConstructor$13();
    }

    @Override // defpackage.ls5
    public tv8 n(View view, tv8 tv8Var) {
        vc4 vc4VarH = tv8Var.a.h(655);
        view.setPadding(vc4VarH.a, vc4VarH.b, vc4VarH.c, vc4VarH.d);
        return tv8.b;
    }
}
