package defpackage;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NavigableSet;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k02 {
    public static final Charset e = Charset.forName("UTF-8");
    public static final int f = 15;
    public static final f02 g = new f02();
    public static final g02 h = new g02();
    public static final h02 i = new h02();
    public final AtomicInteger a = new AtomicInteger(0);
    public final ca3 b;
    public final f80 c;
    public final oy1 d;

    public k02(ca3 ca3Var, f80 f80Var, oy1 oy1Var) {
        this.b = ca3Var;
        this.c = f80Var;
        this.d = oy1Var;
    }

    public static void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    public static String e(File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i2 = fileInputStream.read(bArr);
                if (i2 <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), e);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    public static void f(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), e);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final ArrayList b() {
        ArrayList arrayList = new ArrayList();
        ca3 ca3Var = this.b;
        arrayList.addAll(ca3.l(((File) ca3Var.f).listFiles()));
        arrayList.addAll(ca3.l(((File) ca3Var.k).listFiles()));
        g02 g02Var = h;
        Collections.sort(arrayList, g02Var);
        List listL = ca3.l(((File) ca3Var.e).listFiles());
        Collections.sort(listL, g02Var);
        arrayList.addAll(listL);
        return arrayList;
    }

    public final NavigableSet c() {
        return new TreeSet(ca3.l(((File) this.b.d).list())).descendingSet();
    }

    public final void d(yz1 yz1Var, String str, boolean z) {
        ca3 ca3Var = this.b;
        int i2 = this.c.c().a.a;
        g.getClass();
        try {
            f(ca3Var.g(str, eq3.k("event", String.format(Locale.US, "%010d", Integer.valueOf(this.a.getAndIncrement())), z ? "_" : "")), f02.a.c(yz1Var));
        } catch (IOException e2) {
            Log.w("FirebaseCrashlytics", "Could not persist event for session " + str, e2);
        }
        i02 i02Var = new i02();
        ca3Var.getClass();
        File file = new File((File) ca3Var.d, str);
        file.mkdirs();
        List<File> listL = ca3.l(file.listFiles(i02Var));
        Collections.sort(listL, new j02());
        int size = listL.size();
        for (File file2 : listL) {
            if (size <= i2) {
                return;
            }
            ca3.k(file2);
            size--;
        }
    }
}
