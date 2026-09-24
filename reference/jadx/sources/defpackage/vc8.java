package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.text.PositionedGlyphs;
import android.graphics.text.TextRunShaper;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Log;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class vc8 {
    public static final y13 a;
    public static final p35 b;
    public static Paint c;

    static {
        iz1.b("TypefaceCompat static init");
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            a = new zc8();
        } else if (i >= 29) {
            a = new yc8();
        } else if (i >= 28) {
            a = new xc8();
        } else {
            a = new wc8();
        }
        b = new p35(16);
        c = null;
        Trace.endSection();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Typeface a(Context context, oq3 oq3Var, Resources resources, int i, String str, int i2, int i3, g67 g67Var, boolean z) {
        Typeface typefaceF;
        Typeface typefaceBuild;
        FontFamily fontFamilyBuild;
        int i4 = 4;
        int i5 = -3;
        if (oq3Var instanceof rq3) {
            rq3 rq3Var = (rq3) oq3Var;
            String str2 = rq3Var.d;
            typefaceF = null;
            boolean z2 = false;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            if (TextUtils.isEmpty(str2) || (typefaceBuild = c(str2)) == null) {
                ArrayList arrayList = rq3Var.a;
                if (arrayList.size() != 1) {
                    if (Build.VERSION.SDK_INT >= 31) {
                        int i6 = 0;
                        while (true) {
                            if (i6 >= arrayList.size()) {
                                Typeface.CustomFallbackBuilder customFallbackBuilder = null;
                                int i7 = 0;
                                while (true) {
                                    if (i7 < arrayList.size()) {
                                        fq3 fq3Var = (fq3) arrayList.get(i7);
                                        if (i7 == arrayList.size() - 1 && TextUtils.isEmpty(fq3Var.f)) {
                                            customFallbackBuilder.setSystemFallback(fq3Var.e);
                                        } else {
                                            String str3 = fq3Var.e;
                                            String str4 = fq3Var.f;
                                            Font fontD = d(c(str3));
                                            if (fontD == null) {
                                                Log.w("TypefaceCompat", "Unable identify the primary font for " + fq3Var.e + ". Falling back to provider font.");
                                            } else {
                                                if (TextUtils.isEmpty(str4)) {
                                                    fontFamilyBuild = new FontFamily.Builder(fontD).build();
                                                } else {
                                                    try {
                                                        fontFamilyBuild = new FontFamily.Builder(ju1.a(fontD).setFontVariationSettings(str4).build()).build();
                                                    } catch (IOException unused) {
                                                        Log.e("TypefaceCompat", "Failed to clone Font instance. Fall back to provider font.");
                                                    }
                                                }
                                                if (customFallbackBuilder == null) {
                                                    customFallbackBuilder = new Typeface.CustomFallbackBuilder(fontFamilyBuild);
                                                } else {
                                                    customFallbackBuilder.addCustomFallback(fontFamilyBuild);
                                                }
                                                i7++;
                                            }
                                        }
                                    }
                                    typefaceBuild = customFallbackBuilder.build();
                                    break;
                                }
                            }
                            if (c(((fq3) arrayList.get(i6)).e) != null) {
                                i6++;
                            }
                            typefaceBuild = null;
                            break;
                        }
                    }
                    typefaceBuild = null;
                    break;
                }
                typefaceBuild = c(((fq3) arrayList.get(0)).e);
            }
            if (typefaceBuild != null) {
                if (g67Var != null) {
                    new Handler(Looper.getMainLooper()).post(new ro1(i4, g67Var, typefaceBuild));
                }
                b.l(b(resources, i, str, i2, i3), typefaceBuild);
                return typefaceBuild;
            }
            Object[] objArr3 = !z ? g67Var != null : rq3Var.c != 0;
            int i8 = z ? rq3Var.b : -1;
            Handler handler = new Handler(Looper.getMainLooper());
            km5 km5Var = new km5((byte) 0, 18);
            km5Var.b = g67Var;
            ArrayList arrayList2 = rq3Var.a;
            y60 y60Var = new y60(handler);
            ot9 ot9Var = new ot9(km5Var, y60Var, z2);
            if (objArr3 != true) {
                String strA = nq3.a(i3, arrayList2);
                Typeface typeface = (Typeface) nq3.a.h(strA);
                if (typeface != null) {
                    y60Var.execute(new s60(km5Var, typeface));
                    typefaceF = typeface;
                } else {
                    jq3 jq3Var = new jq3(ot9Var, objArr == true ? 1 : 0);
                    synchronized (nq3.c) {
                        try {
                            dg7 dg7Var = nq3.d;
                            ArrayList arrayList3 = (ArrayList) dg7Var.get(strA);
                            if (arrayList3 != null) {
                                arrayList3.add(jq3Var);
                            } else {
                                ArrayList arrayList4 = new ArrayList();
                                arrayList4.add(jq3Var);
                                dg7Var.put(strA, arrayList4);
                                kq3 kq3Var = new kq3(strA, context, arrayList2, i3);
                                ThreadPoolExecutor threadPoolExecutor = nq3.b;
                                lq3 lq3Var = new lq3(strA);
                                Handler handler2 = Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
                                rj6 rj6Var = new rj6();
                                rj6Var.b = kq3Var;
                                rj6Var.c = lq3Var;
                                rj6Var.d = handler2;
                                threadPoolExecutor.execute(rj6Var);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } else {
                if (arrayList2.size() > 1) {
                    c6.f("Fallbacks with blocking fetches are not supported for performance reasons");
                    return null;
                }
                fq3 fq3Var2 = (fq3) arrayList2.get(0);
                p35 p35Var = nq3.a;
                ArrayList arrayList5 = new ArrayList(1);
                Object obj = new Object[]{fq3Var2}[0];
                Objects.requireNonNull(obj);
                arrayList5.add(obj);
                String strA2 = nq3.a(i3, Collections.unmodifiableList(arrayList5));
                Typeface typeface2 = (Typeface) nq3.a.h(strA2);
                if (typeface2 != null) {
                    y60Var.execute(new s60(km5Var, typeface2));
                    typefaceF = typeface2;
                } else if (i8 == -1) {
                    ArrayList arrayList6 = new ArrayList(1);
                    Object obj2 = new Object[]{fq3Var2}[0];
                    Objects.requireNonNull(obj2);
                    arrayList6.add(obj2);
                    mq3 mq3VarB = nq3.b(strA2, context, Collections.unmodifiableList(arrayList6), i3);
                    ot9Var.f(mq3VarB);
                    typefaceF = mq3VarB.a;
                } else {
                    try {
                        try {
                            mq3 mq3Var = (mq3) nq3.b.submit(new iq3(strA2, context, fq3Var2, i3)).get(i8, TimeUnit.MILLISECONDS);
                            ot9Var.f(mq3Var);
                            typefaceF = mq3Var.a;
                        } catch (InterruptedException e) {
                            throw e;
                        } catch (ExecutionException e2) {
                            throw new RuntimeException(e2);
                        } catch (TimeoutException unused2) {
                            throw new InterruptedException("timeout");
                        }
                    } catch (InterruptedException unused3) {
                        ((y60) ot9Var.b).execute(new xz0((km5) ot9Var.a, i5, objArr2 == true ? 1 : 0));
                    }
                }
            }
        } else {
            typefaceF = a.f(context, (pq3) oq3Var, resources, i3);
            if (g67Var != null) {
                if (typefaceF != null) {
                    new Handler(Looper.getMainLooper()).post(new ro1(i4, g67Var, typefaceF));
                } else {
                    g67Var.g(-3);
                }
            }
        }
        if (typefaceF != null) {
            b.l(b(resources, i, str, i2, i3), typefaceF);
        }
        return typefaceF;
    }

    public static String b(Resources resources, int i, String str, int i2, int i3) {
        return resources.getResourcePackageName(i) + '-' + str + '-' + i2 + '-' + i + '-' + i3;
    }

    public static Typeface c(String str) {
        if (str != null && !str.isEmpty()) {
            Typeface typefaceCreate = Typeface.create(str, 0);
            Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
            if (typefaceCreate != null && !typefaceCreate.equals(typefaceCreate2)) {
                return typefaceCreate;
            }
        }
        return null;
    }

    public static Font d(Typeface typeface) {
        if (c == null) {
            c = new Paint();
        }
        c.setTextSize(10.0f);
        c.setTypeface(typeface);
        PositionedGlyphs positionedGlyphsShapeTextRun = TextRunShaper.shapeTextRun((CharSequence) TokenAuthenticationScheme.SCHEME_DELIMITER, 0, 1, 0, 1, 0.0f, 0.0f, false, c);
        if (positionedGlyphsShapeTextRun.glyphCount() == 0) {
            return null;
        }
        return positionedGlyphsShapeTextRun.getFont(0);
    }
}
