package defpackage;

import android.content.SharedPreferences;
import android.os.Looper;
import android.util.Log;
import com.google.gson.reflect.TypeToken;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class w14 {
    public static final gv7 a = new gv7(new a());
    public static final gv7 b = new gv7(new dl(14));

    public static Object a(q63 q63Var, Class cls) {
        q63Var.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        if (!q63Var.j()) {
            Log.i("GsonHelper", "fromEncryptedFile: File not found at " + q63Var);
            return null;
        }
        try {
            gv7 gv7Var = y32.a;
            String strD = y32.d ? y32.d(q63Var.w(true), true ^ cls.equals(ji.class)) : null;
            if (strD != null && strD.length() != 0) {
                return c().c(strD, cls);
            }
            return null;
        } catch (Exception unused) {
            vr6.de$default(vr6.INSTANCE, "GsonHelper", eq3.l("Unable to parse encrypted file: [", q63Var.p(), "] of class type: [", cls.getSimpleName(), "]"), null, 4, null);
            return null;
        }
    }

    public static Object b(q63 q63Var, Class cls, boolean z) {
        q63Var.getClass();
        if (z && pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        if (q63Var.j()) {
            try {
                String strH = q63.H(q63Var);
                if (strH.length() > 0) {
                    return c().c(strH, cls);
                }
            } catch (Exception e) {
                vr6 vr6Var = vr6.INSTANCE;
                String message = e.getMessage();
                if (message == null) {
                    message = "";
                }
                vr6.e$default(vr6Var, "GsonHelper.fromFile ERROR: ", message, null, 4, null);
                return null;
            }
        }
        return null;
    }

    public static com.google.gson.a c() {
        Object value = a.getValue();
        value.getClass();
        return (com.google.gson.a) value;
    }

    public static com.google.gson.a d() {
        Object value = b.getValue();
        value.getClass();
        return (com.google.gson.a) value;
    }

    public static ArrayList e(q63 q63Var, Class cls) {
        q63Var.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            SwiftApp.Companion companion = SwiftApp.d;
            q63 q63Var2 = new q63(SwiftApp.Companion.c().getCacheDir(), "temp", 2);
            q63Var2.h();
            gv7 gv7Var = y32.a;
            if (y32.d && !y32.b(new ck(q63Var, 25), new u14(q63Var2, 0))) {
                vr6.w$default(vr6.INSTANCE, "GsonHelper", "Retrying alternative decryption", null, 4, null);
                y32.c(q63Var.w(true), q63Var2.F(true));
            }
            tl4 tl4Var = new tl4(new InputStreamReader(q63Var2.w(true), Charset.defaultCharset()));
            try {
                tl4Var.beginObject();
                tl4Var.nextName();
                tl4Var.beginArray();
                while (tl4Var.hasNext()) {
                    arrayList.add(c().a(tl4Var, TypeToken.get((Type) cls)));
                }
                tl4Var.endArray();
                tl4Var.endObject();
                tl4Var.close();
                return arrayList;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(tl4Var, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, "GsonHelper", "Unable to parse encrypted file: [" + q63Var.p() + "] of class type: [" + cls + "]", null, 4, null);
            vr6.e$default(vr6Var, "GsonHelper", String.valueOf(e), null, 4, null);
            return arrayList;
        }
    }

    public static boolean f(Object obj, q63 q63Var) {
        obj.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        String strI = c().i(obj);
        gv7 gv7Var = y32.a;
        if (y32.d) {
            boolean z = q63.d;
            OutputStream outputStreamF = q63Var.F(true);
            if (!pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                try {
                    qk5 qk5VarD = y32.g().d(outputStreamF, y32.h());
                    try {
                        byte[] bytes = strI.getBytes(f51.a);
                        bytes.getClass();
                        qk5VarD.write(bytes, 0, bytes.length);
                        qk5VarD.close();
                        return true;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(qk5VarD, th);
                            throw th2;
                        }
                    }
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, "CryptoHelper", "encryptJsonString: " + e, null, 4, null);
                    return false;
                }
            }
            d6.o();
        }
        return false;
    }

    public static boolean g(Object obj, q63 q63Var, boolean z) {
        obj.getClass();
        q63Var.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        try {
            q63.K(q63Var, (z ? d() : c()).i(obj));
            return true;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "GsonHelper", "saveToFile", e, null, 8, null);
            return false;
        }
    }

    public static void h(Object obj, String str) {
        if (obj == null) {
            SharedPreferences.Editor editor = cz4.k;
            if (editor != null) {
                editor.remove(str).apply();
                return;
            } else {
                pe4.F("editor");
                throw null;
            }
        }
        String strI = c().i(obj);
        SharedPreferences.Editor editor2 = cz4.k;
        if (editor2 != null) {
            editor2.putString(str, strI).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }
}
