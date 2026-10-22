package defpackage;

import android.util.JsonReader;
import com.microsoft.identity.common.logging.Logger;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l0 implements er5, ObjectConstructor, e02, mo1, ny6, h9 {
    public final /* synthetic */ int a;

    public /* synthetic */ l0(int i) {
        this.a = i;
    }

    public static /* synthetic */ void a() {
        throw new IndexOutOfBoundsException();
    }

    public static /* synthetic */ void c(int i, int i2) {
        throw new IllegalArgumentException("Length too large: " + i + i2);
    }

    public static /* synthetic */ void d(Object obj, String str) throws i0 {
        throw new i0(str + obj);
    }

    public static /* synthetic */ void e(String str) {
        throw new IllegalStateException(str);
    }

    public static /* synthetic */ void f(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void g(String str, Object obj, Object obj2, Object obj3, Throwable th) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3, th);
    }

    public static /* synthetic */ void i(String str, Object[] objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public static /* synthetic */ void j(Object obj, String str) throws ParseException {
        throw new ParseException(str + obj, 0);
    }

    public static /* synthetic */ void k(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    @Override // defpackage.e02
    public Object b(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        byte b = 0;
        int iNextInt = 0;
        String strNextString = null;
        List listD = null;
        while (true) {
            if (!jsonReader.hasNext()) {
                jsonReader.endObject();
                if (b == 1 && strNextString != null && listD != null) {
                    return new sc0(iNextInt, strNextString, listD);
                }
                StringBuilder sb = new StringBuilder();
                if (strNextString == null) {
                    sb.append(" name");
                }
                if ((b & 1) == 0) {
                    sb.append(" importance");
                }
                if (listD == null) {
                    sb.append(" frames");
                }
                e(xs1.k("Missing required properties:", sb));
                return null;
            }
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "frames":
                    listD = f02.d(jsonReader, new q(7));
                    if (listD == null) {
                        f6.n("Null frames");
                        return null;
                    }
                    break;
                    break;
                case "name":
                    strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        f6.n("Null name");
                        return null;
                    }
                    break;
                    break;
                case "importance":
                    iNextInt = jsonReader.nextInt();
                    b = (byte) (b | 1);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // defpackage.er5
    public Object construct() {
        switch (this.a) {
            case 4:
                return new ArrayList();
            default:
                return ConstructorConstructor.lambda$newDefaultImplementationConstructor$15();
        }
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:onCreate", "Legacy FIDO2 API result received.");
    }

    @Override // defpackage.ny6
    public boolean isCancellationRequested() {
        return false;
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        Set setA = pp0Var.a(nc6.a(wd0.class));
        ty3 ty3Var = ty3.b;
        if (ty3Var == null) {
            synchronized (ty3.class) {
                try {
                    ty3Var = ty3.b;
                    if (ty3Var == null) {
                        ty3Var = new ty3(0);
                        ty3.b = ty3Var;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return new fg2(setA, ty3Var);
    }
}
