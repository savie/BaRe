package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Trace;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class nq3 {
    public static final p35 a = new p35(16);
    public static final ThreadPoolExecutor b;
    public static final Object c;
    public static final dg7 d;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new sk6());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = threadPoolExecutor;
        c = new Object();
        d = new dg7(0);
    }

    public static String a(int i, List list) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            sb.append(((fq3) list.get(i2)).g);
            sb.append("-");
            sb.append(i);
            if (i2 < list.size() - 1) {
                sb.append(";");
            }
        }
        return sb.toString();
    }

    public static mq3 b(String str, Context context, List list, int i) {
        int i2;
        Typeface typefaceG;
        p35 p35Var = a;
        iz1.b("getFontSync");
        try {
            Typeface typeface = (Typeface) p35Var.h(str);
            if (typeface != null) {
                mq3 mq3Var = new mq3(typeface);
                Trace.endSection();
                return mq3Var;
            }
            try {
                ph3 ph3VarA = dq3.a(context, list);
                List list2 = ph3VarA.b;
                int i3 = ph3VarA.a;
                if (i3 == 0) {
                    sq3[] sq3VarArr = (sq3[]) list2.get(0);
                    if (sq3VarArr == null || sq3VarArr.length == 0) {
                        i2 = 1;
                    } else {
                        int length = sq3VarArr.length;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length) {
                                i2 = 0;
                                break;
                            }
                            int i5 = sq3VarArr[i4].f;
                            if (i5 != 0) {
                                if (i5 >= 0) {
                                    i2 = i5;
                                    break;
                                }
                                i2 = -3;
                                break;
                            }
                            i4++;
                        }
                    }
                } else {
                    if (i3 != 1) {
                        i2 = -3;
                        break;
                    }
                    i2 = -2;
                }
                if (i2 != 0) {
                    mq3 mq3Var2 = new mq3(i2);
                    Trace.endSection();
                    return mq3Var2;
                }
                if (list2.size() <= 1 || Build.VERSION.SDK_INT < 29) {
                    sq3[] sq3VarArr2 = (sq3[]) list2.get(0);
                    y13 y13Var = vc8.a;
                    iz1.b("TypefaceCompat.createFromFontInfo");
                    try {
                        typefaceG = vc8.a.g(context, sq3VarArr2, i);
                        Trace.endSection();
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } else {
                    y13 y13Var2 = vc8.a;
                    iz1.b("TypefaceCompat.createFromFontInfoWithFallback");
                    try {
                        typefaceG = vc8.a.h(i, context, list2);
                        Trace.endSection();
                    } catch (Throwable th2) {
                        Trace.endSection();
                        throw th2;
                    }
                }
                if (typefaceG == null) {
                    mq3 mq3Var3 = new mq3(-3);
                    Trace.endSection();
                    return mq3Var3;
                }
                p35Var.l(str, typefaceG);
                mq3 mq3Var4 = new mq3(typefaceG);
                Trace.endSection();
                return mq3Var4;
            } catch (PackageManager.NameNotFoundException unused) {
                mq3 mq3Var5 = new mq3(-1);
                Trace.endSection();
                return mq3Var5;
            }
        } catch (Throwable th3) {
            Trace.endSection();
            throw th3;
        }
    }
}
