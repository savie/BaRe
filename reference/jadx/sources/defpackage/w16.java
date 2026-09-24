package defpackage;

import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.StandardCharsets;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w16 implements Closeable {
    public static final x53 d = new x53("Curve P384", 4, 0);
    public static final x53 e;
    public static final l15 f;
    public final ci7 a;
    public final wj8 b;
    public int c = 3;

    static {
        new x53("PIN/Touch Policy", 4, 0);
        new x53("Cached Touch Policy", 4, 3);
        wj8.a(4);
        wj8.a(3);
        wj8.a(0);
        wj8.a(5);
        wj8.a(0);
        wj8.a(0);
        e = new x53("Metadata", 5, 3);
        wj8.a(5);
        wj8.a(4);
        wj8.a(0);
        new v16("RSA key generation", 8);
        f = o15.b(w16.class);
    }

    public w16(ai7 ai7Var) throws g10, IOException {
        ci7 ci7Var = new ci7(ai7Var);
        this.a = ci7Var;
        try {
            ci7Var.b(new ie(-92, zv1.a, 4, 0));
            byte[] bArrB = ci7Var.b(new ie(-3, null, 0, 0));
            if (bArrB.length < 3) {
                c6.f("Version byte array must contain 3 bytes.");
                throw null;
            }
            wj8 wj8Var = new wj8(bArrB[0], bArrB[1], bArrB[2]);
            this.b = wj8Var;
            if (ai7Var.l() == 1 && wj8Var.b(4, 2, 0) >= 0 && wj8Var.b(4, 2, 7) < 0) {
                ci7Var.c = true;
            }
            if (ai7Var.e0() && wj8Var.b(4, 0, 0) >= 0) {
                ci7Var.b = 2;
            }
            ms8.A(4, f, "PIV session initialized (version={})", wj8Var);
        } catch (je e2) {
            short s = e2.b;
            if (s != 27266 && s != 27904) {
                throw new IOException("Unexpected SW", e2);
            }
            throw new g10("The application couldn't be selected", e2);
        }
    }

    public static qb6 h(vo4 vo4Var, byte[] bArr) {
        LinkedHashMap linkedHashMapO = cy0.o(bArr);
        to4 to4Var = vo4Var.b;
        if (to4Var.a == 1) {
            return new pb6(new BigInteger(1, (byte[]) linkedHashMapO.get(129)), new BigInteger(1, (byte[]) linkedHashMapO.get(130)));
        }
        if (to4Var instanceof so4) {
            return ob6.i(((so4) to4Var).c, (byte[]) linkedHashMapO.get(134));
        }
        c6.f("Unsupported key type");
        return null;
    }

    public static byte[] j(char[] cArr) {
        ByteBuffer byteBufferEncode = StandardCharsets.UTF_8.encode(CharBuffer.wrap(cArr));
        try {
            int iLimit = byteBufferEncode.limit() - byteBufferEncode.position();
            if (iLimit > 8) {
                throw new IllegalArgumentException("PIN/PUK must be no longer than 8 bytes");
            }
            byte[] bArrCopyOf = Arrays.copyOf(byteBufferEncode.array(), 8);
            Arrays.fill(bArrCopyOf, iLimit, 8, (byte) -1);
            Arrays.fill(byteBufferEncode.array(), (byte) 0);
            return bArrCopyOf;
        } catch (Throwable th) {
            Arrays.fill(byteBufferEncode.array(), (byte) 0);
            throw th;
        }
    }

    public final X509Certificate a(vh7 vh7Var) {
        l15 l15Var = f;
        ms8.A(4, l15Var, "Reading certificate in slot {}", vh7Var);
        int i = vh7Var.b;
        ms8.A(4, l15Var, "Reading data from object slot {}", Integer.toString(i, 16));
        LinkedHashMap linkedHashMapO = cy0.o(cy0.K(this.a.b(new ie(-53, new q48(iz1.k(i), 92).a(), 63, 255)), 83));
        byte[] bArr = (byte[]) linkedHashMapO.get(113);
        byte[] bArrA = (byte[]) linkedHashMapO.get(Integer.valueOf(OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS));
        if (bArr != null && bArr.length > 0 && bArr[0] != 0) {
            try {
                bArrA = f24.a(bArrA);
            } catch (IOException e2) {
                throw new vk0("Failed to decompress certificate", e2);
            }
        }
        try {
            return (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArrA));
        } catch (CertificateException e3) {
            throw new vk0("Failed to parse certificate: ", e3);
        }
    }

    public final int b(int i) {
        if (i == 27011) {
            return 0;
        }
        if (this.b.b(1, 0, 4) < 0) {
            if (i < 25344 || i > 25599) {
                return -1;
            }
            return i & 255;
        }
        if (i < 25536 || i > 25551) {
            return -1;
        }
        return i & 15;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
    }

    public final h80 g(vh7 vh7Var) {
        ms8.A(4, f, "Getting metadata for slot {}", vh7Var);
        n(e);
        LinkedHashMap linkedHashMapO = cy0.o(this.a.b(new ie(-9, null, 0, vh7Var.a)));
        byte[] bArr = (byte[]) linkedHashMapO.get(2);
        byte b = ((byte[]) linkedHashMapO.get(1))[0];
        for (vo4 vo4Var : vo4.values()) {
            if (vo4Var.a == b) {
                byte b2 = bArr[0];
                if (b2 < 0 || b2 >= k06.values().length) {
                    c6.f(fz5.j(b2, "Not a valid PinPolicy :"));
                    return null;
                }
                k06 k06Var = k06.values()[b2];
                byte b3 = bArr[1];
                for (w88 w88Var : w88.values()) {
                    if (w88Var.a == b3) {
                        byte b4 = ((byte[]) linkedHashMapO.get(3))[0];
                        return new h80(vo4Var, k06Var, w88Var, (byte[]) linkedHashMapO.get(4));
                    }
                }
                c6.f(fz5.j(b3, "Not a valid TouchPolicy :"));
                return null;
            }
        }
        c6.f(fz5.j(b, "Not a valid KeyType:"));
        return null;
    }

    public final void m(byte[] bArr, int i) {
        ms8.A(4, f, "Writing data to object slot {}", Integer.toString(i, 16));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(92, iz1.k(i));
        linkedHashMap.put(83, bArr);
        this.a.b(new ie(-37, cy0.s(linkedHashMap), 63, 255));
    }

    public final void n(ol1 ol1Var) {
        if (ol1Var.u(this.b)) {
            return;
        }
        g84.j(ol1Var.s());
    }

    public final byte[] q(vh7 vh7Var, vo4 vo4Var, byte[] bArr, boolean z) throws je {
        int i = vh7Var.a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(130, null);
        linkedHashMap.put(Integer.valueOf(z ? 133 : 129), bArr);
        try {
            return cy0.K(cy0.K(this.a.b(new ie(-121, new q48(cy0.s(linkedHashMap), 124).a(), vo4Var.a, i)), 124), 130);
        } catch (je e2) {
            short s = e2.b;
            if (27264 == s) {
                throw new je(s, String.format(Locale.ROOT, "Make sure that %s key is generated on slot %02X", vo4Var.name(), Integer.valueOf(i)));
            }
            throw e2;
        }
    }

    public final void r(char[] cArr) {
        try {
            f.k("Verifying PIN");
            this.a.b(new ie(32, j(cArr), 0, -128));
            this.c = 3;
        } catch (je e2) {
            int iB = b(e2.b);
            if (iB < 0) {
                throw e2;
            }
            this.c = iB;
            throw new dg4(fz5.j(iB, "Invalid PIN/PUK. Remaining attempts: "));
        }
    }
}
