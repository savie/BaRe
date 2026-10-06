package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jb5 {
    public static final /* synthetic */ int h = 0;
    public final ea5 a;
    public final OkHttpClient b;
    public final mt3 c;
    public final SecureRandom d;
    public final MediaType e;
    public final ConcurrentHashMap.KeySetView f;
    public final ConcurrentHashMap.KeySetView g;

    static {
        Pattern.compile("\\d+:0\\*([\\w-]+)").getClass();
    }

    public jb5(ea5 ea5Var, OkHttpClient okHttpClient) {
        ou ouVar = new ou(11);
        okHttpClient.getClass();
        this.a = ea5Var;
        this.b = okHttpClient;
        this.c = ouVar;
        this.d = new SecureRandom();
        ai6 ai6Var = MediaType.d;
        this.e = MediaType.Companion.a("application/octet-stream");
        this.f = ConcurrentHashMap.newKeySet();
        this.g = ConcurrentHashMap.newKeySet();
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00c6  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v6, types: [ov2] */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Iterable, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.util.ArrayList] */
    public static List a(fl4 fl4Var, String str) {
        Object bn6Var;
        ?? B0;
        ?? arrayList;
        Object bn6Var2;
        List listSubList;
        Object bn6Var3;
        Object bn6Var4;
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX != null) {
            if (qj4VarX instanceof el4) {
                qj4VarX = null;
            }
            if (qj4VarX != null) {
                if (qj4VarX instanceof xi4) {
                    xi4 xi4VarG = qj4VarX.g();
                    B0 = new ArrayList();
                    Iterator it = xi4VarG.a.iterator();
                    while (it.hasNext()) {
                        try {
                            bn6Var4 = ((qj4) it.next()).o();
                        } catch (Throwable th) {
                            bn6Var4 = new bn6(th);
                        }
                        if (bn6Var4 instanceof bn6) {
                            bn6Var4 = null;
                        }
                        String str2 = (String) bn6Var4;
                        if (str2 == null || nq7.j0(str2)) {
                            str2 = null;
                        }
                        if (str2 != null) {
                            B0.add(str2);
                        }
                    }
                } else {
                    try {
                        bn6Var = qj4VarX.o();
                    } catch (Throwable th2) {
                        bn6Var = new bn6(th2);
                    }
                    if (bn6Var instanceof bn6) {
                        bn6Var = null;
                    }
                    String str3 = (String) bn6Var;
                    if (str3 == null || nq7.j0(str3)) {
                        str3 = null;
                    }
                    B0 = fl1.B0(str3);
                }
                if (B0.isEmpty()) {
                    m0.j(str, "MEGA transfer response is missing '");
                    return null;
                }
                qj4 qj4VarX2 = fl4Var.x("ip");
                if (qj4VarX2 == null) {
                    arrayList = 0;
                } else {
                    if (!(qj4VarX2 instanceof xi4)) {
                        qj4VarX2 = null;
                    }
                    if (qj4VarX2 != null) {
                        xi4 xi4VarG2 = qj4VarX2.g();
                        arrayList = new ArrayList(hl1.G0(xi4VarG2, 10));
                        Iterator it2 = xi4VarG2.a.iterator();
                        while (it2.hasNext()) {
                            try {
                                bn6Var3 = ((qj4) it2.next()).o();
                            } catch (Throwable th3) {
                                bn6Var3 = new bn6(th3);
                            }
                            if (bn6Var3 instanceof bn6) {
                                bn6Var3 = "";
                            }
                            arrayList.add((String) bn6Var3);
                        }
                    } else {
                        arrayList = 0;
                    }
                }
                if (arrayList == 0) {
                    arrayList = ov2.a;
                }
                Object obj = ua5.a;
                if (!B0.isEmpty()) {
                    synchronized (ua5.a) {
                        try {
                            int i = 0;
                            for (Object obj2 : B0) {
                                int i2 = i + 1;
                                if (i < 0) {
                                    fl1.F0();
                                    throw null;
                                }
                                try {
                                    bn6Var2 = new URI((String) obj2).getHost();
                                } catch (Throwable th4) {
                                    bn6Var2 = new bn6(th4);
                                }
                                if (bn6Var2 instanceof bn6) {
                                    bn6Var2 = null;
                                }
                                String str4 = (String) bn6Var2;
                                if (str4 != null) {
                                    if (nq7.j0(str4)) {
                                        str4 = null;
                                    }
                                    if (str4 != null) {
                                        Object obj3 = ua5.a;
                                        int i3 = 2;
                                        if (arrayList.size() == B0.size() * 2) {
                                            int i4 = i * 2;
                                            listSubList = arrayList.subList(i4, i4 + 2);
                                        } else {
                                            listSubList = ov2.a;
                                        }
                                        List listA = ua5.a(listSubList);
                                        if (!listA.isEmpty()) {
                                            ta5 ta5Var = ua5.b;
                                            Locale locale = Locale.US;
                                            locale.getClass();
                                            String lowerCase = str4.toLowerCase(locale);
                                            lowerCase.getClass();
                                            AtomicInteger atomicInteger = ga5.a;
                                            List listN1 = el1.n1(listA, new cz3(i3));
                                            HashSet hashSet = new HashSet();
                                            ArrayList arrayList2 = new ArrayList();
                                            for (Object obj4 : listN1) {
                                                if (hashSet.add(((InetAddress) obj4).getHostAddress())) {
                                                    arrayList2.add(obj4);
                                                }
                                            }
                                            ta5Var.put(lowerCase, arrayList2);
                                        } else if (!listSubList.isEmpty()) {
                                            ta5 ta5Var2 = ua5.b;
                                            Locale locale2 = Locale.US;
                                            locale2.getClass();
                                            String lowerCase2 = str4.toLowerCase(locale2);
                                            lowerCase2.getClass();
                                            if (ta5Var2.containsKey(lowerCase2)) {
                                                locale2.getClass();
                                                String lowerCase3 = str4.toLowerCase(locale2);
                                                lowerCase3.getClass();
                                                ta5Var2.put(lowerCase3, ov2.a);
                                            }
                                        }
                                    }
                                }
                                i = i2;
                                throw th;
                            }
                        } catch (Throwable th5) {
                            throw th5;
                        }
                    }
                }
                return B0;
            }
        }
        m0.j(str, "MEGA transfer response is missing '");
        return null;
    }

    public static void b(ConcurrentHashMap.KeySetView keySetView) {
        Iterator it = keySetView.iterator();
        while (it.hasNext()) {
            ((Call) it.next()).cancel();
        }
    }

    public static byte[] c(byte[] bArr, int[] iArr, byte[] bArr2, int i, int i2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        int i3;
        byte[] bArr3;
        byte[] bArr4;
        int i4;
        byte[] bArrA;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > bArr2.length) {
            c6.f("MEGA chunk MAC range is invalid");
            return null;
        }
        if (i2 == 0) {
            return new byte[16];
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iArr.length * 4);
        byteBufferAllocate.getClass();
        for (int i5 : iArr) {
            byteBufferAllocate.putInt(i5);
        }
        byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        if (i < 0 || i2 < 0 || i3 > bArr2.length) {
            c6.f("MEGA padded range is invalid");
            return null;
        }
        int i6 = i2 % 16;
        if (i6 == 0) {
            bArr4 = bArr2;
            i4 = i;
            bArr3 = null;
        } else {
            bArr3 = new byte[((i2 + 15) / 16) * 16];
            bArr4 = bArr2;
            i4 = i;
            x50.j0(bArr4, bArr3, 0, i4, i3, 2);
        }
        if (bArr3 != null) {
            bArrA = y13.a(bArr, bArrArray, bArr3);
        } else {
            if (bArrArray.length != 16) {
                c6.f("AES-CBC IV must be 16 bytes");
                return null;
            }
            if (i4 < 0 || i2 < 0 || i3 > bArr4.length) {
                c6.f("AES-CBC plaintext range is invalid");
                return null;
            }
            if (i6 != 0) {
                c6.f("AES-CBC plaintext range must be block aligned");
                return null;
            }
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
            cipher.init(1, new SecretKeySpec(bArr, "AES"), new IvParameterSpec(bArrArray));
            bArrA = cipher.doFinal(bArr4, i4, i2);
            bArrA.getClass();
        }
        try {
            return x50.k0(bArrA, bArrA.length - 16, bArrA.length);
        } finally {
            Arrays.fill(bArrArray, (byte) 0);
            if (bArr3 != null) {
                Arrays.fill(bArr3, (byte) 0);
            }
            Arrays.fill(bArrA, (byte) 0);
        }
    }

    public static ArrayList d(long j) {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        long j2 = 0;
        while (j > 0) {
            int iMin = (int) Math.min(j, i <= 8 ? 131072 * i : 1048576);
            arrayList.add(new db5(iMin, j2));
            long j3 = iMin;
            j2 += j3;
            j -= j3;
            i++;
        }
        return arrayList;
    }

    public static byte[] f(byte[] bArr, int[] iArr, long j, byte[] bArr2) {
        int[] iArr2 = {iArr[0], iArr[1], (int) (j / 68719476736L), (int) (j / 16)};
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
        byteBufferAllocate.getClass();
        for (int i = 0; i < 4; i++) {
            byteBufferAllocate.putInt(iArr2[i]);
        }
        byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        try {
            if (bArrArray.length != 16) {
                throw new IllegalArgumentException("AES-CTR IV must be 16 bytes");
            }
            Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
            cipher.init(1, new SecretKeySpec(bArr, "AES"), new IvParameterSpec(bArrArray));
            byte[] bArrDoFinal = cipher.doFinal(bArr2);
            bArrDoFinal.getClass();
            Arrays.fill(bArrArray, (byte) 0);
            return bArrDoFinal;
        } catch (Throwable th) {
            Arrays.fill(bArrArray, (byte) 0);
            throw th;
        }
    }

    public static List h(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return ov2.a;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int i = 0;
        long j = 0;
        int i2 = 0;
        for (Object obj : arrayList) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                fl1.F0();
                throw null;
            }
            db5 db5Var = (db5) obj;
            if (!arrayList3.isEmpty() && db5Var.b + i > 2097152 && !arrayList3.isEmpty()) {
                arrayList2.add(new ya5(arrayList2.size(), j, i, el1.v1(arrayList3)));
                arrayList3.clear();
                i = 0;
            }
            if (arrayList3.isEmpty()) {
                j = db5Var.a;
            }
            arrayList3.add(new cb5(i2, db5Var));
            i += db5Var.b;
            i2 = i3;
        }
        if (arrayList3.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(new ya5(arrayList2.size(), j, i, el1.v1(arrayList3)));
        arrayList3.clear();
        return arrayList2;
    }

    public static int i(ExecutorCompletionService executorCompletionService, int i, int i2, boolean z, mt3 mt3Var) throws Throwable {
        Future futurePoll;
        while (i < i2) {
            if (!z) {
                futurePoll = executorCompletionService.poll();
                if (futurePoll == null) {
                    break;
                }
            } else {
                futurePoll = executorCompletionService.take();
            }
            futurePoll.getClass();
            try {
                Object obj = futurePoll.get();
                obj.getClass();
                mt3Var.invoke(obj);
                i++;
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause == null) {
                    throw e;
                }
                throw cause;
            }
        }
        return i;
    }

    public static int j(ExecutorCompletionService executorCompletionService, int i, int i2, boolean z, mt3 mt3Var) throws Throwable {
        Future futurePoll;
        while (i < i2) {
            if (!z) {
                futurePoll = executorCompletionService.poll();
                if (futurePoll == null) {
                    break;
                }
            } else {
                futurePoll = executorCompletionService.take();
            }
            i++;
            futurePoll.getClass();
            try {
                Object obj = futurePoll.get();
                obj.getClass();
                if (((Boolean) mt3Var.invoke(obj)).booleanValue()) {
                    return i;
                }
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause == null) {
                    throw e;
                }
                throw cause;
            }
        }
        return i;
    }

    public static String k(q63 q63Var, long j) {
        InputStream inputStreamW = q63Var.w(false);
        try {
            byte[] bArrL = l(inputStreamW, j);
            inputStreamW.close();
            long jZ = q63Var.z();
            if (jZ < 0) {
                jZ = 0;
            }
            byte[] bArr = new byte[9];
            int i = 0;
            for (long j2 = jZ / 1000; j2 > 0; j2 >>>= 8) {
                i++;
                bArr[i] = (byte) j2;
            }
            bArr[0] = (byte) i;
            String strEncodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString(x50.u0(bArrL, Arrays.copyOf(bArr, i + 1)));
            strEncodeToString.getClass();
            return strEncodeToString;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(inputStreamW, th);
                throw th2;
            }
        }
    }

    public static byte[] l(InputStream inputStream, long j) throws IOException {
        long j2 = 0;
        if (j < 0) {
            c6.f("MEGA fingerprint file size is invalid");
            return null;
        }
        if (j <= 16) {
            byte[] bArr = new byte[16];
            q(inputStream, bArr, (int) j);
            return bArr;
        }
        byte[] bArr2 = new byte[16];
        int i = 4;
        byte b = 0;
        if (j <= 8192) {
            int i2 = (int) j;
            byte[] bArr3 = new byte[i2];
            q(inputStream, bArr3, i2);
            int i3 = 0;
            while (i3 < 4) {
                int i4 = (int) ((((long) i3) * j) / 4);
                int i5 = i3 + 1;
                CRC32 crc32 = new CRC32();
                crc32.update(bArr3, i4, ((int) ((((long) i5) * j) / 4)) - i4);
                ByteBuffer.wrap(bArr2, i3 * 4, 4).order(ByteOrder.BIG_ENDIAN).putInt((int) crc32.getValue());
                i3 = i5;
            }
            Arrays.fill(bArr3, (byte) 0);
            return bArr2;
        }
        byte[] bArr4 = new byte[64];
        long j3 = 0;
        int i6 = 0;
        while (i6 < i) {
            CRC32 crc33 = new CRC32();
            long j4 = j2;
            for (int i7 = b; i7 < 32; i7++) {
                long j5 = j - 64;
                long j6 = (((((long) i6) * 32) + ((long) i7)) * j5) / 127;
                if (j6 <= j5) {
                    j5 = j6;
                }
                long j7 = j5 - j3;
                if (j7 < j4) {
                    c6.f("MEGA fingerprint sparse offsets moved backwards");
                    return null;
                }
                while (j7 > j4) {
                    long jSkip = inputStream.skip(j7);
                    if (jSkip > j4) {
                        j7 -= jSkip;
                    } else {
                        if (inputStream.read() < 0) {
                            throw new EOFException("MEGA fingerprint source ended early");
                        }
                        j7--;
                    }
                }
                q(inputStream, bArr4, 64);
                j3 = j5 + 64;
                crc33.update(bArr4, 0, 64);
            }
            i = 4;
            ByteBuffer.wrap(bArr2, i6 * 4, 4).order(ByteOrder.BIG_ENDIAN).putInt((int) crc33.getValue());
            i6++;
            j2 = j4;
            b = 0;
        }
        Arrays.fill(bArr4, b);
        return bArr2;
    }

    public static boolean n(IOException iOException, ft7 ft7Var, int i) throws InterruptedIOException {
        if (ft7Var != null) {
            t(ft7Var);
        }
        return ((iOException instanceof fb5) || (iOException instanceof kb5) || (iOException instanceof eb5) || i >= 16 || Thread.currentThread().isInterrupted()) ? false : true;
    }

    public static int[] o(ArrayList arrayList, byte[] bArr) {
        byte[] bArrC = new byte[16];
        try {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArr2 = (byte[]) it.next();
                byte[] bArr3 = new byte[16];
                for (int i = 0; i < 16; i++) {
                    bArr3[i] = (byte) (bArr2[i] ^ bArrC[i]);
                }
                bArrC = y13.c(bArr, bArr3);
                Arrays.fill(bArr3, (byte) 0);
            }
            int length = ((bArrC.length + 3) / 4) * 4;
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(Arrays.copyOf(bArrC, length));
            int i2 = length / 4;
            int[] iArr = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                iArr[i3] = byteBufferWrap.getInt();
            }
            return new int[]{iArr[0] ^ iArr[1], iArr[3] ^ iArr[2]};
        } finally {
            Arrays.fill(bArrC, (byte) 0);
        }
    }

    public static String p(byte[] bArr) throws pb3, fb5, eb5 {
        if (bArr.length == 36) {
            try {
                String strEncodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString(bArr);
                strEncodeToString.getClass();
                return strEncodeToString;
            } finally {
                Arrays.fill(bArr, (byte) 0);
            }
        }
        String str = new String(bArr, f51.d);
        if (str.equals("0")) {
            Arrays.fill(bArr, (byte) 0);
            return "";
        }
        Integer numW = uq7.W(10, str);
        Arrays.fill(bArr, (byte) 0);
        if (numW == null || numW.intValue() >= 0) {
            throw new fb5("Unexpected MEGA upload chunk response: ".concat(nq7.G0(64, str)));
        }
        if (numW.intValue() == -4) {
            throw new eb5("MEGA upload server failed chunk (DAEMON_EFAILED)");
        }
        if (numW.intValue() == -14) {
            throw new pb3("MEGA upload chunk integrity check failed (API_EKEY)");
        }
        throw new ca5(numW.intValue());
    }

    public static void q(InputStream inputStream, byte[] bArr, int i) throws IOException {
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 < 0) {
                throw new EOFException("MEGA fingerprint source ended early");
            }
            i2 += i3;
        }
    }

    public static void t(ft7 ft7Var) throws InterruptedIOException {
        if (ft7Var.a.get()) {
            throw new InterruptedIOException("MEGA transfer cancelled");
        }
    }

    public static hb5 u(Response response) {
        String string;
        Long lY;
        int i = response.d;
        String str = response.c;
        String strB = Response.b("X-MEGA-Time-Left", response);
        Long l = null;
        if (strB != null && (string = nq7.H0(strB).toString()) != null && (lY = uq7.Y(string)) != null && lY.longValue() > 0) {
            l = lY;
        }
        return new hb5(i, str, l);
    }

    public static void w(pa5 pa5Var, byte[] bArr, ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        byte[] bArrA = x13.a(o(arrayList, bArr));
        int[] iArr = pa5Var.h;
        byte[] bArrA2 = x13.a(new int[]{iArr[6], iArr[7]});
        try {
            if (!Arrays.equals(bArrA, bArrA2)) {
                throw new IllegalStateException("MEGA file MAC mismatch for ".concat(pa5Var.c).toString());
            }
            Arrays.fill(bArrA, (byte) 0);
            Arrays.fill(bArrA2, (byte) 0);
        } catch (Throwable th) {
            Arrays.fill(bArrA, (byte) 0);
            Arrays.fill(bArrA2, (byte) 0);
            throw th;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void e(gh ghVar, pa5 pa5Var, String str, String str2, int[] iArr, byte[] bArr, ArrayList arrayList, String str3) {
        int[] iArrO = o(arrayList, bArr);
        int i = iArr[0];
        int i2 = iArr[4];
        int i3 = iArr[1];
        int i4 = iArr[5];
        int i5 = iArr[2];
        int i6 = iArrO[0];
        int i7 = iArr[3];
        int i8 = iArrO[1];
        int[] iArr2 = {i ^ i2, i3 ^ i4, i5 ^ i6, i7 ^ i8, i2, i4, i6, i8};
        int[] iArrE = x13.e(bArr);
        byte[] bArrA = x13.a(iArr2);
        try {
            fl4 fl4Var = new fl4();
            fl4Var.u("a", JWKParameterNames.RSA_FIRST_PRIME_FACTOR);
            fl4Var.t("v", 4);
            fl4Var.t("sm", 1);
            fl4Var.u(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, pa5Var.a);
            xi4 xi4Var = new xi4();
            fl4 fl4Var2 = new fl4();
            fl4Var2.u("h", str2);
            fl4Var2.t(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, 0);
            byte[] bArr2 = qa5.a;
            fl4 fl4Var3 = new fl4();
            fl4Var3.u(JWKParameterNames.RSA_MODULUS, str);
            fl4Var3.u("c", str3);
            fl4Var2.u("a", qa5.b(iArrE, fl4Var3));
            String strEncodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString(y13.c((byte[]) ghVar.b, bArrA));
            strEncodeToString.getClass();
            fl4Var2.u(JWKParameterNames.OCT_KEY_VALUE, strEncodeToString);
            xi4Var.p(fl4Var2);
            fl4Var.p(JWKParameterNames.RSA_MODULUS, xi4Var);
            w13.b(this.a.b(fl4Var, (String) ghVar.a, da5.IDEMPOTENT_MUTATION));
        } finally {
            Arrays.fill(iArrO, 0);
            Arrays.fill(iArr2, 0);
            Arrays.fill(iArrE, 0);
            Arrays.fill(bArrA, (byte) 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00e1 A[Catch: IOException -> 0x0050, TRY_ENTER, TryCatch #2 {IOException -> 0x0050, blocks: (B:4:0x0042, B:6:0x004c, B:16:0x0066, B:17:0x0069, B:26:0x007b, B:27:0x007e, B:63:0x00e1, B:64:0x00e4, B:65:0x00e7, B:10:0x0053, B:14:0x0061, B:24:0x0076, B:60:0x00db, B:61:0x00de), top: B:76:0x0042, inners: #3 }] */
    public final byte[] g(String str, long j, int i, ft7 ft7Var, Set set) throws IOException {
        int i2 = 0;
        while (true) {
            t(ft7Var);
            Request.Builder builder = new Request.Builder();
            builder.d(str + "/" + j + "-" + ((((long) i) + j) - 1));
            builder.b();
            Request request = new Request(builder);
            OkHttpClient okHttpClient = this.b;
            okHttpClient.getClass();
            RealCall realCall = new RealCall(okHttpClient, request);
            try {
                ConcurrentHashMap.KeySetView keySetView = this.f;
                keySetView.getClass();
                keySetView.add(realCall);
                if (set != null) {
                    set.add(realCall);
                }
                try {
                    Response responseG = realCall.g();
                    try {
                        if (responseG.H) {
                            byte[] bArrX = wx3.x(responseG.k, i);
                            responseG.close();
                            if (set != null) {
                                set.remove(realCall);
                            }
                            keySetView.remove(realCall);
                            return bArrX;
                        }
                        hb5 hb5VarU = u(responseG);
                        responseG.close();
                        if (set != null) {
                            set.remove(realCall);
                        }
                        keySetView.remove(realCall);
                        int i3 = hb5VarU.b;
                        if (i3 == 509) {
                            throw new kb5("MEGA transfer quota exceeded (HTTP 509)");
                        }
                        if (i3 == 403 || i3 == 404) {
                            throw new eb5(xs1.h(i3, "MEGA download URL expired (HTTP ", ")"));
                        }
                        if ((i3 != 429 && i3 != 500 && i3 != 502 && i3 != 503 && i3 != 504) || i2 >= 16) {
                            y5.m(u48.k(i3, "MEGA download HTTP ", TokenAuthenticationScheme.SCHEME_DELIMITER, hb5VarU.a));
                            return null;
                        }
                        s(ft7Var, i2, "download");
                        i2++;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(responseG, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    if (set != null) {
                        set.remove(realCall);
                    }
                    keySetView.remove(realCall);
                    throw th3;
                }
                if (set != null) {
                    set.remove(realCall);
                }
                keySetView.remove(realCall);
                throw th3;
            } catch (IOException e) {
                if (realCall.G || !n(e, ft7Var, i2)) {
                    throw e;
                }
                s(ft7Var, i2, "download");
            }
        }
    }

    public final gb5 m(gh ghVar, pa5 pa5Var) throws InterruptedIOException, kb5 {
        int i = 0;
        while (true) {
            try {
                ab5 ab5VarR = r(ghVar, pa5Var, true);
                if (ab5VarR.a.size() == 1) {
                    return new gb5((String) el1.k1(ab5VarR.a), ab5VarR.c, ab5VarR.b);
                }
                ab5 ab5VarR2 = r(ghVar, pa5Var, false);
                if (ab5VarR2.a.size() == 1) {
                    return new gb5((String) el1.k1(ab5VarR2.a), ab5VarR2.c, ab5VarR2.b);
                }
                throw new IllegalStateException(("MEGA transfer response for 'g' returned " + ab5VarR2.a.size() + " URLs").toString());
            } catch (ca5 e) {
                int i2 = e.a;
                if ((i2 != -3 && i2 != -4 && i2 != -18 && i2 != -19) || i >= 16) {
                    throw e;
                }
                s(null, i, "download URL");
                i++;
            }
        }
        throw e;
    }

    public final ab5 r(gh ghVar, pa5 pa5Var, boolean z) throws kb5 {
        String strO;
        Object bn6Var;
        fl4 fl4Var = new fl4();
        fl4Var.u("a", "g");
        fl4Var.t("g", 1);
        fl4Var.u(JWKParameterNames.RSA_MODULUS, pa5Var.a);
        if (z) {
            fl4Var.t("v", 2);
        }
        fl4Var.t("ssl", 2);
        try {
            fl4 fl4VarI = this.a.b(fl4Var, (String) ghVar.a, da5.READ_SAFE).i();
            qj4 qj4VarX = fl4VarI.x(JWKParameterNames.RSA_EXPONENT);
            if (qj4VarX != null) {
                if (qj4VarX.f() >= 0) {
                    qj4VarX = null;
                }
                if (qj4VarX != null) {
                    int iF = qj4VarX.f();
                    if (iF != -17) {
                        throw new ca5(iF);
                    }
                    qj4 qj4VarX2 = fl4VarI.x("tl");
                    if (qj4VarX2 != null) {
                        try {
                            bn6Var = Long.valueOf(qj4VarX2.l());
                        } catch (Throwable th) {
                            bn6Var = new bn6(th);
                        }
                        if (bn6Var instanceof bn6) {
                            bn6Var = null;
                        }
                        Long l = (Long) bn6Var;
                        if (l == null || l.longValue() > 0) {
                        }
                    }
                    throw new kb5("MEGA transfer quota exceeded (API_EOVERQUOTA)");
                }
            }
            List listA = a(fl4VarI, "g");
            qj4 qj4VarX3 = fl4VarI.x("s");
            long jL = qj4VarX3 != null ? qj4VarX3.l() : pa5Var.d;
            qj4 qj4VarX4 = fl4VarI.x("at");
            if (qj4VarX4 != null) {
                if (qj4VarX4 instanceof el4) {
                    qj4VarX4 = null;
                }
                if (qj4VarX4 != null && (strO = qj4VarX4.o()) != null) {
                    if (nq7.j0(strO)) {
                        strO = null;
                    }
                    if (strO != null) {
                        return new ab5(listA, jL, strO);
                    }
                }
            }
            l0.e("MEGA transfer response is missing 'at'");
            return null;
        } catch (ca5 e) {
            if (e.a == -17) {
                throw new kb5("MEGA transfer quota exceeded (API_EOVERQUOTA)");
            }
            throw e;
        }
    }

    public final void s(ft7 ft7Var, int i, String str) throws InterruptedIOException {
        long j = ((long) (i + 1)) * 1000;
        while (j > 0) {
            if (ft7Var != null) {
                t(ft7Var);
            }
            long jMin = Math.min(j, 250L);
            try {
                this.c.invoke(Long.valueOf(jMin));
                j -= jMin;
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                InterruptedIOException interruptedIOException = new InterruptedIOException(eq3.k("MEGA ", str, " retry interrupted"));
                interruptedIOException.initCause(e);
                throw interruptedIOException;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:66:0x011f A[Catch: IOException -> 0x0089, TRY_ENTER, TryCatch #0 {IOException -> 0x0089, blocks: (B:7:0x007b, B:9:0x0085, B:19:0x00a3, B:20:0x00a6, B:29:0x00b9, B:30:0x00bc, B:66:0x011f, B:67:0x0122, B:68:0x0125, B:13:0x008c, B:17:0x009e, B:27:0x00b4, B:63:0x0119, B:64:0x011c), top: B:75:0x007b, inners: #2 }] */
    public final String v(String str, long j, byte[] bArr, ft7 ft7Var, Set set) throws IOException {
        int i = 0;
        while (true) {
            t(ft7Var);
            Request.Builder builder = new Request.Builder();
            byte[] bArr2 = new byte[12];
            int length = bArr.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                int i4 = i3 + 1;
                int i5 = i3 % 12;
                bArr2[i5] = (byte) (bArr[i2] ^ bArr2[i5]);
                i2++;
                i3 = i4;
            }
            String strEncodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString(bArr2);
            strEncodeToString.getClass();
            builder.d(str + "/" + j + "?d=" + strEncodeToString);
            RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
            builder.c("POST", RequestBody.Companion.b(bArr, 6, this.e));
            Request request = new Request(builder);
            OkHttpClient okHttpClient = this.b;
            okHttpClient.getClass();
            RealCall realCall = new RealCall(okHttpClient, request);
            try {
                ConcurrentHashMap.KeySetView keySetView = this.g;
                keySetView.getClass();
                keySetView.add(realCall);
                if (set != null) {
                    set.add(realCall);
                }
                try {
                    Response responseG = realCall.g();
                    try {
                        if (responseG.H) {
                            String strP = p(responseG.k.b());
                            responseG.close();
                            if (set != null) {
                                set.remove(realCall);
                            }
                            keySetView.remove(realCall);
                            return strP;
                        }
                        hb5 hb5VarU = u(responseG);
                        responseG.close();
                        if (set != null) {
                            set.remove(realCall);
                        }
                        keySetView.remove(realCall);
                        int i6 = hb5VarU.b;
                        if (i6 == 509) {
                            throw new kb5("MEGA transfer quota exceeded (HTTP 509)");
                        }
                        if (i6 == 403 || i6 == 404) {
                            throw new eb5(xs1.h(i6, "MEGA upload URL expired (HTTP ", ")"));
                        }
                        if ((i6 != 429 && i6 != 500 && i6 != 502 && i6 != 503 && i6 != 504) || i >= 16) {
                            y5.m(u48.k(i6, "MEGA upload HTTP ", TokenAuthenticationScheme.SCHEME_DELIMITER, hb5VarU.a));
                            return null;
                        }
                        s(ft7Var, i, "upload");
                        i++;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(responseG, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    if (set != null) {
                        set.remove(realCall);
                    }
                    keySetView.remove(realCall);
                    throw th3;
                }
                if (set != null) {
                    set.remove(realCall);
                }
                keySetView.remove(realCall);
                throw th3;
            } catch (IOException e) {
                if (realCall.G || !n(e, ft7Var, i)) {
                    throw e;
                }
                s(ft7Var, i, "upload");
            }
        }
    }
}
