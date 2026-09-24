package defpackage;

import android.content.SharedPreferences;
import android.util.Base64;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kw2 implements SharedPreferences {
    public static final Charset e = StandardCharsets.UTF_8;
    public static final Object f = new Object();
    public final SharedPreferences a;
    public final vk9 b;
    public final l39 c;
    public final CopyOnWriteArrayList d = new CopyOnWriteArrayList();

    public kw2(SharedPreferences sharedPreferences, vk9 vk9Var, l39 l39Var) {
        this.a = sharedPreferences;
        this.b = vk9Var;
        this.c = l39Var;
    }

    public static final pw5 a(kw2 kw2Var, String str, byte[] bArr) {
        String strB = kw2Var.b(str);
        l39 l39Var = kw2Var.c;
        Charset charset = e;
        charset.getClass();
        byte[] bytes = strB.getBytes(charset);
        bytes.getClass();
        i48 i48VarA = ((k48) l39Var.b).a();
        byte[] bArrA = i48VarA.a();
        byte[] bArr2 = i48VarA.b;
        byte[] bArr3 = new byte[12];
        ((SecureRandom) l39Var.c).nextBytes(bArr3);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, new SecretKeySpec(bArr2, "AES"), new GCMParameterSpec(128, bArr3));
        if (bytes.length != 0) {
            cipher.updateAAD(bytes);
        }
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        bArrDoFinal.getClass();
        String strEncodeToString = Base64.encodeToString(x50.u0(bArrA, x50.u0(bArr3, bArrDoFinal)), 2);
        strEncodeToString.getClass();
        return new pw5(strB, strEncodeToString);
    }

    public static boolean d(String str) {
        return pe4.d(str, "__androidx_security_crypto_encrypted_prefs_key_keyset__") || pe4.d(str, "__androidx_security_crypto_encrypted_prefs_value_keyset__");
    }

    public static void e(String str) {
        if (d(str)) {
            throw new SecurityException(eq3.j(str, " is a reserved key for the encryption keyset."));
        }
    }

    public final String b(String str) {
        if (str == null) {
            str = "__NULL__";
        }
        try {
            vk9 vk9Var = this.b;
            Charset charset = e;
            charset.getClass();
            byte[] bytes = str.getBytes(charset);
            bytes.getClass();
            byte[] bytes2 = "esprefs".getBytes(charset);
            bytes2.getClass();
            String strEncodeToString = Base64.encodeToString(vk9Var.i(bytes, bytes2), 2);
            strEncodeToString.getClass();
            return strEncodeToString;
        } catch (GeneralSecurityException e2) {
            throw new SecurityException("Could not encrypt key.", e2);
        }
    }

    public final Serializable c(String str) {
        Charset charset = e;
        e(str);
        String strB = b(str);
        String string = this.a.getString(strB, null);
        if (string != null) {
            try {
                byte[] bArrDecode = Base64.decode(string, 0);
                bArrDecode.getClass();
                l39 l39Var = this.c;
                charset.getClass();
                byte[] bytes = strB.getBytes(charset);
                bytes.getClass();
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(l39Var.b(bArrDecode, bytes));
                hw2 hw2Var = iw2.Companion;
                int i = byteBufferWrap.getInt();
                hw2Var.getClass();
                switch (jw2.a[hw2.a(i).ordinal()]) {
                    case 1:
                        byte[] bArr = new byte[byteBufferWrap.getInt()];
                        byteBufferWrap.get(bArr);
                        String str2 = new String(bArr, charset);
                        if (!str2.equals("__NULL__")) {
                            return str2;
                        }
                        break;
                    case 2:
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        while (byteBufferWrap.hasRemaining()) {
                            byte[] bArr2 = new byte[byteBufferWrap.getInt()];
                            byteBufferWrap.get(bArr2);
                            linkedHashSet.add(new String(bArr2, charset));
                        }
                        if (linkedHashSet.size() != 1 || !pe4.d(el1.R0(linkedHashSet), "__NULL__")) {
                            return linkedHashSet;
                        }
                        break;
                        break;
                    case 3:
                        return Integer.valueOf(byteBufferWrap.getInt());
                    case 4:
                        return Long.valueOf(byteBufferWrap.getLong());
                    case 5:
                        return Float.valueOf(byteBufferWrap.getFloat());
                    case 6:
                        return Boolean.valueOf(byteBufferWrap.get() != 0);
                    default:
                        throw new mn5();
                }
            } catch (Exception e2) {
                throw new SecurityException("Could not decrypt value.", e2);
            }
        }
        return null;
    }

    @Override // android.content.SharedPreferences
    public final boolean contains(String str) {
        e(str);
        return this.a.contains(b(str));
    }

    @Override // android.content.SharedPreferences
    public final SharedPreferences.Editor edit() {
        SharedPreferences.Editor editorEdit = this.a.edit();
        editorEdit.getClass();
        return new gw2(this, editorEdit);
    }

    @Override // android.content.SharedPreferences
    public final Map getAll() {
        HashMap map = new HashMap();
        Set<String> setKeySet = this.a.getAll().keySet();
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (!d((String) obj)) {
                arrayList.add(obj);
            }
        }
        for (String str : arrayList) {
            str.getClass();
            try {
                vk9 vk9Var = this.b;
                byte[] bArrDecode = Base64.decode(str, 0);
                bArrDecode.getClass();
                Charset charset = e;
                charset.getClass();
                byte[] bytes = "esprefs".getBytes(charset);
                bytes.getClass();
                String str2 = new String(vk9Var.d(bArrDecode, bytes), charset);
                if (str2.equals("__NULL__")) {
                    str2 = null;
                }
                map.put(str2, c(str2));
            } catch (GeneralSecurityException e2) {
                throw new SecurityException("Could not decrypt key.", e2);
            }
        }
        nc8.f(map);
        return map;
    }

    @Override // android.content.SharedPreferences
    public final boolean getBoolean(String str, boolean z) {
        Serializable serializableC = c(str);
        Boolean bool = serializableC instanceof Boolean ? (Boolean) serializableC : null;
        return bool != null ? bool.booleanValue() : z;
    }

    @Override // android.content.SharedPreferences
    public final float getFloat(String str, float f2) {
        Serializable serializableC = c(str);
        Float f3 = serializableC instanceof Float ? (Float) serializableC : null;
        return f3 != null ? f3.floatValue() : f2;
    }

    @Override // android.content.SharedPreferences
    public final int getInt(String str, int i) {
        Serializable serializableC = c(str);
        Integer num = serializableC instanceof Integer ? (Integer) serializableC : null;
        return num != null ? num.intValue() : i;
    }

    @Override // android.content.SharedPreferences
    public final long getLong(String str, long j) {
        Serializable serializableC = c(str);
        Long l = serializableC instanceof Long ? (Long) serializableC : null;
        return l != null ? l.longValue() : j;
    }

    @Override // android.content.SharedPreferences
    public final String getString(String str, String str2) {
        Serializable serializableC = c(str);
        String str3 = serializableC instanceof String ? (String) serializableC : null;
        return str3 == null ? str2 : str3;
    }

    @Override // android.content.SharedPreferences
    public final Set getStringSet(String str, Set set) {
        Serializable serializableC = c(str);
        if (serializableC instanceof Set) {
            LinkedHashSet linkedHashSet = new LinkedHashSet((Set) serializableC);
            if (linkedHashSet.isEmpty()) {
                linkedHashSet = null;
            }
            if (linkedHashSet != null) {
                return linkedHashSet;
            }
        }
        return set;
    }

    @Override // android.content.SharedPreferences
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        onSharedPreferenceChangeListener.getClass();
        this.d.add(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        onSharedPreferenceChangeListener.getClass();
        this.d.remove(onSharedPreferenceChangeListener);
    }
}
