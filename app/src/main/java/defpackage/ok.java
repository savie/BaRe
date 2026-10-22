package defpackage;

import android.content.SharedPreferences;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ok {
    public static final void a(long j, String str, StringBuilder sb) {
        sb.append(TokenAuthenticationScheme.SCHEME_DELIMITER + str + TokenAuthenticationScheme.SCHEME_DELIMITER);
        p93 p93Var = p93.a;
        sb.append(p93.c(Long.valueOf(j * 1048576)));
    }

    public static AppBackupLimitItem b(iu iuVar) {
        try {
            String string = iuVar.toString();
            string.getClass();
            String string2 = null;
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                string2 = sharedPreferences.getString(string, null);
                if (string2 != null && string2.length() != 0) {
                    gv7 gv7Var = w14.a;
                    Object objC = w14.c().c(string2, AppBackupLimitItem.class);
                    objC.getClass();
                    return (AppBackupLimitItem) objC;
                }
                return new AppBackupLimitItem(iuVar.toString(), null, null, 6, null);
            } catch (ClassCastException unused) {
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "AppBackupLimitUtil", io4.b(e), null, 4, null);
        }
    }

    public static ArrayList c() {
        return fl1.C0(b(iu.DATA), b(iu.EXTDATA), b(iu.MEDIA), b(iu.EXPANSION));
    }

    public static ArrayList d() {
        ArrayList arrayListC = c();
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListC) {
            if (((AppBackupLimitItem) obj).hasLimits()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public static void e(List list) {
        list.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AppBackupLimitItem appBackupLimitItem = (AppBackupLimitItem) it.next();
            Long localLimitMBs = appBackupLimitItem.getLocalLimitMBs();
            if (localLimitMBs == null || localLimitMBs.longValue() <= 0) {
                localLimitMBs = null;
            }
            Long cloudLimitMBs = appBackupLimitItem.getCloudLimitMBs();
            if (cloudLimitMBs == null || cloudLimitMBs.longValue() <= 0) {
                cloudLimitMBs = null;
            }
            AppBackupLimitItem appBackupLimitItemCopy$default = AppBackupLimitItem.copy$default(appBackupLimitItem, null, localLimitMBs, cloudLimitMBs, 1, null);
            String part = appBackupLimitItemCopy$default.getPart();
            if (appBackupLimitItemCopy$default.isValid() && appBackupLimitItemCopy$default.hasLimits()) {
                gv7 gv7Var = w14.a;
                String strI = w14.c().i(appBackupLimitItemCopy$default);
                part.getClass();
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putString(part, strI).apply();
            } else {
                part.getClass();
                SharedPreferences.Editor editor2 = cz4.k;
                if (editor2 == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor2.remove(part).apply();
            }
        }
    }
}
