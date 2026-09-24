package defpackage;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.firebase.auth.FirebaseAuth;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class in5 extends qo0 {
    public boolean e;
    public final gv7 f = new gv7(new el(16));
    public final ix6 g = new ix6();
    public final ix6 h = new ix6();
    public final ix6 i = new ix6();
    public final ix6 j = new ix6();

    public final void j(Intent intent, final boolean z) {
        if (intent == null) {
            vr6.e$default(vr6.INSTANCE, this.b, "handleSignInResult: Sign in result intent is null", null, 4, null);
            this.h.k("handleSignInResult: Sign in result intent is null");
            return;
        }
        String str = gn5.a;
        final u10 u10Var = new u10(this, 15);
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "NoGmsClient", "handleSignInResult", null, 4, null);
        g90 g90VarJ = g90.J(intent);
        z80 z80VarE = z80.e(intent);
        final f80 f80Var = new f80(g90VarJ, z80VarE);
        hz3.b(f80Var);
        if (z80VarE != null) {
            vr6.e$default(vr6Var, "NoGmsClient", "handleSignInResult AuthError: ".concat(yc9.g0(z80VarE)), null, 4, null);
            u10Var.invoke(new dn5(z80VarE.getMessage()));
        } else {
            if (g90VarJ == null) {
                vr6.e$default(vr6Var, "NoGmsClient", "handleSignInResult AuthResponse is null", null, 4, null);
                u10Var.invoke(new dn5("handleSignInResult AuthResponse is null"));
                return;
            }
            vr6.d$default(vr6Var, "NoGmsClient", "handleSignInResult Handled Authorization Response", null, 4, null);
            SwiftApp.Companion companion = SwiftApp.d;
            new k90(SwiftApp.Companion.c()).c(g90VarJ.I(), q34.d, new j90() { // from class: bn5
                @Override // defpackage.j90
                public final void p(n58 n58Var, z80 z80Var) {
                    u10 u10Var2 = u10Var;
                    if (z80Var != null) {
                        vr6.e$default(vr6.INSTANCE, "NoGmsClient", "handleSignInResult Token Exchange failed: ".concat(yc9.g0(z80Var)), null, 4, null);
                        u10Var2.invoke(new dn5(z80Var.getMessage()));
                        return;
                    }
                    if (n58Var == null) {
                        vr6.e$default(vr6.INSTANCE, "NoGmsClient", "handleSignInResult TokenResponse is null", null, 4, null);
                        u10Var2.invoke(new dn5("handleSignInResult TokenResponse is null"));
                        return;
                    }
                    String str2 = n58Var.e;
                    String str3 = n58Var.c;
                    f80 f80Var2 = f80Var;
                    f80Var2.e(n58Var, z80Var);
                    hz3.b(f80Var2);
                    vr6 vr6Var2 = vr6.INSTANCE;
                    boolean z2 = !(str3 == null || nq7.j0(str3));
                    boolean z3 = !(str2 == null || nq7.j0(str2));
                    String str4 = n58Var.f;
                    vr6.d$default(vr6Var2, "NoGmsClient", "handleSignInResult Token exchange successful: accessToken=" + z2 + ", idToken=" + z3 + ", refreshToken=" + (!(str4 == null || nq7.j0(str4))), null, 4, null);
                    if (!z) {
                        u10Var2.invoke(en5.a);
                        return;
                    }
                    qz3 qz3Var = new qz3(str2, str3);
                    vr6.i$default(vr6Var2, "NoGmsClient", "firebaseAuthWithGoogle", null, 4, null);
                    d45 d45Var = d45.b;
                    px pxVar = new px(u10Var2, 13);
                    d45Var.getClass();
                    FirebaseAuth.getInstance().d(qz3Var).addOnCompleteListener(new iq0(d45Var, pxVar));
                }
            });
        }
    }

    public final void k(boolean z) {
        Map mapSingletonMap;
        Object next;
        String email;
        String str = gn5.a;
        List listI = z ? nc8.I("https://www.googleapis.com/auth/drive.file") : fl1.A0("openid", "email", "profile");
        String str2 = gn5.a;
        str2.getClass();
        if (z) {
            mapSingletonMap = Collections.singletonMap("access_type", "offline");
            mapSingletonMap.getClass();
        } else {
            mapSingletonMap = pv2.a;
        }
        c90 c90VarA = new uj("https://accounts.google.com/o/oauth2/v2/auth", "https://oauth2.googleapis.com/token", str2, "org.swiftapps.swiftbackup:/oauth", null, mapSingletonMap, listI, 144).a();
        d45.b.getClass();
        Intent intentB = null;
        if (d45.a() != null) {
            MFirebaseUser mFirebaseUserA = d45.a();
            if (mFirebaseUserA == null) {
                throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
            }
            Iterator<T> it = mFirebaseUserA.getProviderData().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!pe4.d(((dh8) next).l(), "google.com"));
            dh8 dh8Var = (dh8) next;
            if (dh8Var == null || (email = dh8Var.m()) == null) {
                email = mFirebaseUserA.getEmail();
            }
            if (email != null) {
                jb9.i(email, "login hint must be null or not empty");
            }
            c90VarA.c = email;
        }
        e90 e90VarA = c90VarA.a();
        try {
            SwiftApp.Companion companion = SwiftApp.d;
            intentB = uj.b(SwiftApp.Companion.c(), e90VarA);
        } catch (Exception e) {
            Log.e("NoGmsClient", "getSignInIntent", e);
            String strB = io4.b(e);
            vr6.e$default(vr6.INSTANCE, "NoGmsClient", strB, null, 4, null);
            SwiftApp.Companion companion2 = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            zn4 zn4Var = zn4.a;
            dj7.y(contextC, strB);
        }
        if (intentB == null) {
            return;
        }
        if (z) {
            this.j.k(intentB);
        } else {
            this.i.k(intentB);
        }
    }
}
