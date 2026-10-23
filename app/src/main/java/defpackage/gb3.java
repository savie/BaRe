package defpackage;

import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.cloud.protocols.filen.FilenCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gb3 {
    public static void a(FilenCredentials filenCredentials) {
        filenCredentials.getClass();
        gv7 gv7Var = w14.a;
        String strI = w14.c().i(filenCredentials);
        gv7 gv7Var2 = y32.a;
        String strE = y32.e(strI);
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString("filen_credentials", strE).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }
}
