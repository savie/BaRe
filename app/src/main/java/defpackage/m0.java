package defpackage;

import android.util.Base64;
import android.util.JsonReader;
import com.google.android.recaptcha.internal.zznn;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.NoSuchElementException;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m0 implements ObjectConstructor, e02, mo1, ig2 {
    public static /* synthetic */ void d() {
        throw new NoSuchElementException();
    }

    public static /* synthetic */ void e(int i, int i2) throws EOFException {
        throw new EOFException("DEF length " + i + ((Object) " object truncated by ") + i2);
    }

    public static /* synthetic */ void f(Object obj, Object obj2, String str) {
        throw new IllegalStateException(str + obj + obj2);
    }

    public static /* synthetic */ void g(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    public static /* synthetic */ void h(String str) throws GeneralSecurityException {
        throw new GeneralSecurityException(str);
    }

    public static /* synthetic */ void i(StringBuilder sb, Object obj) {
        sb.append(obj);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void j(Object obj, String str) {
        throw new IllegalStateException((str + obj + ((Object) "'")).toString());
    }

    public static /* synthetic */ void k(String str) throws zznn {
        throw new zznn(str);
    }

    public static /* synthetic */ void l(Object obj, String str) throws FileNotFoundException {
        throw new FileNotFoundException(str + obj);
    }

    @Override // defpackage.e02
    public Object b(JsonReader jsonReader) throws IOException {
        int i;
        jsonReader.beginObject();
        String strNextString = null;
        String str = null;
        long jNextLong = 0;
        long jNextLong2 = 0;
        byte b = 0;
        while (true) {
            if (!jsonReader.hasNext()) {
                jsonReader.endObject();
                if (b == 3 && strNextString != null) {
                    return new pc0(strNextString, str, jNextLong, jNextLong2);
                }
                StringBuilder sb = new StringBuilder();
                if ((b & 1) == 0) {
                    sb.append(" baseAddress");
                }
                if ((b & 2) == 0) {
                    sb.append(" size");
                }
                if (strNextString == null) {
                    sb.append(" name");
                }
                l0.e(xs1.k("Missing required properties:", sb));
                return null;
            }
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "name":
                    strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        f6.n("Null name");
                        return null;
                    }
                    continue;
                    break;
                    break;
                case "size":
                    jNextLong2 = jsonReader.nextLong();
                    i = b | 2;
                    break;
                case "uuid":
                    str = new String(Base64.decode(jsonReader.nextString(), 2), c02.a);
                    continue;
                    break;
                case "baseAddress":
                    jNextLong = jsonReader.nextLong();
                    i = b | 1;
                    break;
                default:
                    jsonReader.skipValue();
                    continue;
                    break;
            }
            b = (byte) i;
        }
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ConstructorConstructor.lambda$newDefaultImplementationConstructor$16();
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        return (ScheduledExecutorService) ExecutorsRegistrar.a.get();
    }

    @Override // defpackage.ig2
    public void c(ga6 ga6Var) {
    }
}
