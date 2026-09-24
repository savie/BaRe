package defpackage;

import android.app.WallpaperManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class tv7 {
    public static final gv7 a = new gv7(new b7(28));

    public static sv7 a() {
        ai8.b();
        String str = ry5.u;
        int i = 0;
        rv7 rv7Var = null;
        q63 q63Var = new q63(eq3.j(qy5.f(false, null).p, "home_wall.wal"), 2);
        q63 q63Var2 = new q63(eq3.j(qy5.f(false, null).p, "lock_wall.wal"), 2);
        int i2 = 14;
        ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) io4.j("SystemWallsHelper", null, false, new ov(15), 14);
        if (parcelFileDescriptor == null) {
            parcelFileDescriptor = (ParcelFileDescriptor) io4.j("SystemWallsHelper", null, false, new qm(19), 14);
        }
        ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) io4.j("SystemWallsHelper", null, false, new pu(i2), 14);
        if (parcelFileDescriptor2 == null) {
            parcelFileDescriptor2 = (ParcelFileDescriptor) io4.j("SystemWallsHelper", null, false, new sm(i2), 14);
        }
        Closeable[] closeableArr = {parcelFileDescriptor, parcelFileDescriptor2};
        try {
            try {
                Log.d("SystemWallsHelper", "getSystemWallsSdk24: home screen descriptor: " + (parcelFileDescriptor != null));
                Log.d("SystemWallsHelper", "getSystemWallsSdk24: lock screen descriptor: " + (parcelFileDescriptor2 != null));
                if (parcelFileDescriptor != null) {
                    c(parcelFileDescriptor, q63Var);
                } else {
                    vr6 vr6Var = vr6.INSTANCE;
                    vr6.i$default(vr6Var, "SystemWallsHelper", "getSystemWallsSdk24: Home wall not found, Getting built-in wall", null, 4, null);
                    BitmapDrawable bitmapDrawable = (BitmapDrawable) ((WallpaperManager) a.getValue()).getBuiltInDrawable(1);
                    if ((bitmapDrawable != null ? bitmapDrawable.getBitmap() : null) != null) {
                        OutputStream outputStreamF = q63Var.F(true);
                        try {
                            Bitmap bitmap = bitmapDrawable.getBitmap();
                            bitmap.getClass();
                            ai8.a(bitmap, outputStreamF);
                            outputStreamF.close();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                rs9.c(outputStreamF, th);
                                throw th2;
                            }
                        }
                    } else {
                        vr6.e$default(vr6Var, "SystemWallsHelper", "getSystemWallsSdk24: Couldn't get built-in wall! Drawable=" + bitmapDrawable + ", bitmap=" + (bitmapDrawable != null ? bitmapDrawable.getBitmap() : null), null, 4, null);
                    }
                }
                rv7 rv7Var2 = q63Var.j() ? new rv7(q63Var) : null;
                if (parcelFileDescriptor2 != null) {
                    c(parcelFileDescriptor2, q63Var2);
                    rv7Var = new rv7(q63Var2);
                } else if (q63Var.j()) {
                    rv7Var = new rv7(q63Var);
                }
                while (i < 2) {
                    Closeable closeable = closeableArr[i];
                    if (closeable != null) {
                        try {
                            closeable.close();
                        } catch (Exception unused) {
                        }
                    }
                    i++;
                }
                return new sv7(rv7Var2, rv7Var);
            } catch (Exception e) {
                throw e;
            }
        } catch (Throwable th3) {
            while (i < 2) {
                Closeable closeable2 = closeableArr[i];
                if (closeable2 != null) {
                    try {
                        closeable2.close();
                    } catch (Exception unused2) {
                    }
                }
                i++;
            }
            throw th3;
        }
    }

    public static String b(int i) {
        g00 g00Var = g00.a;
        String strJ = fz5.j(g00.i(), "/data/system/users/");
        return i == 2 ? strJ.concat("/wallpaper_lock") : strJ.concat("/wallpaper");
    }

    public static void c(ParcelFileDescriptor parcelFileDescriptor, q63 q63Var) {
        if (q63Var.j() && q63Var.A() == parcelFileDescriptor.getStatSize()) {
            Log.d("SystemWallsHelper", "writeDescriptorToFile: File exists, not copying = ".concat(q63Var.p()));
            return;
        }
        try {
            try {
                Log.d("SystemWallsHelper", "writeDescriptorToFile: Copying new file = ".concat(q63Var.p()));
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
                OutputStream outputStreamF = q63Var.F(true);
                try {
                    try {
                        cy0.j(autoCloseInputStream, outputStreamF, 262144);
                        outputStreamF.close();
                        autoCloseInputStream.close();
                        parcelFileDescriptor.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(autoCloseInputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        rs9.c(outputStreamF, th3);
                        throw th4;
                    }
                }
            } catch (IOException e) {
                vr6.e$default(vr6.INSTANCE, "SystemWallsHelper", "writeDescriptorToFile: ".concat(io4.b(e)), null, 4, null);
            }
        } catch (Throwable th5) {
            try {
                throw th5;
            } catch (Throwable th6) {
                rs9.c(parcelFileDescriptor, th5);
                throw th6;
            }
        }
    }
}
