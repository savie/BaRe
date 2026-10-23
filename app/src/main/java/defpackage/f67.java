package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f67 implements SharedPreferences {
    public SharedPreferences a;
    public ia b;

    public static String a(f67 f67Var, String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return ja.b(str, f67Var.b).toString();
        } catch (UnsupportedEncodingException | GeneralSecurityException unused) {
            return null;
        }
    }

    public static String d(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            byte[] bytes = str.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            return Base64.encodeToString(messageDigest.digest(), 2);
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public final String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return ja.a(new ga(str), this.b);
        } catch (UnsupportedEncodingException | GeneralSecurityException unused) {
            return null;
        }
    }

    public final String c(Context context) {
        if (!TextUtils.isEmpty(null)) {
            return null;
        }
        try {
            String str = (String) Build.class.getField("SERIAL").get(null);
            return TextUtils.isEmpty(str) ? Settings.Secure.getString(context.getContentResolver(), "android_id") : str;
        } catch (Exception unused) {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        }
    }

    @Override // android.content.SharedPreferences
    public final boolean contains(String str) {
        return this.a.contains(d(str));
    }

    @Override // android.content.SharedPreferences
    public final SharedPreferences.Editor edit() {
        return new e67(this);
    }

    @Override // android.content.SharedPreferences
    public final Map getAll() {
        Map<String, ?> all = this.a.getAll();
        HashMap map = new HashMap(all.size());
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            try {
                Object value = entry.getValue();
                if (value != null && !value.equals(this.b.toString())) {
                    map.put(entry.getKey(), b(value.toString()));
                }
            } catch (Exception unused) {
                map.put(entry.getKey(), entry.getValue().toString());
            }
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public final boolean getBoolean(String str, boolean z) {
        String string = this.a.getString(d(str), null);
        if (string == null) {
            return z;
        }
        try {
            return Boolean.parseBoolean(b(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public final float getFloat(String str, float f) {
        String string = this.a.getString(d(str), null);
        if (string == null) {
            return f;
        }
        try {
            return Float.parseFloat(b(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public final int getInt(String str, int i) {
        String string = this.a.getString(d(str), null);
        if (string == null) {
            return i;
        }
        try {
            return Integer.parseInt(b(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public final long getLong(String str, long j) {
        String string = this.a.getString(d(str), null);
        if (string == null) {
            return j;
        }
        try {
            return Long.parseLong(b(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public final String getString(String str, String str2) {
        String string = this.a.getString(d(str), null);
        String strB = b(string);
        return (string == null || strB == null) ? str2 : strB;
    }

    @Override // android.content.SharedPreferences
    public final Set getStringSet(String str, Set set) {
        Set<String> stringSet = this.a.getStringSet(d(str), null);
        if (stringSet == null) {
            return set;
        }
        HashSet hashSet = new HashSet(stringSet.size());
        Iterator<String> it = stringSet.iterator();
        while (it.hasNext()) {
            hashSet.add(b(it.next()));
        }
        return hashSet;
    }

    @Override // android.content.SharedPreferences
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.a.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.a.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }
}
