package defpackage;

import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lf5 {
    public static final Charset b = Charset.forName("UTF-8");
    public final ca3 a;

    public lf5(ca3 ca3Var) {
        this.a = ca3Var;
    }

    public static HashMap a(String str) {
        JSONObject jSONObject = new JSONObject(str);
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString = null;
            if (!jSONObject.isNull(next)) {
                strOptString = jSONObject.optString(next, null);
            }
            map.put(next, strOptString);
        }
        return map;
    }

    public static ArrayList b(String str) throws JSONException {
        JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutsState");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            String string = jSONArray.getString(i);
            try {
                arrayList.add(yn6.a(string));
            } catch (Exception e) {
                Log.w("FirebaseCrashlytics", "Failed de-serializing rollouts state. " + string, e);
            }
        }
        return arrayList;
    }

    public static String e(List list) {
        HashMap map = new HashMap();
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < list.size(); i++) {
            try {
                jSONArray.put(new JSONObject(yn6.a.c(list.get(i))));
            } catch (JSONException e) {
                Log.w("FirebaseCrashlytics", "Exception parsing rollout assignment!", e);
            }
        }
        map.put("rolloutsState", jSONArray);
        return new JSONObject(map).toString();
    }

    public static void f(File file) {
        if (file.exists() && file.delete()) {
            Log.i("FirebaseCrashlytics", "Deleted corrupt file: " + file.getAbsolutePath(), null);
        }
    }

    public static void g(File file, String str) {
        if (file.exists() && file.delete()) {
            Log.i("FirebaseCrashlytics", dj7.l("Deleted corrupt file: ", file.getAbsolutePath(), "\nReason: ", str), null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r8v4, types: [int] */
    public final Map c(String str, boolean z) throws Throwable {
        ?? r8;
        FileInputStream fileInputStream;
        Exception e;
        ca3 ca3Var = this.a;
        File fileG = z ? ca3Var.g(str, "internal-keys") : ca3Var.g(str, "keys");
        if (!fileG.exists() || fileG.length() == 0) {
            g(fileG, "The file has a length of zero for session: " + str);
            return Collections.EMPTY_MAP;
        }
        ?? r7 = 0;
        try {
            try {
                fileInputStream = new FileInputStream(fileG);
                try {
                    HashMap mapA = a(jm1.X(fileInputStream));
                    jm1.h(fileInputStream, "Failed to close user metadata file.");
                    return mapA;
                } catch (Exception e2) {
                    e = e2;
                    Log.w("FirebaseCrashlytics", "Error deserializing user metadata.", e);
                    f(fileG);
                    jm1.h(fileInputStream, "Failed to close user metadata file.");
                    return Collections.EMPTY_MAP;
                }
            } catch (Throwable th) {
                th = th;
                r7 = r8;
                jm1.h(r7, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e3) {
            fileInputStream = null;
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            jm1.h(r7, "Failed to close user metadata file.");
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.Closeable] */
    public final String d(String str) {
        FileInputStream fileInputStream;
        File fileG = this.a.g(str, "user-data");
        ?? r5 = 0;
        if (fileG.exists()) {
            ?? r2 = (fileG.length() > 0L ? 1 : (fileG.length() == 0L ? 0 : -1));
            try {
                if (r2 != 0) {
                    try {
                        fileInputStream = new FileInputStream(fileG);
                        try {
                            JSONObject jSONObject = new JSONObject(jm1.X(fileInputStream));
                            String strOptString = !jSONObject.isNull("userId") ? jSONObject.optString("userId", null) : null;
                            String str2 = "Loaded userId " + strOptString + " for session " + str;
                            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                Log.d("FirebaseCrashlytics", str2, null);
                            }
                            jm1.h(fileInputStream, "Failed to close user metadata file.");
                            return strOptString;
                        } catch (Exception e) {
                            e = e;
                            Log.w("FirebaseCrashlytics", "Error deserializing user metadata.", e);
                            f(fileG);
                            jm1.h(fileInputStream, "Failed to close user metadata file.");
                            return null;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        jm1.h(r5, "Failed to close user metadata file.");
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                r5 = r2;
            }
        }
        String strJ = xs1.j("No userId set for session ", str);
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", strJ, null);
        }
        f(fileG);
        return null;
    }

    public final void h(String str, Map map, boolean z) {
        BufferedWriter bufferedWriter;
        Exception e;
        ca3 ca3Var = this.a;
        File fileG = z ? ca3Var.g(str, "internal-keys") : ca3Var.g(str, "keys");
        BufferedWriter bufferedWriter2 = null;
        try {
            String string = new JSONObject(map).toString();
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileG), b));
            try {
                try {
                    bufferedWriter.write(string);
                    bufferedWriter.flush();
                    jm1.h(bufferedWriter, "Failed to close key/value metadata file.");
                } catch (Exception e2) {
                    e = e2;
                    Log.w("FirebaseCrashlytics", "Error serializing key/value metadata.", e);
                    f(fileG);
                    jm1.h(bufferedWriter, "Failed to close key/value metadata file.");
                }
            } catch (Throwable th) {
                th = th;
                bufferedWriter2 = bufferedWriter;
                jm1.h(bufferedWriter2, "Failed to close key/value metadata file.");
                throw th;
            }
        } catch (Exception e3) {
            bufferedWriter = null;
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            jm1.h(bufferedWriter2, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    public final void i(String str, String str2) {
        File fileG = this.a.g(str, "user-data");
        BufferedWriter bufferedWriter = null;
        try {
            try {
                kf5 kf5Var = new kf5();
                kf5Var.put("userId", str2);
                String string = kf5Var.toString();
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileG), b));
                try {
                    bufferedWriter2.write(string);
                    bufferedWriter2.flush();
                    jm1.h(bufferedWriter2, "Failed to close user metadata file.");
                } catch (Exception e) {
                    e = e;
                    bufferedWriter = bufferedWriter2;
                    Log.w("FirebaseCrashlytics", "Error serializing user metadata.", e);
                    jm1.h(bufferedWriter, "Failed to close user metadata file.");
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    jm1.h(bufferedWriter, "Failed to close user metadata file.");
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
