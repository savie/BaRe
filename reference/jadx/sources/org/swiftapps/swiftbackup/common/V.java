package org.swiftapps.swiftbackup.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import defpackage.cz4;
import defpackage.f67;
import defpackage.gv7;
import defpackage.ia;
import defpackage.io4;
import defpackage.j48;
import defpackage.ja;
import defpackage.jx;
import defpackage.kw2;
import defpackage.l39;
import defpackage.l48;
import defpackage.os4;
import defpackage.pe4;
import defpackage.q9;
import defpackage.ty3;
import defpackage.uq7;
import defpackage.us2;
import defpackage.vk9;
import defpackage.vr6;
import defpackage.w14;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class V {
    private static boolean vp;
    public static final V INSTANCE = new V();
    private static final String logTag = "V";
    private static final os4 z$delegate = new gv7(new q9(17));

    private V() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _get_a_$lambda$0() {
        return INSTANCE.getZ().getBoolean("f4s6woi0e98", false);
    }

    private static final MFirebaseUser _get_non_$lambda$0(String str) {
        gv7 gv7Var = w14.a;
        return (MFirebaseUser) w14.c().c(str, MFirebaseUser.class);
    }

    private static final String _set_non_$lambda$0$0(MFirebaseUser mFirebaseUser) {
        gv7 gv7Var = w14.a;
        return w14.c().i(mFirebaseUser);
    }

    private final boolean isUseSecurePreferences() {
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean("use_alt_preferences", false);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    private final void setUseSecurePreferences(boolean z) {
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putBoolean("use_alt_preferences", z).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SharedPreferences z_delegate$lambda$0() throws NoSuchAlgorithmException {
        if (INSTANCE.isUseSecurePreferences()) {
            return z_delegate$lambda$0$getSecurePreferences();
        }
        try {
            return z_delegate$lambda$0$getEncryptedPreferences();
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            String str = logTag;
            str.getClass();
            vr6.e$default(vr6Var, str, "Failed keystore init: ".concat(io4.b(e)), null, 4, null);
            f67 f67VarZ_delegate$lambda$0$getSecurePreferences = z_delegate$lambda$0$getSecurePreferences();
            INSTANCE.setUseSecurePreferences(true);
            return f67VarZ_delegate$lambda$0$getSecurePreferences;
        }
    }

    private static final SharedPreferences z_delegate$lambda$0$getEncryptedPreferences() {
        kw2 kw2Var;
        Charset charset = kw2.e;
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        synchronized (kw2.f) {
            SharedPreferences sharedPreferences = contextC.getApplicationContext().getSharedPreferences("esprefs", 0);
            ty3 ty3VarB = us2.B();
            SecureRandom secureRandom = l48.a;
            sharedPreferences.getClass();
            kw2Var = new kw2(sharedPreferences, new vk9(l48.a(sharedPreferences, "__androidx_security_crypto_encrypted_prefs_key_keyset__", ty3VarB, j48.AES_SIV), 17), new l39(l48.a(sharedPreferences, "__androidx_security_crypto_encrypted_prefs_value_keyset__", ty3VarB, j48.AES_GCM)));
        }
        return kw2Var;
    }

    private static final f67 z_delegate$lambda$0$getSecurePreferences() throws NoSuchAlgorithmException {
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        String strD = SwiftApp.Companion.d();
        if (strD == null) {
            strD = "";
        }
        f67 f67Var = new f67();
        if (f67Var.a == null) {
            f67Var.a = TextUtils.isEmpty(null) ? PreferenceManager.getDefaultSharedPreferences(contextC) : contextC.getSharedPreferences(null, 0);
        }
        if (!TextUtils.isEmpty(strD)) {
            try {
                f67Var.b = ja.d(strD, f67Var.c(contextC).getBytes());
                return f67Var;
            } catch (GeneralSecurityException e) {
                throw new IllegalStateException(e);
            }
        }
        try {
            String strD2 = f67.d(ja.d(contextC.getPackageName(), f67Var.c(contextC).getBytes()).toString());
            String string = f67Var.a.getString(strD2, null);
            if (string == null) {
                ja.c();
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
                keyGenerator.init(128);
                SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
                ja.c();
                byte[] bArr = new byte[32];
                new SecureRandom().nextBytes(bArr);
                ia iaVar = new ia(secretKeyGenerateKey, new SecretKeySpec(bArr, "HmacSHA256"));
                f67Var.b = iaVar;
                if (!f67Var.a.edit().putString(strD2, iaVar.toString()).commit()) {
                    Log.w("f67", "Key not committed to prefs");
                }
            } else {
                f67Var.b = ja.e(string);
            }
            if (f67Var.b != null) {
                return f67Var;
            }
            throw new GeneralSecurityException("Problem generating Key");
        } catch (GeneralSecurityException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public final boolean getA() {
        Object objInvoke;
        try {
            objInvoke = new jx(25).invoke();
        } catch (Exception unused) {
            objInvoke = null;
        }
        Boolean bool = (Boolean) objInvoke;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final Integer getB() {
        try {
            int i = getZ().getInt("sdlnerg304gn;29", -1);
            if (i == -1) {
                return null;
            }
            return Integer.valueOf(i);
        } catch (Exception unused) {
            return null;
        }
    }

    public final Boolean getC() {
        return Boolean.valueOf(getZ().getBoolean("xy399302nidlxowdkkeng", false));
    }

    public final boolean getG() {
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean("8475d34h4k", false);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public final MFirebaseUser getNon() {
        String string;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("456987168448", null);
            if (string == null || string.length() == 0) {
                return null;
            }
            try {
                return _get_non_$lambda$0(string);
            } catch (Exception unused) {
                return null;
            }
        } catch (ClassCastException unused2) {
            string = null;
        }
    }

    public final boolean getT() {
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean("392ksm94502", false);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public final long getV() {
        String string;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                string = sharedPreferences.getString("9s1vek93j", null);
                return io4.h(string != null ? uq7.Y(string) : null);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    public final boolean getVp() {
        return vp;
    }

    public final SharedPreferences getZ() {
        return (SharedPreferences) z$delegate.getValue();
    }

    public final void setA(boolean z) {
        getZ().edit().putBoolean("f4s6woi0e98", z).apply();
    }

    public final void setB(Integer num) {
        getZ().edit().putInt("sdlnerg304gn;29", num != null ? num.intValue() : -1).apply();
    }

    public final void setC(Boolean bool) {
        getZ().edit().putBoolean("xy399302nidlxowdkkeng", bool != null ? bool.booleanValue() : false).apply();
    }

    public final void setG(boolean z) {
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putBoolean("8475d34h4k", z).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public final void setNon(MFirebaseUser mFirebaseUser) {
        String str_set_non_$lambda$0$0;
        if (mFirebaseUser != null) {
            try {
                str_set_non_$lambda$0$0 = _set_non_$lambda$0$0(mFirebaseUser);
            } catch (Exception unused) {
                str_set_non_$lambda$0$0 = null;
            }
        } else {
            str_set_non_$lambda$0$0 = null;
        }
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString("456987168448", str_set_non_$lambda$0$0).commit();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public final void setT(boolean z) {
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putBoolean("392ksm94502", z).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public final void setV(long j) {
        String strValueOf = String.valueOf(j);
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString("9s1vek93j", strValueOf).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public final void setVp(boolean z) {
        vp = z;
    }
}
