package defpackage;

import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m08 {
    public static String a(dd1 dd1Var) {
        return eq3.j(dd1Var.getConstant(), "_token");
    }

    public static TeraBoxTokenCredentials b(dd1 dd1Var) {
        dd1Var.getClass();
        String strA = a(dd1Var);
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString(strA, null);
            TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) io4.j("TeraBoxTokenCredentials", "savedCredentials", false, new cr1(string, 2), 12);
            if (teraBoxTokenCredentials != null) {
                return teraBoxTokenCredentials;
            }
            return new TeraBoxTokenCredentials(null, null, 0L, null, null, null, null, null, 255, null);
        } catch (ClassCastException unused) {
        }
    }

    public static void c(dd1 dd1Var, TeraBoxTokenCredentials teraBoxTokenCredentials) {
        dd1Var.getClass();
        teraBoxTokenCredentials.getClass();
        String strA = a(dd1Var);
        gv7 gv7Var = w14.a;
        String strI = w14.c().i(teraBoxTokenCredentials);
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString(strA, strI).commit();
        } else {
            pe4.F("editor");
            throw null;
        }
    }
}
