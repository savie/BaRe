package defpackage;

import android.content.Context;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.View;
import com.google.android.material.card.MaterialCardView;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.ProviderException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class so8 implements jk8 {
    public Object a = null;
    public Object b = null;
    public Object c = null;
    public Object d = null;
    public Object e = null;
    public Object f = null;
    public Object k = null;
    public Object n;

    public static ln5 a(byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            uz9 uz9VarV = uz9.v(byteArrayInputStream, f79.a);
            byteArrayInputStream.close();
            uz9 uz9VarX = ix0.j(uz9VarV).x();
            j79 j79Var = (j79) uz9VarX.d(5);
            if (!j79Var.a.equals(uz9VarX)) {
                if (!j79Var.b.s()) {
                    j79Var.d();
                }
                j79.a(j79Var.b, uz9VarX);
            }
            return new ln5((tz9) j79Var, 17);
        } catch (Throwable th) {
            byteArrayInputStream.close();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0071 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0073 A[Catch: all -> 0x007a, TRY_ENTER, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0083 A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x009a A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00a2 A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00ad A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00bd A[Catch: all -> 0x007a, IOException -> 0x00c3, TRY_ENTER, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c5 A[Catch: all -> 0x007a, IOException -> 0x00c3, TRY_LEAVE, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e2 A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00ea A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0102 A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0108 A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0110 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x0112 A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0119 A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:14:0x002b, B:16:0x003b, B:18:0x0041, B:20:0x004a, B:32:0x0073, B:35:0x007d, B:37:0x0083, B:39:0x009a, B:41:0x00a2, B:43:0x00b7, B:45:0x00bd, B:49:0x00cc, B:56:0x00f2, B:66:0x011f, B:67:0x0124, B:52:0x00e2, B:54:0x00ea, B:55:0x00ed, B:48:0x00c5, B:57:0x00fc, B:58:0x0101, B:42:0x00ad, B:59:0x0102, B:60:0x0107, B:61:0x0108, B:62:0x010f, B:64:0x0112, B:65:0x0119, B:23:0x0052, B:25:0x0057, B:26:0x0064, B:19:0x0046, B:27:0x0065), top: B:81:0x002b, outer: #0, inners: #1, #2 }] */
    public synchronized tr9 b() {
        byte[] bArrC0;
        String str;
        tr9 tr9Var;
        rb rbVar;
        ix0 ix0VarH;
        la laVar;
        Context context;
        String str2;
        String str3;
        Context applicationContext;
        xr9 xr9Var;
        uz9 uz9VarX;
        j79 j79Var;
        try {
            if (((String) this.b) == null) {
                throw new IllegalArgumentException("keysetName cannot be null");
            }
            mz9 mz9Var = (mz9) this.k;
            if (mz9Var != null && ((rb) this.f) == null) {
                this.f = new rb(nc8.t0(mz9Var.c()), 28);
            }
            synchronized (tr9.c) {
                try {
                    Context context2 = (Context) this.a;
                    String str4 = (String) this.b;
                    String str5 = (String) this.c;
                    if (str4 != null) {
                        Context applicationContext2 = context2.getApplicationContext();
                        try {
                            String string = (str5 == null ? PreferenceManager.getDefaultSharedPreferences(applicationContext2) : applicationContext2.getSharedPreferences(str5, 0)).getString(str4, null);
                            if (string != null) {
                                bArrC0 = ho6.c0(string);
                            }
                            str = (String) this.d;
                            if (bArrC0 == null) {
                                if (str != null) {
                                    this.e = d();
                                }
                                rbVar = (rb) this.f;
                                if (rbVar != null) {
                                    throw new GeneralSecurityException("cannot read or generate keyset");
                                }
                                ix0VarH = ix0.h(rbVar);
                                context = (Context) this.a;
                                str2 = (String) this.b;
                                str3 = (String) this.c;
                                laVar = new la();
                                if (str2 != null) {
                                    c6.f("keysetName cannot be null");
                                    throw null;
                                }
                                laVar.b = str2;
                                applicationContext = context.getApplicationContext();
                                if (str3 == null) {
                                    laVar.a = PreferenceManager.getDefaultSharedPreferences(applicationContext).edit();
                                } else {
                                    laVar.a = applicationContext.getSharedPreferences(str3, 0).edit();
                                }
                                xr9Var = (xr9) this.e;
                                try {
                                    if (xr9Var != null) {
                                        ix0VarH.r(laVar, xr9Var, new byte[0]);
                                    } else {
                                        laVar.m(ix0VarH.x());
                                    }
                                    uz9VarX = ix0VarH.x();
                                    j79Var = (j79) uz9VarX.d(5);
                                    if (!j79Var.a.equals(uz9VarX)) {
                                        if (!j79Var.b.s()) {
                                            j79Var.d();
                                        }
                                        j79.a(j79Var.b, uz9VarX);
                                    }
                                    this.n = new ln5((tz9) j79Var, 17);
                                } catch (IOException e) {
                                    throw new GeneralSecurityException(e);
                                }
                            } else if (str != null) {
                                this.n = c(bArrC0);
                            } else {
                                this.n = a(bArrC0);
                            }
                            tr9Var = new tr9(this);
                        } catch (ClassCastException | IllegalArgumentException unused) {
                            throw new CharConversionException(eq3.k("can't read keyset; the pref value ", str4, " is not a valid hex string"));
                        }
                    } else {
                        c6.f("keysetName cannot be null");
                    }
                    bArrC0 = null;
                    str = (String) this.d;
                    if (bArrC0 == null) {
                        if (str != null) {
                            this.e = d();
                        }
                        rbVar = (rb) this.f;
                        if (rbVar != null) {
                            throw new GeneralSecurityException("cannot read or generate keyset");
                        }
                        ix0VarH = ix0.h(rbVar);
                        context = (Context) this.a;
                        str2 = (String) this.b;
                        str3 = (String) this.c;
                        laVar = new la();
                        if (str2 != null) {
                            c6.f("keysetName cannot be null");
                            throw null;
                        }
                        laVar.b = str2;
                        applicationContext = context.getApplicationContext();
                        if (str3 == null) {
                            laVar.a = PreferenceManager.getDefaultSharedPreferences(applicationContext).edit();
                        } else {
                            laVar.a = applicationContext.getSharedPreferences(str3, 0).edit();
                        }
                        xr9Var = (xr9) this.e;
                        if (xr9Var != null) {
                            ix0VarH.r(laVar, xr9Var, new byte[0]);
                        } else {
                            laVar.m(ix0VarH.x());
                        }
                        uz9VarX = ix0VarH.x();
                        j79Var = (j79) uz9VarX.d(5);
                        if (!j79Var.a.equals(uz9VarX)) {
                            if (!j79Var.b.s()) {
                                j79Var.d();
                            }
                            j79.a(j79Var.b, uz9VarX);
                        }
                        this.n = new ln5((tz9) j79Var, 17);
                    } else if (str != null) {
                        this.n = c(bArrC0);
                    } else {
                        this.n = a(bArrC0);
                    }
                    tr9Var = new tr9(this);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return tr9Var;
    }

    public ln5 c(byte[] bArr) {
        try {
            this.e = y13.M((String) this.d);
            try {
                uz9 uz9VarX = ix0.i(new tr9(new ByteArrayInputStream(bArr), 22), (xr9) this.e, new byte[0]).x();
                j79 j79Var = (j79) uz9VarX.d(5);
                if (!j79Var.a.equals(uz9VarX)) {
                    if (!j79Var.b.s()) {
                        j79Var.d();
                    }
                    j79.a(j79Var.b, uz9VarX);
                }
                return new ln5((tz9) j79Var, 17);
            } catch (IOException | GeneralSecurityException e) {
                try {
                    return a(bArr);
                } catch (IOException unused) {
                    throw e;
                }
            }
        } catch (GeneralSecurityException | ProviderException e2) {
            try {
                ln5 ln5VarA = a(bArr);
                Log.w("tr9", "cannot use Android Keystore, it'll be disabled", e2);
                return ln5VarA;
            } catch (IOException unused2) {
                throw e2;
            }
        }
    }

    public xr9 d() throws KeyStoreException {
        try {
            boolean zO = y13.O((String) this.d);
            try {
                return y13.M((String) this.d);
            } catch (GeneralSecurityException | ProviderException e) {
                if (!zO) {
                    throw new KeyStoreException(eq3.k("the master key ", (String) this.d, " exists but is unusable"), e);
                }
                Log.w("tr9", "cannot use Android Keystore, it'll be disabled", e);
                return null;
            }
        } catch (GeneralSecurityException | ProviderException e2) {
            Log.w("tr9", "cannot use Android Keystore, it'll be disabled", e2);
            return null;
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (MaterialCardView) this.a;
    }
}
