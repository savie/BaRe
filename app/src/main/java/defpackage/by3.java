package defpackage;

import android.app.blob.BlobStoreManager;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.io.InputStream;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class by3 implements ql6 {
    public static final gv7 a = new gv7(new ov(8));

    /* JADX WARN: Code duplicated, block: B:10:0x0030  */
    /* JADX WARN: Code duplicated, block: B:14:0x0046  */
    /* JADX WARN: Code duplicated, block: B:16:0x0053  */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX WARN: Instruction removed from duplicated block: B:8:0x001a, please report this as an issue */
    public static InputStream c(yn8 yn8Var) {
        q63 q63Var = yn8Var.a;
        String str = yn8Var.e;
        if (q63Var.j()) {
            long j = yn8Var.c;
            if (j > 0 && j != q63Var.A()) {
                Log.d("GlideCloudWallDecoder", "Downloading wall from cloud at " + str);
                if (str != null) {
                    c6.f("GlideCloudWallDecoder: Can't fetch wallpaper for null drive id!");
                    return null;
                }
                if (!fo8.b(new fo8(0), nc8.I(yn8Var))) {
                    String strConcat = "Error while downloading ".concat(str);
                    Log.e("GlideCloudWallDecoder", strConcat);
                    g84.h(strConcat);
                    return null;
                }
            }
        } else {
            Log.d("GlideCloudWallDecoder", "Downloading wall from cloud at " + str);
            if (str != null) {
                c6.f("GlideCloudWallDecoder: Can't fetch wallpaper for null drive id!");
                return null;
            }
            if (!fo8.b(new fo8(0), nc8.I(yn8Var))) {
                String strConcat2 = "Error while downloading ".concat(str);
                Log.e("GlideCloudWallDecoder", strConcat2);
                g84.h(strConcat2);
                return null;
            }
        }
        return q63Var.w(true);
    }

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) {
        ((zx3) obj).getClass();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0106  */
    /* JADX WARN: Code duplicated, block: B:53:0x010d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0116  */
    /* JADX WARN: Code duplicated, block: B:66:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) throws Throwable {
        Exception exc;
        InputStream inputStreamC;
        Throwable th;
        Drawable drawable;
        zx3 zx3Var = (zx3) obj;
        zx3Var.getClass();
        Log.d("GlideCloudWallDecoder", "decode: data=" + zx3Var);
        yn8 yn8Var = zx3Var.a;
        boolean z = yn8Var.n;
        gv7 gv7Var = a;
        if (z) {
            drawable = (Drawable) gv7Var.getValue();
        } else {
            BlobStoreManager.Session session = 0;
            bitmapDrawable = null;
            bitmapDrawable = null;
            BitmapDrawable bitmapDrawable = null;
            try {
                try {
                    try {
                        tb1 tb1Var = tb1.a;
                        tb1 tb1VarC = qb1.c();
                        if (tb1VarC instanceof kh0) {
                            inputStreamC = (InputStream) hx0.m(new lx(7, zx3Var, (kh0) tb1VarC));
                        } else if (tb1VarC instanceof nq5) {
                            inputStreamC = (InputStream) hx0.m(new rm(10, (nq5) tb1VarC, zx3Var));
                        } else if (tb1VarC instanceof b82) {
                            inputStreamC = (InputStream) hx0.m(new g52(6, (b82) tb1VarC, zx3Var));
                        } else if (tb1VarC instanceof x95) {
                            inputStreamC = c(yn8Var);
                        } else {
                            if (!(tb1VarC instanceof v52)) {
                                throw new RuntimeException("Thumbnail fetching not implemented for ".concat(tb1VarC.getClass().getSimpleName()));
                            }
                            jh1 jh1VarO = ((v52) tb1VarC).o();
                            if (jh1VarO instanceof jy8) {
                                jy8 jy8Var = (jy8) jh1VarO;
                                y63 y63Var = new y63(1, Const.a, Const.class, "sleepTemporarily", "sleepTemporarily(J)V", 0, 2);
                                int i3 = 0;
                                while (true) {
                                    try {
                                        String str = yn8Var.e;
                                        str.getClass();
                                        inputStreamC = jy8Var.w(str);
                                        break;
                                    } catch (Exception e) {
                                        if (i3 >= 50) {
                                            throw e;
                                        }
                                        y63Var.invoke(5000L);
                                        i3++;
                                    }
                                }
                            } else {
                                inputStreamC = c(yn8Var);
                            }
                        }
                        if (inputStreamC != null) {
                            try {
                                SwiftApp.Companion companion = SwiftApp.d;
                                bitmapDrawable = new BitmapDrawable(SwiftApp.Companion.c().getResources(), inputStreamC);
                            } catch (Exception e2) {
                                exc = e2;
                                vr6.e$default(vr6.INSTANCE, "GlideCloudWallDecoder", "decode", exc, null, 8, null);
                                if (inputStreamC != null) {
                                }
                                if (bitmapDrawable == null) {
                                    drawable = (Drawable) gv7Var.getValue();
                                } else {
                                    drawable = bitmapDrawable;
                                }
                                return new ay3(drawable);
                            }
                        }
                        if (inputStreamC != null) {
                            f13.a(inputStreamC);
                        }
                    } catch (Throwable th2) {
                        session = "Thumbnail fetching not implemented for ";
                        th = th2;
                        if (session != 0) {
                            throw th;
                        }
                        f13.a(session);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (session != 0) {
                        throw th;
                    }
                    f13.a(session);
                    throw th;
                }
            } catch (Exception e3) {
                exc = e3;
                inputStreamC = null;
            }
            if (bitmapDrawable == null) {
                drawable = (Drawable) gv7Var.getValue();
            } else {
                drawable = bitmapDrawable;
            }
        }
        return new ay3(drawable);
    }
}
