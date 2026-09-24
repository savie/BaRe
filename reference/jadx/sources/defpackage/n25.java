package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class n25 {
    public static final HashMap a = new HashMap();
    public static final byte[] b = {80, 75, 3, 4};

    public static i35 a(String str, Callable callable) {
        e25 e25Var = str == null ? null : (e25) f25.b.a.h(str);
        if (e25Var != null) {
            return new i35(new m25(e25Var), false);
        }
        HashMap map = a;
        if (str != null && map.containsKey(str)) {
            return (i35) map.get(str);
        }
        i35 i35Var = new i35(callable, false);
        if (str != null) {
            i35Var.b(new g25(str));
            i35Var.a(new h25(str));
            map.put(str, i35Var);
        }
        return i35Var;
    }

    public static g35 b(Context context, String str, String str2) {
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return c(context.getAssets().open(str), str2);
            }
            return f(new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e) {
            return new g35((Throwable) e);
        }
    }

    public static g35 c(InputStream inputStream, String str) {
        try {
            tf6 tf6Var = new tf6(y13.G(inputStream));
            String[] strArr = ul4.e;
            return d(new cn4(tf6Var), str, true);
        } finally {
            mi8.b(inputStream);
        }
    }

    public static g35 d(cn4 cn4Var, String str, boolean z) {
        try {
            e25 e25VarA = o25.a(cn4Var);
            if (str != null) {
                f25.b.a.l(str, e25VarA);
            }
            return new g35(e25VarA);
        } catch (Exception e) {
            return new g35((Throwable) e);
        } finally {
            if (z) {
                mi8.b(cn4Var);
            }
        }
    }

    public static g35 e(int i, Context context, String str) {
        Boolean bool;
        try {
            tf6 tf6Var = new tf6(y13.G(context.getResources().openRawResource(i)));
            try {
                tf6 tf6VarPeek = tf6Var.peek();
                byte[] bArr = b;
                int length = bArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        tf6VarPeek.close();
                        bool = Boolean.TRUE;
                        break;
                    }
                    if (tf6VarPeek.readByte() != bArr[i2]) {
                        bool = Boolean.FALSE;
                        break;
                    }
                    i2++;
                }
            } catch (Exception unused) {
                m15.a.getClass();
                bool = Boolean.FALSE;
            }
            return bool.booleanValue() ? f(new ZipInputStream(new sf6(tf6Var)), str) : c(new sf6(tf6Var), str);
        } catch (Resources.NotFoundException e) {
            return new g35((Throwable) e);
        }
    }

    public static g35 f(ZipInputStream zipInputStream, String str) {
        try {
            return g(zipInputStream, str);
        } finally {
            mi8.b(zipInputStream);
        }
    }

    public static g35 g(ZipInputStream zipInputStream, String str) {
        d35 d35Var;
        HashMap map = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            e25 e25Var = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    tf6 tf6Var = new tf6(y13.G(zipInputStream));
                    String[] strArr = ul4.e;
                    e25Var = (e25) d(new cn4(tf6Var), null, false).a;
                } else if (name.contains(".png") || name.contains(".webp") || name.contains(".jpg") || name.contains(".jpeg")) {
                    String[] strArrSplit = name.split("/");
                    map.put(strArrSplit[strArrSplit.length - 1], BitmapFactory.decodeStream(zipInputStream));
                } else {
                    zipInputStream.closeEntry();
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (e25Var == null) {
                return new g35((Throwable) new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : map.entrySet()) {
                String str2 = (String) entry.getKey();
                Iterator it = e25Var.d.values().iterator();
                do {
                    if (!it.hasNext()) {
                        d35Var = null;
                        break;
                    }
                    d35Var = (d35) it.next();
                } while (!d35Var.c.equals(str2));
                if (d35Var != null) {
                    Bitmap bitmap = (Bitmap) entry.getValue();
                    int i = d35Var.a;
                    int i2 = d35Var.b;
                    di8 di8Var = mi8.a;
                    if (bitmap.getWidth() != i || bitmap.getHeight() != i2) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
                        bitmap.recycle();
                        bitmap = bitmapCreateScaledBitmap;
                    }
                    d35Var.d = bitmap;
                }
            }
            for (Map.Entry entry2 : e25Var.d.entrySet()) {
                if (((d35) entry2.getValue()).d == null) {
                    return new g35((Throwable) new IllegalStateException("There is no image for ".concat(((d35) entry2.getValue()).c)));
                }
            }
            if (str != null) {
                f25.b.a.l(str, e25Var);
            }
            return new g35(e25Var);
        } catch (IOException e) {
            return new g35((Throwable) e);
        }
    }

    public static String h(Context context, int i) {
        StringBuilder sb = new StringBuilder("rawRes");
        sb.append((context.getResources().getConfiguration().uiMode & 48) == 32 ? "_night_" : "_day_");
        sb.append(i);
        return sb.toString();
    }
}
