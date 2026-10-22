package defpackage;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.zip.ZipInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class om5 implements jk8, pe2, dh5, vl2, zv2 {
    public final Object a;

    public om5(int i) {
        switch (i) {
            case 8:
                this.a = new HashMap();
                break;
            default:
                this.a = new bq1();
                break;
        }
    }

    public static om5 e(boolean z, int i, int i2, int i3, int i4) {
        return new om5(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, false, z));
    }

    @Override // defpackage.vl2
    public Class a() {
        return AssetFileDescriptor.class;
    }

    @Override // defpackage.vl2
    public void b(Object obj) throws IOException {
        ((AssetFileDescriptor) obj).close();
    }

    public String c(Object obj) {
        StringWriter stringWriter = new StringWriter();
        try {
            kj4 kj4Var = (kj4) this.a;
            in4 in4Var = new in4(stringWriter, kj4Var.a, kj4Var.b, kj4Var.c, kj4Var.d);
            in4Var.h(obj);
            in4Var.j();
            in4Var.b.flush();
        } catch (IOException unused) {
        }
        return stringWriter.toString();
    }

    public g35 d(String str, InputStream inputStream, String str2, String str3) {
        m73 m73Var;
        g35 g35VarF;
        km5 km5Var = (km5) this.a;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            m15.a();
            m73Var = m73.ZIP;
            g35VarF = str3 == null ? n25.f(new ZipInputStream(inputStream), null) : n25.f(new ZipInputStream(new FileInputStream(km5Var.x(str, inputStream, m73Var))), str);
        } else {
            m15.a();
            m73Var = m73.JSON;
            g35VarF = str3 == null ? n25.c(inputStream, null) : n25.c(new FileInputStream(km5Var.x(str, inputStream, m73Var).getAbsolutePath()), str);
        }
        if (str3 != null && g35VarF.a != null) {
            File file = new File(km5Var.p(), km5.l(str, m73Var, true));
            File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
            boolean zRenameTo = file.renameTo(file2);
            file2.toString();
            m15.a();
            if (!zRenameTo) {
                m15.b("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
            }
        }
        return g35VarF;
    }

    @Override // defpackage.pe2
    public int f() {
        return j() | (j() << 8);
    }

    public void g(Class cls, p75 p75Var) {
        ((HashMap) this.a).put(cls, p75Var);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (NestedScrollView) this.a;
    }

    @Override // defpackage.zv2
    public boolean h(Object obj, File file, ou5 ou5Var) throws Throwable {
        InputStream inputStream = (InputStream) obj;
        m35 m35Var = (m35) this.a;
        byte[] bArr = (byte[]) m35Var.c(65536, byte[].class);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                while (true) {
                    try {
                        int i = inputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, i);
                    } catch (IOException e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        if (Log.isLoggable("StreamEncoder", 3)) {
                            Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        m35Var.g(bArr);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        m35Var.g(bArr);
                        throw th;
                    }
                }
                fileOutputStream2.close();
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
                m35Var.g(bArr);
                return true;
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // defpackage.pe2
    public int i(byte[] bArr, int i) {
        ByteBuffer byteBuffer = (ByteBuffer) this.a;
        int iMin = Math.min(i, byteBuffer.remaining());
        if (iMin == 0) {
            return -1;
        }
        byteBuffer.get(bArr, 0, iMin);
        return iMin;
    }

    @Override // defpackage.pe2
    public short j() throws oe2 {
        ByteBuffer byteBuffer = (ByteBuffer) this.a;
        if (byteBuffer.remaining() >= 1) {
            return (short) (byteBuffer.get() & 255);
        }
        throw new oe2();
    }

    @Override // defpackage.vl2
    public Object k(int i, Resources.Theme theme, Resources resources) {
        return resources.openRawResourceFd(i);
    }

    public void l(int i) {
        RecyclerView recyclerView = (RecyclerView) this.a;
        View childAt = recyclerView.getChildAt(i);
        if (childAt != null) {
            RecyclerView.L(childAt);
            hg6 hg6Var = recyclerView.x;
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i);
    }

    public void m(int i, Object obj, jm9 jm9Var) {
        nh9 nh9Var = (nh9) this.a;
        mg9 mg9Var = (mg9) obj;
        nh9Var.i(i, 2);
        nh9Var.k(mg9Var.c(jm9Var));
        jm9Var.c(mg9Var, this);
    }

    @Override // defpackage.pe2
    public long skip(long j) {
        ByteBuffer byteBuffer = (ByteBuffer) this.a;
        int iMin = (int) Math.min(byteBuffer.remaining(), j);
        byteBuffer.position(byteBuffer.position() + iMin);
        return iMin;
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new wl2((Context) this.a, this);
    }

    public om5(nh9 nh9Var) {
        Charset charset = nj9.a;
        this.a = nh9Var;
        nh9Var.a = this;
    }

    public om5(km5 km5Var, ma2 ma2Var) {
        this.a = km5Var;
    }

    public om5(NestedScrollView nestedScrollView, ImageView imageView, MaterialCardView materialCardView, TextView textView, TextView textView2) {
        this.a = nestedScrollView;
    }

    public /* synthetic */ om5(Object obj) {
        this.a = obj;
    }

    public om5(ByteBuffer byteBuffer) {
        this.a = byteBuffer;
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
    }
}
