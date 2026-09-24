package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class wc8 extends y13 {
    public static Class o = null;
    public static Constructor p = null;
    public static Method q = null;
    public static Method r = null;
    public static boolean s = false;
    public final Class h;
    public final Constructor i;
    public final Method j;
    public final Method k;
    public final Method l;
    public final Method m;
    public final Method n;

    public wc8() throws NoSuchMethodException {
        Method methodX;
        Constructor<?> constructor;
        Method methodW;
        Method method;
        Method method2;
        Method method3;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            methodW = W(cls2);
            Class cls3 = Integer.TYPE;
            method = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method2 = cls2.getMethod("freeze", null);
            method3 = cls2.getMethod("abortCreation", null);
            methodX = X(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e.getClass().getName()), e);
            methodX = null;
            constructor = null;
            methodW = null;
            method = null;
            method2 = null;
            method3 = null;
        }
        this.h = cls;
        this.i = constructor;
        this.j = methodW;
        this.k = method;
        this.l = method2;
        this.m = method3;
        this.n = methodX;
    }

    public static boolean S(Object obj, String str, int i, boolean z) throws NoSuchMethodException {
        V();
        try {
            return ((Boolean) q.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            y5.k(e);
            return false;
        }
    }

    public static void V() throws NoSuchMethodException {
        Method method;
        Class<?> cls;
        Method method2;
        if (s) {
            return;
        }
        s = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
            method = null;
            cls = null;
            method2 = null;
        }
        p = constructor;
        o = cls;
        q = method2;
        r = method;
    }

    public static Method W(Class cls) {
        Class cls2 = Boolean.TYPE;
        Class cls3 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls3, cls2, cls3, cls3, cls3, FontVariationAxis[].class);
    }

    public final boolean R(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.j.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface T(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.h, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.n.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean U(Object obj) {
        try {
            return ((Boolean) this.l.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Method X(Class cls) throws NoSuchMethodException {
        Class<?> cls2 = Array.newInstance((Class<?>) cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // defpackage.y13
    public final Typeface f(Context context, pq3 pq3Var, Resources resources, int i) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        InputStream inputStreamOpenRawResource;
        qq3[] qq3VarArr = pq3Var.a;
        Method method = this.j;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        int i2 = 0;
        if (method == null) {
            V();
            try {
                Object objNewInstance2 = p.newInstance(null);
                for (qq3 qq3Var : qq3VarArr) {
                    File fileQ = l73.q(context);
                    if (fileQ != null) {
                        try {
                            try {
                                inputStreamOpenRawResource = resources.openRawResource(qq3Var.f);
                                try {
                                    boolean zJ = l73.j(fileQ, inputStreamOpenRawResource);
                                    if (inputStreamOpenRawResource != null) {
                                        try {
                                            inputStreamOpenRawResource.close();
                                        } catch (IOException unused) {
                                        }
                                    }
                                    if (!zJ) {
                                        fileQ.delete();
                                        return null;
                                    }
                                    if (!S(objNewInstance2, fileQ.getPath(), qq3Var.b, qq3Var.c)) {
                                        fileQ.delete();
                                        return null;
                                    }
                                    fileQ.delete();
                                } catch (Throwable th) {
                                    th = th;
                                    Throwable th2 = th;
                                    if (inputStreamOpenRawResource == null) {
                                        throw th2;
                                    }
                                    try {
                                        inputStreamOpenRawResource.close();
                                        throw th2;
                                    } catch (IOException unused2) {
                                        throw th2;
                                    }
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                inputStreamOpenRawResource = null;
                            }
                        } catch (RuntimeException unused3) {
                            fileQ.delete();
                            return null;
                        } catch (Throwable th4) {
                            fileQ.delete();
                            throw th4;
                        }
                    }
                }
                V();
                try {
                    Object objNewInstance3 = Array.newInstance((Class<?>) o, 1);
                    Array.set(objNewInstance3, 0, objNewInstance2);
                    return (Typeface) r.invoke(null, objNewInstance3);
                } catch (IllegalAccessException | InvocationTargetException e) {
                    y5.k(e);
                    return null;
                }
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
                y5.k(e2);
                return null;
            }
        }
        try {
            objNewInstance = this.i.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused4) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            int length = qq3VarArr.length;
            while (i2 < length) {
                qq3 qq3Var2 = qq3VarArr[i2];
                wc8 wc8Var = this;
                Context context2 = context;
                if (wc8Var.R(context2, objNewInstance, qq3Var2.a, qq3Var2.e, qq3Var2.b, qq3Var2.c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(qq3Var2.d))) {
                    i2++;
                    this = wc8Var;
                    context = context2;
                } else {
                    try {
                        wc8Var.m.invoke(objNewInstance, null);
                    } catch (IllegalAccessException | InvocationTargetException unused5) {
                    }
                }
            }
            wc8 wc8Var2 = this;
            if (wc8Var2.U(objNewInstance)) {
                return wc8Var2.T(objNewInstance);
            }
        }
        return null;
    }

    @Override // defpackage.y13
    public final Typeface g(Context context, sq3[] sq3VarArr, int i) throws IOException {
        Object objNewInstance;
        Typeface typefaceT;
        boolean zBooleanValue;
        if (sq3VarArr.length >= 1) {
            Method method = this.j;
            if (method == null) {
                Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
            }
            try {
                if (method != null) {
                    HashMap map = new HashMap();
                    for (sq3 sq3Var : sq3VarArr) {
                        if (sq3Var.f == 0) {
                            Uri uri = sq3Var.a;
                            if (!map.containsKey(uri)) {
                                map.put(uri, l73.w(context, uri));
                            }
                        }
                    }
                    Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
                    try {
                        objNewInstance = this.i.newInstance(null);
                    } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                        objNewInstance = null;
                    }
                    if (objNewInstance != null) {
                        int length = sq3VarArr.length;
                        int i2 = 0;
                        boolean z = false;
                        while (true) {
                            Method method2 = this.m;
                            if (i2 >= length) {
                                if (!z) {
                                    method2.invoke(objNewInstance, null);
                                    break;
                                }
                                if (!U(objNewInstance) || (typefaceT = T(objNewInstance)) == null) {
                                    break;
                                    break;
                                }
                                return Typeface.create(typefaceT, i);
                            }
                            sq3 sq3Var2 = sq3VarArr[i2];
                            ByteBuffer byteBuffer = (ByteBuffer) mapUnmodifiableMap.get(sq3Var2.a);
                            if (byteBuffer != null) {
                                try {
                                    zBooleanValue = ((Boolean) this.k.invoke(objNewInstance, byteBuffer, Integer.valueOf(sq3Var2.b), null, Integer.valueOf(sq3Var2.c), Integer.valueOf(sq3Var2.d ? 1 : 0))).booleanValue();
                                } catch (IllegalAccessException | InvocationTargetException unused2) {
                                    zBooleanValue = false;
                                }
                                if (!zBooleanValue) {
                                    method2.invoke(objNewInstance, null);
                                    break;
                                }
                                z = true;
                            }
                            i2++;
                            z = z;
                        }
                    }
                } else {
                    int i3 = (i & 1) == 0 ? 400 : 700;
                    boolean z2 = (i & 2) != 0;
                    int i4 = Integer.MAX_VALUE;
                    sq3 sq3Var3 = null;
                    for (sq3 sq3Var4 : sq3VarArr) {
                        int iAbs = (Math.abs(sq3Var4.c - i3) * 2) + (sq3Var4.d == z2 ? 0 : 1);
                        if (sq3Var3 == null || i4 > iAbs) {
                            sq3Var3 = sq3Var4;
                            i4 = iAbs;
                        }
                    }
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(sq3Var3.a, JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR, null);
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        try {
                            Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(sq3Var3.c).setItalic(sq3Var3.d).build();
                            parcelFileDescriptorOpenFileDescriptor.close();
                            return typefaceBuild;
                        } catch (Throwable th) {
                            try {
                                parcelFileDescriptorOpenFileDescriptor.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                        return null;
                    }
                }
            } catch (IOException | IllegalAccessException | InvocationTargetException unused3) {
            }
        }
        return null;
    }

    @Override // defpackage.y13
    public final Typeface i(Context context, Resources resources, int i, String str) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        InputStream inputStreamOpenRawResource;
        Method method = this.j;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method != null) {
            try {
                objNewInstance = this.i.newInstance(null);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                objNewInstance = null;
            }
            if (objNewInstance != null) {
                if (!R(context, objNewInstance, str, 0, -1, -1, null)) {
                    try {
                        this.m.invoke(objNewInstance, null);
                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                    }
                } else if (U(objNewInstance)) {
                    return T(objNewInstance);
                }
            }
        } else {
            File fileQ = l73.q(context);
            try {
                if (fileQ != null) {
                    try {
                        inputStreamOpenRawResource = resources.openRawResource(i);
                        try {
                            boolean zJ = l73.j(fileQ, inputStreamOpenRawResource);
                            if (inputStreamOpenRawResource != null) {
                                try {
                                    inputStreamOpenRawResource.close();
                                } catch (IOException unused3) {
                                }
                            }
                            if (!zJ) {
                                fileQ.delete();
                                return null;
                            }
                            Typeface typefaceCreateFromFile = Typeface.createFromFile(fileQ.getPath());
                            fileQ.delete();
                            return typefaceCreateFromFile;
                        } catch (Throwable th) {
                            th = th;
                            Throwable th2 = th;
                            if (inputStreamOpenRawResource == null) {
                                throw th2;
                            }
                            try {
                                inputStreamOpenRawResource.close();
                                throw th2;
                            } catch (IOException unused4) {
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamOpenRawResource = null;
                    }
                }
            } catch (RuntimeException unused5) {
                return null;
            } finally {
                fileQ.delete();
            }
        }
        return null;
    }
}
