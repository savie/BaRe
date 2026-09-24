package defpackage;

import android.content.SharedPreferences;
import android.net.Uri;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.jobs.AlarmReceiver;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d45 {
    public static final d45 b = new d45();
    public final LinkedHashSet a = new LinkedHashSet();

    public static MFirebaseUser a() {
        V v = V.INSTANCE;
        MFirebaseUser non = v.getNon();
        if (non != null) {
            v.setA(false);
            return non;
        }
        p49 p49VarC = FirebaseAuth.getInstance().c();
        if (p49VarC == null) {
            return null;
        }
        String str = p49VarC.b.a;
        str.getClass();
        String str2 = p49VarC.b.f;
        str2.getClass();
        w1a w1aVar = p49VarC.b;
        String str3 = w1aVar.c;
        Uri uriC = w1aVar.c();
        String string = uriC != null ? uriC.toString() : null;
        ArrayList arrayList = p49VarC.e;
        arrayList.getClass();
        String str4 = p49VarC.b.b;
        str4.getClass();
        return new MFirebaseUser(str, str2, false, str3, string, arrayList, str4);
    }

    public final void b() {
        boolean z;
        boolean z2;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            SwiftApp swiftApp = (SwiftApp) ((a45) it.next());
            swiftApp.getClass();
            b.getClass();
            MFirebaseUser mFirebaseUserA = a();
            if (mFirebaseUserA != null) {
                FirebaseCrashlytics.getInstance().setUserId(mFirebaseUserA.getUid());
                String uid = mFirebaseUserA.getUid();
                uid.getClass();
                SwiftApp.Companion companion = SwiftApp.d;
                List<FirebaseApp> apps = FirebaseApp.getApps(SwiftApp.Companion.c());
                apps.getClass();
                if (!apps.isEmpty()) {
                    FirebaseCrashlytics.getInstance().setCustomKey("uid", uid);
                }
                ah8.Companion.fromDatabase(new nu(13));
            }
            if (mFirebaseUserA == null) {
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z = sharedPreferences.getBoolean("KEY_FIRST_START", true);
                } catch (ClassCastException unused) {
                    z = true;
                }
                if (z) {
                    try {
                        SharedPreferences sharedPreferences2 = cz4.f;
                        if (sharedPreferences2 == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        z2 = sharedPreferences2.getBoolean("KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED", false);
                    } catch (ClassCastException unused2) {
                        z2 = false;
                    }
                    if (!z2) {
                        continue;
                    }
                }
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putBoolean("KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED", false).commit();
                SharedPreferences.Editor editor2 = cz4.k;
                if (editor2 == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor2.putBoolean("KEY_FIRST_START", true).commit();
                ((AlarmReceiver) swiftApp.c.getValue()).a();
                ((ix6) swiftApp.b.getValue()).k(Boolean.TRUE);
            }
        }
    }

    public final void c() {
        boolean z;
        Log.d("d45", "signOut: " + a());
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("is_migrating_to_google_sign_in", false);
            if (z) {
                vr6.i$default(vr6.INSTANCE, "d45", "Migrating user to Google Sign-in", null, 4, null);
            }
            MFirebaseUser mFirebaseUserA = a();
            boolean z2 = (mFirebaseUserA == null || mFirebaseUserA.isAnonymous()) ? false : true;
            FirebaseAuth.getInstance().e();
            Log.d("d45", "clearAnonymousSignIn");
            V v = V.INSTANCE;
            v.setNon(null);
            if (z2) {
                Log.i("d45", "signOut: Clearing data");
                g00 g00Var = g00.a;
                SwiftApp.Companion companion = SwiftApp.d;
                String packageName = SwiftApp.Companion.c().getPackageName();
                packageName.getClass();
                g00.c(packageName, true);
            }
            v.setG(false);
            v.getZ().edit().clear().commit();
            b();
        } catch (ClassCastException unused) {
            z = false;
        }
    }
}
