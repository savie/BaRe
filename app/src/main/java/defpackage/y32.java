package defpackage;

import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class y32 {
    public static final gv7 a = new gv7(new ov(4));
    public static final gv7 b = new gv7(new qm(7));
    public static final gv7 c = new gv7(new pu(3));
    public static final boolean d;

    static {
        boolean z;
        x32 x32VarG = g();
        x32VarG.getClass();
        try {
            x32VarG.a.a();
            z = true;
        } catch (Throwable unused) {
            z = false;
        }
        d = z;
        if (z) {
            return;
        }
        vr6.e$default(vr6.INSTANCE, "CryptoHelper", "CryptoHelper: Encryption not available!", null, 4, null);
    }

    public static String a(String str) {
        str.getClass();
        byte[] bArr = new byte[0];
        try {
            byte[] bArrA = g().a(Base64.decode(str, 0), h());
            bArrA.getClass();
            bArr = bArrA;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "CryptoHelper", "decrypt", e, null, 8, null);
        }
        return new String(bArr, f51.a);
    }

    public static boolean b(ck ckVar, u14 u14Var) {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        Iterator it = ((ArrayList) x50.p0(new x32[]{g(), (x32) b.getValue()})).iterator();
        while (it.hasNext()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(((x32) it.next()).c((InputStream) ckVar.invoke(), h()), f51.a), 8192);
                try {
                    f77 f77VarP = rs9.p(bufferedReader);
                    Closeable closeable = (Closeable) u14Var.invoke();
                    try {
                        OutputStream outputStream = (OutputStream) closeable;
                        Iterator it2 = ((ws1) f77VarP).iterator();
                        while (it2.hasNext()) {
                            String str = ((String) it2.next()) + "\n";
                            Charset charsetDefaultCharset = Charset.defaultCharset();
                            charsetDefaultCharset.getClass();
                            byte[] bytes = str.getBytes(charsetDefaultCharset);
                            bytes.getClass();
                            outputStream.write(bytes);
                        }
                        outputStream.flush();
                        closeable.close();
                        bufferedReader.close();
                        return true;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(closeable, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        rs9.c(bufferedReader, th3);
                        throw th4;
                    }
                }
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "CryptoHelper", xs1.j("decryptToOutputStream: ", e.getMessage()), null, 4, null);
            }
        }
        return false;
    }

    public static void c(InputStream inputStream, OutputStream outputStream) {
        ai8.b();
        try {
            pk5 pk5VarC = g().c(inputStream, h());
            try {
                try {
                    cy0.j(pk5VarC, outputStream, 262144);
                    outputStream.close();
                    pk5VarC.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(outputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    rs9.c(pk5VarC, th3);
                    throw th4;
                }
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "CryptoHelper", xs1.j("decryptToOutputStream0: ", e.getMessage()), null, 4, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x009e  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b5  */
    /* JADX WARN: Instruction removed from duplicated block: B:43:0x009e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:44:0x00b5, please report this as an issue */
    public static String d(InputStream inputStream, boolean z) {
        m84 m84Var;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        try {
            pk5 pk5VarC = g().c(inputStream, h());
            try {
                Charset charsetDefaultCharset = Charset.defaultCharset();
                int i = n84.a;
                aq7 aq7Var = new aq7();
                int i2 = g51.a;
                if (charsetDefaultCharset == null) {
                    charsetDefaultCharset = Charset.defaultCharset();
                }
                InputStreamReader inputStreamReader = new InputStreamReader(pk5VarC, charsetDefaultCharset);
                ThreadLocal threadLocal = m84.b;
                Object[] objArr = (Object[]) threadLocal.get();
                if (((Boolean) objArr[0]).booleanValue()) {
                    m84Var = new m84(new char[8192]);
                } else {
                    objArr[0] = Boolean.TRUE;
                    m84Var = m84.c;
                }
                try {
                    char[] cArr = m84Var.a;
                    if (cArr == null) {
                        cArr = (char[]) ((Object[]) threadLocal.get())[1];
                    }
                    while (true) {
                        int i3 = inputStreamReader.read(cArr);
                        if (-1 == i3) {
                            m84Var.close();
                            String string = aq7Var.a.toString();
                            pk5VarC.close();
                            return string;
                        }
                        aq7Var.write(cArr, 0, i3);
                    }
                } catch (Throwable th) {
                    if (m84Var == null) {
                        throw th;
                    }
                    try {
                        m84Var.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                    if (z) {
                        vr6.e$default(vr6.INSTANCE, "CryptoHelper", "decryptToString: " + e, null, 4, null);
                    } else {
                        Log.e("CryptoHelper", "decryptToString: " + e);
                    }
                    return null;
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    rs9.c(pk5VarC, th3);
                    throw th4;
                }
            }
        } catch (Exception e) {
            if (z) {
                vr6.e$default(vr6.INSTANCE, "CryptoHelper", "decryptToString: " + e, null, 4, null);
            } else {
                Log.e("CryptoHelper", "decryptToString: " + e);
            }
            return null;
        }
    }

    public static String e(String str) {
        str.getClass();
        byte[] bArr = new byte[0];
        try {
            x32 x32VarG = g();
            byte[] bytes = str.getBytes(f51.a);
            bytes.getClass();
            byte[] bArrB = x32VarG.b(bytes, h());
            bArrB.getClass();
            bArr = bArrB;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "CryptoHelper", "encrypt", e, null, 8, null);
        }
        String strEncodeToString = Base64.encodeToString(bArr, 0);
        strEncodeToString.getClass();
        return strEncodeToString;
    }

    public static boolean f(InputStream inputStream, OutputStream outputStream) {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        try {
            BufferedOutputStream bufferedOutputStream = outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, 262144);
            Charset charsetDefaultCharset = Charset.defaultCharset();
            charsetDefaultCharset.getClass();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, charsetDefaultCharset), 8192);
            try {
                f77 f77VarP = rs9.p(bufferedReader);
                qk5 qk5VarD = g().d(bufferedOutputStream, h());
                try {
                    Iterator it = ((ws1) f77VarP).iterator();
                    while (it.hasNext()) {
                        byte[] bytes = (((String) it.next()) + "\n").getBytes(f51.a);
                        bytes.getClass();
                        qk5VarD.write(bytes, 0, bytes.length);
                    }
                    qk5VarD.flush();
                    qk5VarD.close();
                    bufferedReader.close();
                    return true;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(qk5VarD, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    rs9.c(bufferedReader, th3);
                    throw th4;
                }
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "CryptoHelper", "encryptJsonFile: " + e, null, 4, null);
            return false;
        }
    }

    public static x32 g() {
        return (x32) a.getValue();
    }

    public static gx2 h() {
        Object value = c.getValue();
        value.getClass();
        return (gx2) value;
    }
}
