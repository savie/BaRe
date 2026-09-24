package defpackage;

import android.app.ApplicationStartInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.ImageDecoder;
import android.util.Base64;
import android.util.JsonReader;
import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.shaded.gson.JsonIOException;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f6 implements ObjectConstructor, e02, o98, kw6, Continuation, w98 {
    public final /* synthetic */ int a;

    public /* synthetic */ f6(ca3 ca3Var) {
        this.a = 16;
    }

    public static /* bridge */ /* synthetic */ ApplicationStartInfo c(Object obj) {
        return (ApplicationStartInfo) obj;
    }

    public static /* bridge */ /* synthetic */ ImageDecoder.Source d(Object obj) {
        return (ImageDecoder.Source) obj;
    }

    public static /* synthetic */ void f(int i, String str) {
        throw new IllegalArgumentException((str + i + '.').toString());
    }

    public static /* synthetic */ void g(Object obj) {
        throw new IllegalArgumentException(obj.toString());
    }

    public static /* synthetic */ void h(Object obj, Object obj2, String str) {
        throw new IllegalStateException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void i(Object obj, String str) {
        throw new JsonIOException(str + ((Object) obj.toString()));
    }

    public static /* synthetic */ void j(String str) throws JOSEException {
        throw new JOSEException(str);
    }

    public static /* synthetic */ void k(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalStateException(str + obj + obj2 + obj3 + obj4);
    }

    public static /* synthetic */ void l(StringBuilder sb, Object obj) {
        sb.append(obj);
        throw new IllegalStateException(sb.toString());
    }

    public static /* synthetic */ void m(Object obj, Object obj2, String str) {
        throw new xc2(str + obj + obj2);
    }

    public static /* synthetic */ void n(String str) {
        throw new NullPointerException(str);
    }

    public static /* synthetic */ void o(Object obj, Object obj2, String str) {
        throw new IllegalStateException(str + obj + obj2);
    }

    @Override // defpackage.w98
    public void a(v98 v98Var, y98 y98Var, boolean z) {
        v98Var.e();
    }

    @Override // defpackage.o98, defpackage.kw6
    public Object apply(Object obj) {
        switch (this.a) {
            case XmlPullParser.COMMENT /* 9 */:
                rc2.b.getClass();
                return f02.a.c((c02) obj).getBytes(Charset.forName("UTF-8"));
            default:
                Cursor cursorRawQuery = ((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]);
                try {
                    ArrayList arrayList = new ArrayList();
                    while (cursorRawQuery.moveToNext()) {
                        gh ghVarA = oe0.a();
                        ghVarA.n(cursorRawQuery.getString(1));
                        ghVarA.c = h66.b(cursorRawQuery.getInt(2));
                        String string = cursorRawQuery.getString(3);
                        ghVarA.b = string == null ? null : Base64.decode(string, 0);
                        arrayList.add(ghVarA.e());
                        break;
                    }
                    return arrayList;
                } finally {
                    cursorRawQuery.close();
                }
        }
    }

    @Override // defpackage.e02
    public Object b(JsonReader jsonReader) throws IOException {
        ad0 ad0Var = new ad0();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "parameterKey":
                    String strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        n("Null parameterKey");
                        return null;
                    }
                    ad0Var.b = strNextString;
                    break;
                    break;
                case "templateVersion":
                    ad0Var.d = jsonReader.nextLong();
                    ad0Var.e = (byte) (ad0Var.e | 1);
                    break;
                case "rolloutVariant":
                    jsonReader.beginObject();
                    String strNextString2 = null;
                    String strNextString3 = null;
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.getClass();
                        if (strNextName2.equals("variantId")) {
                            strNextString3 = jsonReader.nextString();
                            if (strNextString3 == null) {
                                n("Null variantId");
                                return null;
                            }
                        } else if (strNextName2.equals("rolloutId")) {
                            strNextString2 = jsonReader.nextString();
                            if (strNextString2 == null) {
                                n("Null rolloutId");
                                return null;
                            }
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    if (strNextString2 != null && strNextString3 != null) {
                        ad0Var.a = new cd0(strNextString2, strNextString3);
                        break;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        if (strNextString2 == null) {
                            sb.append(" rolloutId");
                        }
                        if (strNextString3 == null) {
                            sb.append(" variantId");
                        }
                        l0.e(xs1.k("Missing required properties:", sb));
                        return null;
                    }
                    break;
                case "parameterValue":
                    String strNextString4 = jsonReader.nextString();
                    if (strNextString4 == null) {
                        n("Null parameterValue");
                        return null;
                    }
                    ad0Var.c = strNextString4;
                    break;
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return ad0Var.a();
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ConstructorConstructor.lambda$newDefaultImplementationConstructor$14();
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        boolean z;
        if (task.isSuccessful()) {
            yb0 yb0Var = (yb0) task.getResult();
            nh4 nh4Var = nh4.c;
            nh4Var.h("Crashlytics report successfully enqueued to DataTransport: " + yb0Var.b);
            File file = yb0Var.c;
            z = true;
            if (file.delete()) {
                nh4Var.h("Deleted report file: " + file.getPath());
            } else {
                nh4Var.q("Crashlytics could not delete report file: " + file.getPath(), null);
            }
        } else {
            Log.w("FirebaseCrashlytics", "Crashlytics report could not be enqueued to DataTransport", task.getException());
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public /* synthetic */ f6(int i) {
        this.a = i;
    }
}
