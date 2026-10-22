package defpackage;

import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Properties;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lk implements x98, tk5, zm7, t83, w23, k15, uk7, dh5, fa6, un5, cs9, es9, gt9 {
    public static final lk a = new lk();
    public static final lk b = new lk();
    public static final sl4 c = new sl4();
    public static final lk d = new lk();

    /* JADX WARN: Code duplicated, block: B:27:0x0069 A[Catch: SecurityException -> 0x0076, TRY_LEAVE, TryCatch #2 {SecurityException -> 0x0076, blocks: (B:25:0x0063, B:27:0x0069), top: B:61:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00a5 A[Catch: Exception -> 0x00ca, TryCatch #3 {Exception -> 0x00ca, blocks: (B:29:0x0076, B:31:0x00a5, B:33:0x00b8, B:35:0x00be), top: B:63:0x0076 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d4 A[Catch: Exception -> 0x00d9, TRY_ENTER, TryCatch #4 {Exception -> 0x00d9, blocks: (B:42:0x00d4, B:47:0x00e1, B:49:0x00fb, B:51:0x0103, B:45:0x00db), top: B:65:0x00d2 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00db A[Catch: Exception -> 0x00d9, TryCatch #4 {Exception -> 0x00d9, blocks: (B:42:0x00d4, B:47:0x00e1, B:49:0x00fb, B:51:0x0103, B:45:0x00db), top: B:65:0x00d2 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00e1 A[Catch: Exception -> 0x00d9, TryCatch #4 {Exception -> 0x00d9, blocks: (B:42:0x00d4, B:47:0x00e1, B:49:0x00fb, B:51:0x0103, B:45:0x00db), top: B:65:0x00d2 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00fb A[Catch: Exception -> 0x00d9, TryCatch #4 {Exception -> 0x00d9, blocks: (B:42:0x00d4, B:47:0x00e1, B:49:0x00fb, B:51:0x0103, B:45:0x00db), top: B:65:0x00d2 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0114  */
    /* JADX WARN: Code duplicated, block: B:57:0x0125 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:58:0x0126  */
    /* JADX WARN: Code duplicated, block: B:63:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public lk() {
        ClassLoader classLoader;
        Object objB;
        InputStream resourceAsStream;
        String line;
        File file;
        String property;
        String property2;
        Class<b33> cls = b33.class;
        boolean z = b33.a;
        try {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                Class<b33> cls2 = b33.b;
                if (cls2 == null) {
                    b33.b = cls;
                    cls2 = cls;
                }
                stringBuffer.append(cls2.getName());
                stringBuffer.append("$ClassLoaderFinderConcrete");
                if (Class.forName(stringBuffer.toString()).newInstance() == null) {
                    throw null;
                }
                throw new ClassCastException();
            } catch (Exception e) {
                throw new a33(e.toString(), e);
            }
        } catch (ClassNotFoundException unused) {
            Class<b33> cls3 = b33.b;
            if (cls3 == null) {
                b33.b = cls;
            } else {
                cls = cls3;
            }
            classLoader = cls.getClassLoader();
            boolean z2 = b33.a;
            try {
                property2 = System.getProperty("javax.xml.stream.XMLInputFactory");
                if (property2 != null) {
                    b33.a("found system property".concat(property2));
                    objB = b33.b(classLoader, property2);
                } else {
                    try {
                        String property3 = System.getProperty("java.home");
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(property3);
                        String str = File.separator;
                        stringBuffer2.append(str);
                        stringBuffer2.append("lib");
                        stringBuffer2.append(str);
                        stringBuffer2.append("jaxp.properties");
                        file = new File(stringBuffer2.toString());
                        if (file.exists()) {
                            Properties properties = new Properties();
                            properties.load(new FileInputStream(file));
                            property = properties.getProperty("javax.xml.stream.XMLInputFactory");
                            if (property != null || property.length() <= 0) {
                                try {
                                    if (classLoader == null) {
                                        resourceAsStream = ClassLoader.getSystemResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory");
                                    } else {
                                        resourceAsStream = classLoader.getResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory");
                                    }
                                    if (resourceAsStream != null) {
                                        b33.a("found META-INF/services/javax.xml.stream.XMLInputFactory");
                                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream, "UTF-8"));
                                        line = bufferedReader.readLine();
                                        bufferedReader.close();
                                        if (line != null || "".equals(line)) {
                                            b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                                            objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                                        } else {
                                            b33.a("loaded from services: ".concat(line));
                                            objB = b33.b(classLoader, line);
                                        }
                                    } else {
                                        b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                                        objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                                    }
                                } catch (Exception e2) {
                                    if (z2) {
                                        e2.printStackTrace();
                                    }
                                }
                            } else {
                                b33.a("found java.home property ".concat(property));
                                objB = b33.b(classLoader, property);
                            }
                        } else {
                            if (classLoader == null) {
                                resourceAsStream = ClassLoader.getSystemResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory");
                            } else {
                                resourceAsStream = classLoader.getResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory");
                            }
                            if (resourceAsStream != null) {
                                b33.a("found META-INF/services/javax.xml.stream.XMLInputFactory");
                                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(resourceAsStream, "UTF-8"));
                                line = bufferedReader2.readLine();
                                bufferedReader2.close();
                                if (line != null) {
                                    b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                                    objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                                } else {
                                    b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                                    objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                                }
                            } else {
                                b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                                objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                            }
                        }
                    } catch (Exception e3) {
                        if (z2) {
                            e3.printStackTrace();
                        }
                    }
                }
            } catch (SecurityException unused2) {
            }
            if (objB == null) {
                return;
            }
            e6.d();
            throw null;
        } catch (LinkageError unused3) {
            Class<b33> cls4 = b33.b;
            if (cls4 == null) {
                b33.b = cls;
            } else {
                cls = cls4;
            }
            classLoader = cls.getClassLoader();
            boolean z3 = b33.a;
            property2 = System.getProperty("javax.xml.stream.XMLInputFactory");
            if (property2 != null) {
                b33.a("found system property".concat(property2));
                objB = b33.b(classLoader, property2);
            } else {
                String property4 = System.getProperty("java.home");
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(property4);
                String str2 = File.separator;
                stringBuffer3.append(str2);
                stringBuffer3.append("lib");
                stringBuffer3.append(str2);
                stringBuffer3.append("jaxp.properties");
                file = new File(stringBuffer3.toString());
                if (file.exists()) {
                    Properties properties2 = new Properties();
                    properties2.load(new FileInputStream(file));
                    property = properties2.getProperty("javax.xml.stream.XMLInputFactory");
                    if (property != null) {
                        if (classLoader == null) {
                            resourceAsStream = ClassLoader.getSystemResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory");
                        } else {
                            resourceAsStream = classLoader.getResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory");
                        }
                        if (resourceAsStream != null) {
                            b33.a("found META-INF/services/javax.xml.stream.XMLInputFactory");
                            BufferedReader bufferedReader3 = new BufferedReader(new InputStreamReader(resourceAsStream, "UTF-8"));
                            line = bufferedReader3.readLine();
                            bufferedReader3.close();
                            if (line != null) {
                                b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                                objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                            } else {
                                b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                                objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                            }
                        } else {
                            b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                            objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                        }
                    } else {
                        if (classLoader == null) {
                            resourceAsStream = ClassLoader.getSystemResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory");
                        } else {
                            resourceAsStream = classLoader.getResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory");
                        }
                        if (resourceAsStream != null) {
                            b33.a("found META-INF/services/javax.xml.stream.XMLInputFactory");
                            BufferedReader bufferedReader4 = new BufferedReader(new InputStreamReader(resourceAsStream, "UTF-8"));
                            line = bufferedReader4.readLine();
                            bufferedReader4.close();
                            if (line != null) {
                                b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                                objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                            } else {
                                b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                                objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                            }
                        } else {
                            b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                            objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                        }
                    }
                } else {
                    if (classLoader == null) {
                        resourceAsStream = ClassLoader.getSystemResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory");
                    } else {
                        resourceAsStream = classLoader.getResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory");
                    }
                    if (resourceAsStream != null) {
                        b33.a("found META-INF/services/javax.xml.stream.XMLInputFactory");
                        BufferedReader bufferedReader5 = new BufferedReader(new InputStreamReader(resourceAsStream, "UTF-8"));
                        line = bufferedReader5.readLine();
                        bufferedReader5.close();
                        if (line != null) {
                            b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                            objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                        } else {
                            b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                            objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                        }
                    } else {
                        b33.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                        objB = b33.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                    }
                }
            }
            if (objB == null) {
                return;
            }
            e6.d();
            throw null;
        }
    }

    public static void q(ww4 ww4Var, boolean z, hk0 hk0Var, Long l, Long l2, boolean z2, String str, String str2, Long l3, int i) {
        boolean z3 = (i & 16) != 0 ? false : z2;
        String str3 = (i & 32) != 0 ? null : str;
        String str4 = (i & 64) != 0 ? null : str2;
        Long l4 = (i & 128) != 0 ? null : l3;
        if (z) {
            r(ww4Var, hk0Var, l, l2, z3, str3, str4, l4, null);
        }
    }

    public static void r(ww4 ww4Var, hk0 hk0Var, Long l, Long l2, boolean z, String str, String str2, Long l3, fk0 fk0Var) {
        Long l4;
        Long l5;
        if (io4.h(l) <= 0) {
            return;
        }
        ww4Var.add(new gk0(hk0Var, l, (l2 == null || l2.longValue() <= 0) ? null : l2, z, str, (str2 == null || nq7.j0(str2)) ? null : str2, (l3 == null || l3.longValue() <= 0) ? null : l3, (fk0Var == null || (l5 = fk0Var.a) == null || l5.longValue() < 0) ? null : l5, (fk0Var == null || (l4 = fk0Var.b) == null || l4.longValue() < 0) ? null : l4));
    }

    public static /* synthetic */ void s(ww4 ww4Var, hk0 hk0Var, Long l, Long l2, boolean z, String str, String str2, Long l3, fk0 fk0Var, int i) {
        if ((i & 8) != 0) {
            z = false;
        }
        r(ww4Var, hk0Var, l, l2, z, (i & 16) != 0 ? null : str, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? null : l3, fk0Var);
    }

    public static ca4 t(String str) {
        if (!TextUtils.isEmpty(str)) {
            int length = str.length();
            int i = length - 1;
            int i2 = i;
            while (i2 > -1) {
                if (Character.isDigit(str.charAt(i2))) {
                    int i3 = i2 + 1;
                    try {
                        return new ca4(i2 == i ? null : str.substring(i3, length), Float.parseFloat(str.substring(0, i3)));
                    } catch (NumberFormatException unused) {
                        break;
                    }
                }
                i2--;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0043 A[EDGE_INSN: B:18:0x0043->B:19:0x0044 BREAK  A[LOOP:0: B:13:0x002e->B:41:?]] */
    public static g55 w() {
        f55 f55Var;
        mp6 mp6Var = mp6.a;
        if (!mp6.g || !mp6.e()) {
            f55Var = null;
            break;
        }
        boolean z = g42.a;
        List listH = mp6.a.h(new String[]{g42.i("", "", "")}, ip6.SU);
        if (listH != null && listH.isEmpty()) {
            f55Var = null;
            break;
        }
        Iterator it = listH.iterator();
        while (true) {
            if (!it.hasNext()) {
                f55Var = null;
                break;
            }
            if (nq7.Z((String) it.next(), "Usage:", false)) {
                f55Var = f55.a;
                break;
            }
        }
        if (f55Var != null) {
            return f55Var;
        }
        mp6 mp6Var2 = mp6.a;
        if (mp6.g && mp6.e()) {
            boolean z2 = g42.a;
            List listH2 = mp6.a.h(new String[]{g42.h("", "", "")}, ip6.SU);
            if (listH2 == null || !listH2.isEmpty()) {
                Iterator it2 = listH2.iterator();
                while (it2.hasNext()) {
                    if (nq7.Z((String) it2.next(), "Usage:", false)) {
                        return e55.a;
                    }
                }
            }
        }
        return null;
    }

    public static final CharSequence z(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    @Override // defpackage.tk5
    public File C() {
        return null;
    }

    @Override // defpackage.t83
    public Class a() {
        return ParcelFileDescriptor.class;
    }

    @Override // defpackage.t83
    public void b(Object obj) throws IOException {
        ((ParcelFileDescriptor) obj).close();
    }

    @Override // defpackage.zm7
    public boolean c(long j) {
        return j == 3221225558L;
    }

    @Override // defpackage.tk5
    public File d() {
        return null;
    }

    @Override // defpackage.tk5
    public File e() {
        return null;
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) {
        lg9 lg9Var = (lg9) vm4Var;
        qw9 qw9VarW = rw9.w();
        byte[] bArrB = ((d2a) lg9Var.e.a).b();
        x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
        qw9VarW.c();
        rw9.v((rw9) qw9VarW.b, x69VarG);
        return pt9.a("type.googleapis.com/google.crypto.tink.AesGcmSivKey", ((rw9) qw9VarW.b()).b(), 2, sl9.b(lg9Var.d.b), lg9Var.k);
    }

    @Override // defpackage.k15
    public void g(String str, Level level) {
        System.out.println("[" + level + "] " + str);
    }

    @Override // defpackage.ea6
    public Object get() {
        return ni8.a;
    }

    @Override // defpackage.un5
    public hk5 h(nb4 nb4Var, hk5 hk5Var, boolean z) {
        return null;
    }

    @Override // defpackage.fa6
    public cz2 i(Reader reader) {
        throw null;
    }

    @Override // defpackage.tk5
    public File j() {
        return null;
    }

    @Override // defpackage.tk5
    public ez1 k() {
        return null;
    }

    @Override // defpackage.uk7
    public StackTraceElement[] l(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= 1024) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[1024];
        System.arraycopy(stackTraceElementArr, 0, stackTraceElementArr2, 0, 512);
        System.arraycopy(stackTraceElementArr, stackTraceElementArr.length - 512, stackTraceElementArr2, 512, 512);
        return stackTraceElementArr2;
    }

    @Override // defpackage.t83
    public Object m(File file) {
        return ParcelFileDescriptor.open(file, 268435456);
    }

    @Override // defpackage.cs9
    public vm4 n(pt9 pt9Var) throws GeneralSecurityException {
        if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            c6.f("Wrong type URL in call to AesGcmProtoSerialization.parseKey");
            return null;
        }
        try {
            lw9 lw9VarU = lw9.u(pt9Var.c, f79.a);
            if (lw9VarU.t() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            bs2 bs2VarB = kg9.b();
            bs2VarB.m(lw9VarU.x().d());
            bs2VarB.l();
            bs2VarB.n();
            bs2VarB.e = al9.a(pt9Var.e);
            kg9 kg9VarK = bs2VarB.k();
            e41 e41Var = new e41();
            e41Var.c = null;
            e41Var.d = null;
            e41Var.b = kg9VarK;
            e41Var.c = new km8(d2a.a(lw9VarU.x().w()));
            e41Var.d = pt9Var.f;
            return e41Var.e();
        } catch (p79 unused) {
            m0.h("Parsing AesGcmKey failed");
            return null;
        }
    }

    @Override // defpackage.x98
    public boolean o(Object obj, ea4 ea4Var) {
        return false;
    }

    @Override // defpackage.gt9
    public ot9 p(bd9 bd9Var) throws GeneralSecurityException {
        dp9 dp9Var = (dp9) bd9Var;
        lz9 lz9VarT = mz9.t();
        lz9VarT.f("type.googleapis.com/google.crypto.tink.AesSivKey");
        ax9 ax9VarX = bx9.x();
        int i = dp9Var.a;
        ax9VarX.c();
        ((bx9) ax9VarX.b).zze = i;
        lz9VarT.h(((bx9) ax9VarX.b()).b());
        cp9 cp9Var = dp9Var.b;
        Map map = lp9.e;
        if (!map.containsKey(cp9Var)) {
            throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(cp9Var)));
        }
        lz9VarT.e((r0a) map.get(cp9Var));
        return ot9.m((mz9) lz9VarT.b());
    }

    @Override // defpackage.k15
    public void u(Level level, String str, Throwable th) {
        System.out.println("[" + level + "] " + str);
        th.printStackTrace(System.out);
    }

    @Override // defpackage.tk5
    public File v() {
        return null;
    }

    @Override // defpackage.tk5
    public File x() {
        return null;
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new sx0(1);
    }
}
