package defpackage;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kr0 implements tl6 {
    public static final iu5 b = iu5.a(90, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality");
    public static final iu5 c = new iu5("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, iu5.e);
    public final m35 a;

    public kr0(m35 m35Var) {
        this.a = m35Var;
    }

    @Override // defpackage.zv2
    public final boolean h(Object obj, File file, ou5 ou5Var) throws Throwable {
        boolean z;
        Bitmap bitmap = (Bitmap) ((ll6) obj).get();
        iu5 iu5Var = c;
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) ou5Var.c(iu5Var);
        if (compressFormat == null) {
            compressFormat = bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
        }
        bitmap.getWidth();
        bitmap.getHeight();
        int i = g15.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int iIntValue = ((Integer) ou5Var.c(b)).intValue();
        OutputStream xw0Var = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    m35 m35Var = this.a;
                    if (m35Var != null) {
                        try {
                            xw0Var = new xw0(fileOutputStream, m35Var);
                        } catch (IOException e) {
                            e = e;
                            xw0Var = fileOutputStream;
                            if (Log.isLoggable("BitmapEncoder", 3)) {
                                Log.d("BitmapEncoder", "Failed to encode Bitmap", e);
                            }
                            if (xw0Var != null) {
                                try {
                                    xw0Var.close();
                                } catch (IOException unused) {
                                }
                            }
                            z = false;
                        } catch (Throwable th) {
                            th = th;
                            xw0Var = fileOutputStream;
                            if (xw0Var != null) {
                                try {
                                    xw0Var.close();
                                } catch (IOException unused2) {
                                }
                            }
                            throw th;
                        }
                    } else {
                        xw0Var = fileOutputStream;
                    }
                    bitmap.compress(compressFormat, iIntValue, xw0Var);
                    xw0Var.close();
                    try {
                        xw0Var.close();
                    } catch (IOException unused3) {
                    }
                    z = true;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
            }
            if (Log.isLoggable("BitmapEncoder", 2)) {
                Log.v("BitmapEncoder", "Compressed with type: " + compressFormat + " of size " + xh8.l(bitmap) + " in " + g15.a(jElapsedRealtimeNanos) + ", options format: " + ou5Var.c(iu5Var) + ", hasAlpha: " + bitmap.hasAlpha());
            }
            return z;
        } catch (Throwable th3) {
            throw th3;
        }
    }

    @Override // defpackage.tl6
    public final int q(ou5 ou5Var) {
        return 2;
    }
}
