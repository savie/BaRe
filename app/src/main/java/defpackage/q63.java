package defpackage;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.topjohnwu.superuser.Shell;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;
import org.swiftapps.filesystem.File$FileType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q63 implements Serializable {
    public static boolean d;
    public static boolean e;
    public static final p63 f = new p63();
    public static final gv7 k = new gv7(new zk(8));
    public final File a;
    public final int b;
    public File$FileType c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public q63(int i, q63 q63Var, String str) {
        this(new File(q63Var.v(), str), i);
        q63Var.getClass();
        str.getClass();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00a9  */
    public static boolean E(q63 q63Var) {
        RuntimeException runtimeException;
        if (q63Var.j()) {
            if (q63Var.x()) {
                runtimeException = null;
            } else {
                boolean z = q63Var.n().getFile() instanceof jr7;
                int i = Shell.UNKNOWN;
                zd7 zd7VarK = k55.k();
                boolean z2 = zd7VarK != null && zd7VarK.isRoot();
                StringBuilder sb = new StringBuilder("File ");
                sb.append(q63Var);
                sb.append(" exists and is not a directory. Unable to create directory. (SuFile:");
                sb.append(z);
                sb.append(", Root:");
                runtimeException = new RuntimeException(dj7.p(sb, z2, ")"));
                cy0.b.a("File", "mkdirs", runtimeException);
            }
        } else if (q63Var.n().getFile().mkdirs() || q63Var.x()) {
            runtimeException = null;
        } else {
            boolean z3 = q63Var.n().getFile() instanceof jr7;
            int i2 = Shell.UNKNOWN;
            zd7 zd7VarK2 = k55.k();
            boolean z4 = zd7VarK2 != null && zd7VarK2.isRoot();
            StringBuilder sb2 = new StringBuilder("Unable to create directory ");
            sb2.append(q63Var);
            sb2.append(". (SuFile:");
            sb2.append(z3);
            sb2.append(", Root:");
            runtimeException = new RuntimeException(dj7.p(sb2, z4, ")"));
            cy0.b.a("File", "mkdirs", runtimeException);
        }
        if (runtimeException == null) {
            if (runtimeException == null || (q63Var.j() && q63Var.x())) {
                return true;
            }
            throw runtimeException;
        }
        cy0.b.a("File", "Error in mkdirs, retrying...", null);
        String strConcat = "mkdir -pv ".concat(jr7.c(q63Var.v()));
        int i3 = Shell.UNKNOWN;
        zd7 zd7VarK3 = k55.k();
        o93 o93Var = (zd7VarK3 == null || !zd7VarK3.isRoot()) ? o93.NORMAL : o93.ROOT;
        ub ubVarZ = iz1.z(strConcat, o93Var);
        boolean z5 = q63Var.j() && q63Var.x();
        if (z5) {
            Log.i("File", "mkdir command successful for path: ".concat(q63Var.v()));
            return z5;
        }
        String strY0 = el1.Y0((List) ubVarZ.b, null, null, null, null, 63);
        cy0.b.a("File", "mkdir command failed for path: " + q63Var.v() + ". Shell: " + o93Var + ". Exit code: " + ubVarZ.a + ". Output: " + strY0, null);
        return z5;
    }

    public static String H(q63 q63Var) throws IOException {
        Charset charsetDefaultCharset = Charset.defaultCharset();
        charsetDefaultCharset.getClass();
        q63Var.getClass();
        if (q63Var.n() instanceof File$FileType.JavaFile) {
            Path path = q63Var.n().getFile().toPath();
            path.getClass();
            byte[] allBytes = Files.readAllBytes(path);
            allBytes.getClass();
            return new String(allBytes, charsetDefaultCharset);
        }
        InputStream inputStreamW = q63Var.w(true);
        try {
            String str = new String(cy0.E(inputStreamW), charsetDefaultCharset);
            inputStreamW.close();
            return str;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(inputStreamW, th);
                throw th2;
            }
        }
    }

    public static void K(q63 q63Var, String str) throws IOException {
        Charset charset = f51.a;
        q63Var.getClass();
        str.getClass();
        charset.getClass();
        OutputStream outputStreamF = q63Var.F(true);
        try {
            byte[] bytes = str.getBytes(charset);
            bytes.getClass();
            outputStreamF.write(bytes);
            outputStreamF.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(outputStreamF, th);
                throw th2;
            }
        }
    }

    public static final ParcelFileDescriptor s(q63 q63Var, int i) {
        try {
            z84 z84VarC = aq6.c();
            if (z84VarC != null) {
                return z84VarC.getParcelFileDescriptor(q63Var.n().getFile().getPath(), i);
            }
            return null;
        } catch (Exception e2) {
            cy0.b.a("File", "getParcelDescriptorRoot (" + q63Var + ")", e2);
            return null;
        } catch (ExceptionInInitializerError e3) {
            cy0.b.a("File", "getParcelDescriptorRoot (" + q63Var + ")", new RuntimeException(e3));
            return null;
        } catch (NoClassDefFoundError e4) {
            cy0.b.a("File", "getParcelDescriptorRoot (" + q63Var + ")", new RuntimeException(e4));
            return null;
        }
    }

    public final long A() {
        return n().getFile().length();
    }

    public final ArrayList B() {
        File[] fileArrListFiles = n().getFile().listFiles();
        if (fileArrListFiles == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(fileArrListFiles.length);
        for (File file : fileArrListFiles) {
            String path = file.getPath();
            path.getClass();
            arrayList.add(new q63(path, o()));
        }
        return arrayList;
    }

    public final ArrayList C(mt3 mt3Var) {
        File[] fileArrListFiles = n().getFile().listFiles();
        if (fileArrListFiles == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(fileArrListFiles.length);
        for (File file : fileArrListFiles) {
            String path = file.getPath();
            path.getClass();
            arrayList.add(new q63(path, o()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((Boolean) mt3Var.invoke(obj)).booleanValue()) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public final ArrayList D(FilenameFilter filenameFilter) {
        File[] fileArrListFiles = n().getFile().listFiles(filenameFilter);
        if (fileArrListFiles == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(fileArrListFiles.length);
        for (File file : fileArrListFiles) {
            String path = file.getPath();
            path.getClass();
            arrayList.add(new q63(path, o()));
        }
        return arrayList;
    }

    public final OutputStream F(boolean z) {
        OutputStream autoCloseOutputStream;
        try {
            File$FileType file$FileTypeN = n();
            if (file$FileTypeN instanceof File$FileType.JavaFile) {
                File parentFile = n().getFile().getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                ParcelFileDescriptor parcelFileDescriptorR = r(2);
                autoCloseOutputStream = parcelFileDescriptorR != null ? new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptorR) : new FileOutputStream(n().getFile());
            } else {
                if (!(file$FileTypeN instanceof File$FileType.LibsuFile)) {
                    throw new mn5();
                }
                q63 q63VarT = t();
                q63VarT.getClass();
                E(q63VarT);
                autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(r(2));
            }
            return z ? new BufferedOutputStream(autoCloseOutputStream, 262144) : autoCloseOutputStream;
        } catch (Exception e2) {
            cy0.b.a("File", "Unable to get output stream for file=".concat(v()), e2);
            try {
                OutputStream outputStreamE = jd4.E(new File(v()));
                outputStreamE.getClass();
                return outputStreamE instanceof BufferedOutputStream ? (BufferedOutputStream) outputStreamE : new BufferedOutputStream(outputStreamE, 262144);
            } catch (Exception e3) {
                cy0.b.a("File", "Unable to get SuFileOutputStream for file=".concat(v()), e3);
                return new BufferedOutputStream(new y45(v()), 262144);
            }
        }
    }

    public final xs3 G() {
        if (o() == 1) {
            f6.g(xs1.i(this, "Random writer requires a writable file: "));
            return null;
        }
        q63 q63VarT = t();
        if (q63VarT != null) {
            E(q63VarT);
        }
        File$FileType file$FileTypeN = n();
        if (file$FileTypeN instanceof File$FileType.JavaFile) {
            return new ws3(new RandomAccessFile(((File$FileType.JavaFile) file$FileTypeN).getFile(), "rw"));
        }
        if (!(file$FileTypeN instanceof File$FileType.LibsuFile)) {
            q.j();
            return null;
        }
        c73 c73VarL = l(5);
        if (c73VarL != null) {
            return new vs3(c73VarL);
        }
        f6.g(xs1.i(this, "Unable to open random writer for file="));
        return null;
    }

    public final boolean I(q63 q63Var) {
        q63Var.getClass();
        File$FileType file$FileTypeN = n();
        if (file$FileTypeN instanceof File$FileType.JavaFile) {
            return n().getFile().renameTo(new File(q63Var.v()));
        }
        if (file$FileTypeN instanceof File$FileType.LibsuFile) {
            return n().getFile().renameTo(new jr7(q63Var.v()));
        }
        q.j();
        return false;
    }

    public final q63 J(String str) {
        str.getClass();
        return new q63(v(), str, o());
    }

    public final BufferedReader a() {
        return new BufferedReader(new InputStreamReader(w(true), Charset.defaultCharset()), 262144);
    }

    public final boolean b() {
        boolean zCanRead;
        File file = this.a;
        if (file.exists()) {
            zCanRead = file.canRead();
        } else {
            file.getClass();
            File parentFile = file.getParentFile();
            while (parentFile != null && !parentFile.exists()) {
                parentFile = parentFile.getParentFile();
            }
            if (parentFile == null) {
                return true;
            }
            zCanRead = parentFile.canRead();
        }
        return !zCanRead;
    }

    public final boolean c() {
        boolean zCanWrite;
        File file = this.a;
        if (file.exists()) {
            zCanWrite = file.canWrite();
        } else {
            file.getClass();
            File parentFile = file.getParentFile();
            while (parentFile != null && !parentFile.exists()) {
                parentFile = parentFile.getParentFile();
            }
            if (parentFile == null) {
                return true;
            }
            zCanWrite = parentFile.canWrite();
        }
        return !zCanWrite;
    }

    public final void d(q63 q63Var, kl klVar) {
        if (q63Var.j()) {
            q63Var.h();
        } else {
            q63 q63VarT = q63Var.t();
            if (q63VarT != null) {
                E(q63VarT);
            }
        }
        e(q63Var.F(true), klVar);
    }

    public final void e(OutputStream outputStream, mt3 mt3Var) throws IOException {
        InputStream inputStreamW = w(true);
        try {
            try {
                byte[] bArr = new byte[262144];
                long jNanoTime = System.nanoTime();
                long j = 0;
                if (mt3Var != null) {
                    mt3Var.invoke(0L);
                }
                while (true) {
                    int i = inputStreamW.read(bArr);
                    if (i < 0) {
                        break;
                    }
                    outputStream.write(bArr, 0, i);
                    j += (long) i;
                    long jNanoTime2 = System.nanoTime();
                    if (mt3Var != null && jNanoTime2 - jNanoTime >= 2000000000) {
                        mt3Var.invoke(Long.valueOf(j));
                        jNanoTime = jNanoTime2;
                    }
                    try {
                        throw th;
                    } catch (Throwable th) {
                        rs9.c(inputStreamW, th);
                        throw th;
                    }
                }
                if (mt3Var != null) {
                    mt3Var.invoke(Long.valueOf(j));
                }
                outputStream.close();
                inputStreamW.close();
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    rs9.c(outputStream, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            throw th4;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof q63) {
            return pe4.d(n().getFile(), ((q63) obj).n().getFile());
        }
        return false;
    }

    public final boolean f() {
        File$FileType file$FileTypeN = n();
        if (!(file$FileTypeN instanceof File$FileType.JavaFile)) {
            if (file$FileTypeN instanceof File$FileType.LibsuFile) {
                return i();
            }
            q.j();
            return false;
        }
        if (!j()) {
            return true;
        }
        if (n().getFile().isDirectory()) {
            if (i()) {
                return true;
            }
            if (f13.b(n().getFile()) && !j()) {
                return true;
            }
        } else if (n().getFile().delete() || !j() || i()) {
            return true;
        }
        return false;
    }

    public final boolean g() {
        Object bn6Var;
        Object bn6Var2;
        q63 q63VarJ;
        gv7 gv7Var = m70.a;
        if (!j()) {
            return true;
        }
        try {
            g70 g70Var = m70.b;
            bn6Var = g70Var != null ? (q63) g70Var.invoke(this) : null;
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (bn6Var instanceof bn6) {
            bn6Var = null;
        }
        q63 q63Var = (q63) bn6Var;
        int i = 0;
        if (q63Var == null) {
            q63Var = null;
        } else {
            String strReplace = v().replace('\\', '/');
            strReplace.getClass();
            String strK0 = nq7.K0(strReplace, '/');
            if (strK0.length() == 0) {
                strK0 = "/";
            }
            String strReplace2 = q63Var.v().replace('\\', '/');
            strReplace2.getClass();
            String strK1 = nq7.K0(strReplace2, '/');
            if (strK1.length() == 0) {
                strK1 = "/";
            }
            if (strK0.equals("/") || strK1.equals(strK0) || uq7.V(strK1, strK0.concat("/"), false)) {
                cy0.b.a("AtomicFileDelete", dj7.l("Ignoring unsafe atomic delete trash directory ", q63Var.v(), " for ", v()), null);
            } else {
                try {
                    E(q63Var);
                    bn6Var2 = Boolean.valueOf(q63Var.j() && q63Var.x());
                } catch (Throwable th2) {
                    bn6Var2 = new bn6(th2);
                }
                Object obj = Boolean.FALSE;
                if (bn6Var2 instanceof bn6) {
                    bn6Var2 = obj;
                }
                if (!((Boolean) bn6Var2).booleanValue()) {
                }
            }
            q63Var = null;
        }
        if (q63Var != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= 10) {
                    q63VarJ = null;
                    break;
                }
                String strP = p();
                String str = "delete-" + System.currentTimeMillis() + "-" + UUID.randomUUID() + "-";
                Charset charset = f51.a;
                byte[] bytes = str.getBytes(charset);
                bytes.getClass();
                int length = 255 - bytes.length;
                if (length < 0) {
                    length = 0;
                }
                if (length <= 0) {
                    strP = "";
                } else {
                    byte[] bytes2 = strP.getBytes(charset);
                    bytes2.getClass();
                    if (bytes2.length > length) {
                        StringBuilder sb = new StringBuilder();
                        int iCharCount = 0;
                        int length2 = 0;
                        while (iCharCount < strP.length()) {
                            int iCodePointAt = strP.codePointAt(iCharCount);
                            char[] chars = Character.toChars(iCodePointAt);
                            chars.getClass();
                            String str2 = new String(chars);
                            byte[] bytes3 = str2.getBytes(f51.a);
                            bytes3.getClass();
                            length2 += bytes3.length;
                            if (length2 > length) {
                                break;
                            }
                            sb.append(str2);
                            iCharCount += Character.charCount(iCodePointAt);
                        }
                        strP = sb.toString();
                    }
                }
                q63VarJ = q63Var.J(str.concat(strP));
                if (!q63VarJ.j()) {
                    break;
                }
                i2++;
            }
        } else {
            q63VarJ = null;
            break;
        }
        if (q63VarJ == null) {
            return f();
        }
        Iterator it = h77.x0(new i77(new l70(this, null))).iterator();
        while (true) {
            v3 v3Var = (v3) it;
            if (!v3Var.hasNext()) {
                if (I(q63VarJ)) {
                    break;
                }
                return f();
            }
            o93 o93Var = (o93) v3Var.next();
            gv7 gv7Var2 = m70.a;
            String strA = m70.a(v(), o93Var);
            String strA2 = m70.a(q63VarJ.v(), o93Var);
            if (iz1.z("mv -f " + jr7.c(strA) + TokenAuthenticationScheme.SCHEME_DELIMITER + jr7.c(strA2), o93Var).a() && !j()) {
                break;
            }
        }
        gj gjVar = new gj(q63VarJ, 9);
        Object value = m70.a.getValue();
        value.getClass();
        ((Executor) value).execute(new j70(gjVar, i));
        return !j();
    }

    public final boolean h() {
        try {
            f();
        } catch (Throwable unused) {
        }
        return !j();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final boolean i() {
        String strConcat = "rm -rf ".concat(jr7.c(v()));
        Iterator it = h77.x0(new i77(new dm2(this, null))).iterator();
        while (true) {
            v3 v3Var = (v3) it;
            if (!v3Var.hasNext()) {
                return !j();
            }
            if (iz1.z(strConcat, (o93) v3Var.next()).a() && !j()) {
                return true;
            }
        }
    }

    public final boolean j() {
        return n().getFile().exists();
    }

    public final boolean k() {
        if (!j()) {
            return false;
        }
        if (y()) {
            return A() > 0;
        }
        l0.e("fileExistsWithNonZeroLength should not be called for Directories!");
        return false;
    }

    public final c73 l(int i) {
        try {
            ParcelFileDescriptor parcelFileDescriptorR = r(i);
            if (parcelFileDescriptorR == null) {
                return null;
            }
            if (i == 2 || i == 5) {
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptorR);
                FileChannel channel = autoCloseOutputStream.getChannel();
                channel.getClass();
                return new c73(channel, autoCloseOutputStream);
            }
            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptorR);
            FileChannel channel2 = autoCloseInputStream.getChannel();
            channel2.getClass();
            return new c73(channel2, autoCloseInputStream);
        } catch (Exception e2) {
            cy0.b.a("File", "getChannel", e2);
            return null;
        }
    }

    public final String m() {
        return nc3.R(n().getFile());
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00e3  */
    public final File$FileType n() {
        File file;
        File parentFile;
        File file2;
        File$FileType javaFile = this.c;
        if (javaFile == null) {
            int iO = o();
            File file3 = this.a;
            file3.getClass();
            p63 p63Var = f;
            p63Var.getClass();
            int i = 0;
            int i2 = 0;
            int i3 = 1;
            y63 y63Var = new y63(i3, p63Var, p63.class, "canWrite", "canWrite(Ljava/io/File;)Z", i, i2);
            z63 z63Var = new z63(i3, p63Var, p63.class, "canRead", "canRead(Ljava/io/File;)Z", i, i2);
            x11 x11Var = new x11(i3, p63Var, p63.class, "addWritableDir", "addWritableDir(Ljava/io/File;)V", i, 1);
            if (iO == 3) {
                javaFile = new File$FileType.JavaFile(file3);
            } else if (iO == 4) {
                javaFile = new File$FileType.LibsuFile(file3);
            } else if (((Boolean) y63Var.invoke(file3)).booleanValue()) {
                javaFile = new File$FileType.JavaFile(file3);
            } else if (iO == 1 && ((Boolean) z63Var.invoke(file3)).booleanValue()) {
                javaFile = new File$FileType.JavaFile(file3);
            } else {
                gv7 gv7Var = new gv7(new gj(file3, 17));
                boolean zExists = file3.exists();
                if (!(zExists && file3.canWrite()) && (zExists || (file2 = (File) gv7Var.getValue()) == null || !file2.canWrite())) {
                    boolean z = (zExists && file3.canRead()) || !(zExists || (file = (File) gv7Var.getValue()) == null || !file.canRead());
                    if (iO != 1) {
                        if ((iO == 2 || iO == 5) && (parentFile = file3.getParentFile()) != null) {
                            if (parentFile.exists() ? parentFile.canWrite() : parentFile.mkdirs()) {
                                x11Var.invoke(parentFile);
                                javaFile = new File$FileType.JavaFile(file3);
                            } else {
                                javaFile = null;
                            }
                        } else {
                            javaFile = null;
                        }
                    } else if (z) {
                        javaFile = new File$FileType.JavaFile(file3);
                    } else {
                        javaFile = null;
                    }
                    if (javaFile == null) {
                        javaFile = new File$FileType.LibsuFile(file3);
                    }
                } else {
                    javaFile = new File$FileType.JavaFile(file3);
                }
            }
            this.c = javaFile;
        }
        return javaFile;
    }

    public final int o() {
        if (d) {
            return 4;
        }
        return this.b;
    }

    public final String p() {
        String name = n().getFile().getName();
        name.getClass();
        return name;
    }

    public final String q() {
        File file = n().getFile();
        file.getClass();
        String name = file.getName();
        name.getClass();
        return nq7.F0(name, ".", name);
    }

    public final ParcelFileDescriptor r(int i) {
        int i2;
        if (i != 2) {
            i2 = i != 5 ? 268435456 : 939524096;
        } else {
            i2 = 738197504;
        }
        if (n() instanceof File$FileType.LibsuFile) {
            Log.i("File", "getParcelFileDescriptor: Enforcing root method");
            ParcelFileDescriptor parcelFileDescriptorS = s(this, i2);
            if (parcelFileDescriptorS != null) {
                return parcelFileDescriptorS;
            }
        }
        File$FileType file$FileTypeN = n();
        if (file$FileTypeN instanceof File$FileType.JavaFile) {
            try {
                return ParcelFileDescriptor.open(n().getFile(), i2);
            } catch (Exception e2) {
                cy0.b.a("File", "getParcelDescriptorJava (" + this + ")", e2);
                return s(this, i2);
            }
        }
        if (!(file$FileTypeN instanceof File$FileType.LibsuFile)) {
            q.j();
            return null;
        }
        if (!e) {
            return s(this, i2);
        }
        try {
            return ji8.q(this, i);
        } catch (Exception e3) {
            cy0.b.a("File", "getParcelDescriptorSaf (" + this + ")", e3);
            return s(this, i2);
        }
    }

    public final q63 t() {
        String parent = n().getFile().getParent();
        if (parent != null) {
            return new q63(parent, o());
        }
        return null;
    }

    public final String toString() {
        return v();
    }

    public final String v() {
        if (!(n() instanceof File$FileType.LibsuFile) || !((Boolean) k.getValue()).booleanValue()) {
            String path = n().getFile().getPath();
            path.getClass();
            return path;
        }
        String path2 = n().getFile().getPath();
        path2.getClass();
        if (!uq7.V(path2, "/storage/emulated/", false) || uq7.V(path2, "/storage/emulated/0/", false)) {
            return path2;
        }
        String path3 = new File(uq7.T(path2, "/storage/emulated/", "/data/media/")).getPath();
        path3.getClass();
        return path3;
    }

    public final InputStream w(boolean z) {
        InputStream x45Var;
        FileInputStream autoCloseInputStream;
        try {
            File$FileType file$FileTypeN = n();
            if (file$FileTypeN instanceof File$FileType.JavaFile) {
                autoCloseInputStream = new FileInputStream(n().getFile());
            } else {
                if (!(file$FileTypeN instanceof File$FileType.LibsuFile)) {
                    throw new mn5();
                }
                if (!j()) {
                    throw new IllegalStateException("File doesn't exist!");
                }
                autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(r(1));
            }
            return z ? new BufferedInputStream(autoCloseInputStream, 262144) : autoCloseInputStream;
        } catch (Exception e2) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(e2);
            cy0.b.a("File", "Unable to get input stream for file=".concat(v()), e2);
            try {
                x45Var = xx3.x(new File(v()));
            } catch (Exception e3) {
                arrayList.add(e3);
                cy0.b.a("File", "Unable to get SuFileInputStream for file=".concat(v()), e3);
                try {
                    x45Var = new x45(v());
                } catch (Exception e4) {
                    arrayList.add(e4);
                    cy0.b.a("File", "Unable to get MShellInputStream for file=".concat(v()), e4);
                    g84.h(el1.Y0(arrayList, null, null, null, new hw(2), 31));
                    return null;
                }
            }
            x45Var.getClass();
            return x45Var;
        }
    }

    public final boolean x() {
        return n().getFile().isDirectory();
    }

    public final boolean y() {
        return n().getFile().isFile();
    }

    public final long z() {
        return n().getFile().lastModified();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public q63(String str, int i) {
        this(new File(str), i);
        str.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public q63(String str, String str2, int i) {
        this(new File(str, str2), i);
        str2.getClass();
    }

    public q63(File file, int i) {
        file.getClass();
        this.a = file;
        this.b = i;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public q63(File file, String str, int i) {
        this(new File(file, str), i);
        str.getClass();
    }
}
