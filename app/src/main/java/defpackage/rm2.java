package defpackage;

import android.os.StrictMode;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rm2 implements Closeable {
    public final File a;
    public final File b;
    public final File c;
    public final File d;
    public final long f;
    public BufferedWriter p;
    public int r;
    public long n = 0;
    public final LinkedHashMap q = new LinkedHashMap(0, 0.75f, true);
    public long t = 0;
    public final ThreadPoolExecutor x = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new om2());
    public final nm2 y = new nm2(this);
    public final int e = 1;
    public final int k = 1;

    public rm2(File file, long j) {
        this.a = file;
        this.b = new File(file, "journal");
        this.c = new File(file, "journal.tmp");
        this.d = new File(file, "journal.bkp");
        this.f = j;
    }

    public static void A(File file, File file2, boolean z) throws IOException {
        if (z) {
            g(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public static void a(rm2 rm2Var, pm2 pm2Var, boolean z) {
        synchronized (rm2Var) {
            qm2 qm2Var = pm2Var.a;
            if (qm2Var.f != pm2Var) {
                throw new IllegalStateException();
            }
            if (z && !qm2Var.e) {
                for (int i = 0; i < rm2Var.k; i++) {
                    if (!pm2Var.b[i]) {
                        pm2Var.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                    if (!qm2Var.d[i].exists()) {
                        pm2Var.a();
                        return;
                    }
                }
            }
            for (int i2 = 0; i2 < rm2Var.k; i2++) {
                File file = qm2Var.d[i2];
                if (!z) {
                    g(file);
                } else if (file.exists()) {
                    File file2 = qm2Var.c[i2];
                    file.renameTo(file2);
                    long j = qm2Var.b[i2];
                    long length = file2.length();
                    qm2Var.b[i2] = length;
                    rm2Var.n = (rm2Var.n - j) + length;
                }
            }
            rm2Var.r++;
            qm2Var.f = null;
            if (qm2Var.e || z) {
                qm2Var.e = true;
                rm2Var.p.append((CharSequence) "CLEAN");
                rm2Var.p.append(' ');
                rm2Var.p.append((CharSequence) qm2Var.a);
                rm2Var.p.append((CharSequence) qm2Var.a());
                rm2Var.p.append('\n');
                if (z) {
                    rm2Var.t++;
                }
            } else {
                rm2Var.q.remove(qm2Var.a);
                rm2Var.p.append((CharSequence) "REMOVE");
                rm2Var.p.append(' ');
                rm2Var.p.append((CharSequence) qm2Var.a);
                rm2Var.p.append('\n');
            }
            j(rm2Var.p);
            if (rm2Var.n > rm2Var.f || rm2Var.n()) {
                rm2Var.x.submit(rm2Var.y);
            }
        }
    }

    public static void b(BufferedWriter bufferedWriter) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void g(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static void j(BufferedWriter bufferedWriter) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static rm2 q(File file, long j) throws IOException {
        if (j <= 0) {
            c6.f("maxSize <= 0");
            return null;
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                A(file2, file3, false);
            }
        }
        rm2 rm2Var = new rm2(file, j);
        if (rm2Var.b.exists()) {
            try {
                rm2Var.u();
                rm2Var.r();
                return rm2Var;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                rm2Var.close();
                bi8.a(rm2Var.a);
            }
        }
        file.mkdirs();
        rm2 rm2Var2 = new rm2(file, j);
        rm2Var2.z();
        return rm2Var2;
    }

    public final void D() {
        while (this.n > this.f) {
            String str = (String) ((Map.Entry) this.q.entrySet().iterator().next()).getKey();
            synchronized (this) {
                try {
                    if (this.p == null) {
                        throw new IllegalStateException("cache is closed");
                    }
                    qm2 qm2Var = (qm2) this.q.get(str);
                    if (qm2Var != null && qm2Var.f == null) {
                        for (int i = 0; i < this.k; i++) {
                            File file = qm2Var.c[i];
                            if (file.exists() && !file.delete()) {
                                throw new IOException("failed to delete " + file);
                            }
                            long j = this.n;
                            long[] jArr = qm2Var.b;
                            this.n = j - jArr[i];
                            jArr[i] = 0;
                        }
                        this.r++;
                        this.p.append((CharSequence) "REMOVE");
                        this.p.append(' ');
                        this.p.append((CharSequence) str);
                        this.p.append('\n');
                        this.q.remove(str);
                        if (n()) {
                            this.x.submit(this.y);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.p == null) {
                return;
            }
            Iterator it = new ArrayList(this.q.values()).iterator();
            while (it.hasNext()) {
                pm2 pm2Var = ((qm2) it.next()).f;
                if (pm2Var != null) {
                    pm2Var.a();
                }
            }
            D();
            b(this.p);
            this.p = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final pm2 h(String str) {
        synchronized (this) {
            try {
                if (this.p == null) {
                    throw new IllegalStateException("cache is closed");
                }
                qm2 qm2Var = (qm2) this.q.get(str);
                if (qm2Var == null) {
                    qm2Var = new qm2(this, str);
                    this.q.put(str, qm2Var);
                } else if (qm2Var.f != null) {
                    return null;
                }
                pm2 pm2Var = new pm2(this, qm2Var);
                qm2Var.f = pm2Var;
                this.p.append((CharSequence) "DIRTY");
                this.p.append(' ');
                this.p.append((CharSequence) str);
                this.p.append('\n');
                j(this.p);
                return pm2Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized s79 m(String str) {
        if (this.p == null) {
            throw new IllegalStateException("cache is closed");
        }
        qm2 qm2Var = (qm2) this.q.get(str);
        if (qm2Var == null) {
            return null;
        }
        if (!qm2Var.e) {
            return null;
        }
        for (File file : qm2Var.c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.r++;
        this.p.append((CharSequence) "READ");
        this.p.append(' ');
        this.p.append((CharSequence) str);
        this.p.append('\n');
        if (n()) {
            this.x.submit(this.y);
        }
        return new s79(qm2Var.c, 3);
    }

    public final boolean n() {
        int i = this.r;
        return i >= 2000 && i >= this.q.size();
    }

    public final void r() throws IOException {
        g(this.c);
        Iterator it = this.q.values().iterator();
        while (it.hasNext()) {
            qm2 qm2Var = (qm2) it.next();
            pm2 pm2Var = qm2Var.f;
            int i = this.k;
            int i2 = 0;
            if (pm2Var == null) {
                while (i2 < i) {
                    this.n += qm2Var.b[i2];
                    i2++;
                }
            } else {
                qm2Var.f = null;
                while (i2 < i) {
                    g(qm2Var.c[i2]);
                    g(qm2Var.d[i2]);
                    i2++;
                }
                it.remove();
            }
        }
    }

    public final void u() {
        File file = this.b;
        wp7 wp7Var = new wp7(new FileInputStream(file), bi8.a);
        try {
            String strA = wp7Var.a();
            String strA2 = wp7Var.a();
            String strA3 = wp7Var.a();
            String strA4 = wp7Var.a();
            String strA5 = wp7Var.a();
            if (!"libcore.io.DiskLruCache".equals(strA) || !"1".equals(strA2) || !Integer.toString(this.e).equals(strA3) || !Integer.toString(this.k).equals(strA4) || !"".equals(strA5)) {
                throw new IOException("unexpected journal header: [" + strA + ", " + strA2 + ", " + strA4 + ", " + strA5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    v(wp7Var.a());
                    i++;
                } catch (EOFException unused) {
                    this.r = i - this.q.size();
                    if (wp7Var.e == -1) {
                        z();
                    } else {
                        this.p = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), bi8.a));
                    }
                    try {
                        wp7Var.close();
                        return;
                    } catch (RuntimeException e) {
                        throw e;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                wp7Var.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final void v(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            y5.m("unexpected journal line: ".concat(str));
            return;
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        LinkedHashMap linkedHashMap = this.q;
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        qm2 qm2Var = (qm2) linkedHashMap.get(strSubstring);
        if (qm2Var == null) {
            qm2Var = new qm2(this, strSubstring);
            linkedHashMap.put(strSubstring, qm2Var);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                qm2Var.f = new pm2(this, qm2Var);
                return;
            } else {
                if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
                    return;
                }
                y5.m("unexpected journal line: ".concat(str));
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(TokenAuthenticationScheme.SCHEME_DELIMITER);
        qm2Var.e = true;
        qm2Var.f = null;
        if (strArrSplit.length != qm2Var.g.k) {
            c6.k(Arrays.toString(strArrSplit), "unexpected journal line: ");
            return;
        }
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            try {
                qm2Var.b[i2] = Long.parseLong(strArrSplit[i2]);
            } catch (NumberFormatException unused) {
                c6.k(Arrays.toString(strArrSplit), "unexpected journal line: ");
                return;
            }
        }
    }

    public final synchronized void z() {
        try {
            BufferedWriter bufferedWriter = this.p;
            if (bufferedWriter != null) {
                b(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c), bi8.a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write("1");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.e));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.k));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (qm2 qm2Var : this.q.values()) {
                    if (qm2Var.f != null) {
                        bufferedWriter2.write("DIRTY " + qm2Var.a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + qm2Var.a + qm2Var.a() + '\n');
                    }
                }
                b(bufferedWriter2);
                if (this.b.exists()) {
                    A(this.b, this.d, true);
                }
                A(this.c, this.b, false);
                this.d.delete();
                this.p = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), bi8.a));
            } catch (Throwable th) {
                b(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
