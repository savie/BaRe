package defpackage;

import android.os.ParcelFileDescriptor;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.swiftapps.sba.SbaLibaegisCryptoNative;
import com.swiftapps.sba.SbaSwiftTarNative;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.CharacterCodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.CRC32;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z07 implements Closeable {
    public final File a;
    public final b17 b;
    public volatile v07 c;
    public f44 d;
    public final h07 e;
    public boolean f;

    public z07(File file, b17 b17Var) {
        this.a = file;
        this.b = b17Var;
        h07 g27Var = b17Var.c;
        long j = b17Var.d;
        if (g27Var != null && j > 0) {
            g27Var = new g27(g27Var, j);
        }
        this.e = g27Var;
    }

    public static oz6 D(tr9 tr9Var, int i, long j, long j2, s07 s07Var, int i2) throws IOException {
        Long lValueOf;
        Long lValueOf2;
        Long lValueOf3;
        long j3;
        DataInput dataInput = (DataInput) tr9Var.b;
        long j4 = dataInput.readLong();
        long j5 = dataInput.readLong();
        long j6 = dataInput.readLong();
        long j7 = dataInput.readLong();
        long j8 = dataInput.readLong();
        int i3 = dataInput.readInt();
        int unsignedShort = dataInput.readUnsignedShort();
        int i4 = dataInput.readInt();
        int unsignedShort2 = dataInput.readUnsignedShort();
        byte[] bArrE = tr9Var.e(32);
        if (i2 >= 2) {
            lValueOf2 = Long.valueOf(dataInput.readLong());
            lValueOf3 = Long.valueOf(dataInput.readLong());
            lValueOf = Long.valueOf(dataInput.readLong());
        } else {
            lValueOf = null;
            lValueOf2 = null;
            lValueOf3 = null;
        }
        if (unsignedShort <= 0 || unsignedShort > 65535) {
            String str = ": ";
            y5.j(dj7.i("Invalid SBA entry name length at index record ", i, unsignedShort, str), null);
            return null;
        }
        long j9 = 0;
        if (lValueOf2 != null) {
            if (lValueOf2.longValue() < 0 || lValueOf3 == null || lValueOf3.longValue() < 0 || lValueOf == null || lValueOf.longValue() < 0) {
                y5.j(fz5.j(i, "Invalid tar member counts for SBA index record "), null);
                return null;
            }
            if (lValueOf3.longValue() > lValueOf2.longValue() || lValueOf.longValue() > lValueOf2.longValue() || lValueOf3.longValue() > lValueOf2.longValue() - lValueOf.longValue()) {
                throw new qz6("Invalid tar member count totals for SBA index record " + i + ": tarEntryCount=" + lValueOf2 + " regularFileCount=" + lValueOf3 + " directoryCount=" + lValueOf, null);
            }
        }
        if (unsignedShort2 != 0) {
            y5.j(dj7.i("Invalid non-zero SBA index record reserved field at record ", i, unsignedShort2, ": "), null);
            return null;
        }
        if (i4 != 0) {
            y5.j(dj7.i("SBA entry metadata is not supported in v1 index record ", i, i4, ": "), null);
            return null;
        }
        String strN = us2.n("index record " + i + " entry name", tr9Var.e(unsignedShort));
        try {
            iz1.A(strN);
            cy0 cy0Var = s07Var.e;
            int i5 = s07Var.n;
            Long l = lValueOf;
            l27 l27Var = s07Var.h;
            Long l2 = lValueOf2;
            Long l3 = lValueOf3;
            if (i3 != us2.q(cy0Var, l27Var)) {
                throw new i27("Unsupported SBA entry flags for '" + strN + "': " + i3, null);
            }
            if (j4 < s07Var.b || j5 < j4 + 24) {
                y5.j(eq3.k("Invalid offsets for SBA entry '", strN, "'"), null);
                return null;
            }
            if (j6 < 0 || j7 < 0 || j8 < 1024) {
                y5.j(eq3.k("Invalid payload/tar size for SBA entry '", strN, "'"), null);
                return null;
            }
            if (j8 % 512 != 0) {
                throw new qz6("Invalid tar size for SBA entry '" + strN + "': " + j8, null);
            }
            oy6 oy6Var = oy6.j;
            if (cy0Var.equals(oy6Var) && j8 != j7) {
                y5.j(eq3.k("Uncompressed SBA entry '", strN, "' must have matching tar and compressed sizes"), null);
                return null;
            }
            if (!cy0Var.equals(oy6Var) && j7 == 0) {
                y5.j(eq3.k("Compressed SBA entry '", strN, "' has an empty compressed payload"), null);
                return null;
            }
            switch (y07.a[l27Var.ordinal()]) {
                case 1:
                    if (j6 != j7) {
                        y5.j(eq3.k("Unencrypted SBA entry '", strN, "' has mismatched stored/compressed sizes"), null);
                        return null;
                    }
                    for (byte b : bArrE) {
                        if (b != 0) {
                            y5.j(eq3.k("Unencrypted SBA entry '", strN, "' must not contain a payload HMAC"), null);
                            return null;
                        }
                    }
                    break;
                    break;
                case 2:
                    if (j6 == 0 || j6 % 16 != 0) {
                        throw new qz6("Encrypted SBA entry '" + strN + "' is not AES-block-aligned: " + j6, null);
                    }
                    if (j7 == 0) {
                        j3 = j9;
                    } else {
                        long j10 = j7 % 16;
                        if (j10 == 0) {
                            j3 = j7;
                        } else {
                            j9 = (16 - j10) + j7;
                            j3 = j9;
                        }
                    }
                    if (j6 != j3) {
                        a6.e(u48.o("Encrypted SBA entry '", strN, j3, "' stored size mismatch: expected="), ", actual=", j6);
                        return null;
                    }
                    break;
                case 3:
                    for (byte b2 : bArrE) {
                        if (b2 != 0) {
                            y5.j(eq3.k("AES-GCM SBA entry '", strN, "' must not contain a payload HMAC"), null);
                            return null;
                        }
                    }
                    long jK = us2.k(i5, j7);
                    if (j6 != jK) {
                        a6.e(u48.o("AES-GCM SBA entry '", strN, jK, "' stored size mismatch: expected="), ", actual=", j6);
                        return null;
                    }
                    break;
                case 4:
                    for (byte b3 : bArrE) {
                        if (b3 != 0) {
                            y5.j(eq3.k("AES-GCM-SIV SBA entry '", strN, "' must not contain a payload HMAC"), null);
                            return null;
                        }
                    }
                    long jK2 = us2.k(i5, j7);
                    if (j6 != jK2) {
                        a6.e(u48.o("AES-GCM-SIV SBA entry '", strN, jK2, "' stored size mismatch: expected="), ", actual=", j6);
                        return null;
                    }
                    break;
                case 5:
                case 6:
                    for (byte b4 : bArrE) {
                        if (b4 != 0) {
                            throw new qz6(l27Var + " SBA entry '" + strN + "' must not contain a payload HMAC", null);
                        }
                    }
                    long jK3 = us2.k(i5, j7);
                    if (j6 != jK3) {
                        throw new qz6(l27Var + " SBA entry '" + strN + "' stored size mismatch: expected=" + jK3 + ", actual=" + j6, null);
                    }
                    break;
                default:
                    q.j();
                    return null;
            }
            long jC = us2.C(j5, j6, eq3.k("payload end for '", strN, "'"));
            if (jC > j || jC > j2) {
                throw new nz6(eq3.k("SBA entry '", strN, "' payload extends beyond file bounds"), null);
            }
            return new oz6(strN, j4, j5, j6, j7, j8, i3, bArrE, i, l2, l3, l);
        } catch (IllegalArgumentException e) {
            y5.j(u48.k(i, "Unsafe SBA entry name at index record ", ": ", strN), e);
            return null;
        }
    }

    public static boolean J(int i, int i2, int i3, int i4, int i5) {
        if (i2 != 1) {
            return false;
        }
        if (i == 1) {
            if (i3 != 3 || i4 != 16384 || i5 != 1) {
                return false;
            }
        } else if (1 > i3 || i3 >= 101 || 16384 > i4 || i4 >= 65537 || 1 > i5 || i5 >= 9) {
            return false;
        }
        return true;
    }

    public static boolean O(int i, int i2, int i3, int i4) {
        if (i == 1) {
            if (i2 != 0 || i3 != 0 || i4 != 0) {
                return false;
            }
        } else if (i2 != 1 || i3 != 32 || i4 != 1) {
            return false;
        }
        return true;
    }

    public static void S(RandomAccessFile randomAccessFile, ArrayList arrayList, long j, s07 s07Var) throws IOException {
        String str;
        long jC = s07Var.b;
        Iterator it = arrayList.iterator();
        int i = 0;
        loop0: while (true) {
            if (!it.hasNext()) {
                if (jC == j) {
                    return;
                }
                StringBuilder sbT = dj7.t("SBA entries must end at index: entriesEnd=", ", indexOffset=", jC);
                sbT.append(j);
                throw new qz6(sbT.toString(), null);
            }
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            oz6 oz6Var = (oz6) next;
            long j2 = oz6Var.b;
            long j3 = oz6Var.c;
            str = oz6Var.a;
            if (j2 < jC) {
                y5.j(eq3.k("SBA entry '", str, "' overlaps previous entry"), null);
                return;
            }
            if (j2 != jC) {
                a6.e(u48.o("SBA entry '", str, jC, "' is not contiguous: expectedOffset="), ", actualOffset=", j2);
                return;
            }
            randomAccessFile.seek(j2);
            tr9 tr9Var = new tr9(randomAccessFile, 16);
            tr9Var.a("entry[" + i + "]", zv1.d);
            int unsignedShort = randomAccessFile.readUnsignedShort();
            if (unsignedShort != 24) {
                z5.f("Invalid entry header size for '", unsignedShort, str);
                return;
            }
            int unsignedShort2 = randomAccessFile.readUnsignedShort();
            int i3 = randomAccessFile.readInt();
            int unsignedShort3 = randomAccessFile.readUnsignedShort();
            int i4 = randomAccessFile.readInt();
            byte[] bArrE = tr9Var.e(6);
            if (unsignedShort3 <= 0 || unsignedShort3 > 65535) {
                z5.f("Invalid SBA entry header name length for '", unsignedShort3, str);
                return;
            }
            String strN = us2.n("entry header name for '" + str + "'", tr9Var.e(unsignedShort3));
            if (unsignedShort2 != 0) {
                break;
            }
            for (byte b : bArrE) {
                if (b != 0) {
                    break loop0;
                }
            }
            if (i4 != 0) {
                z5.f("SBA entry metadata is not supported in v1 entry header for '", i4, str);
                return;
            }
            if (i3 != oz6Var.g || i3 != us2.q(s07Var.e, s07Var.h) || !strN.equals(str)) {
                y5.j(eq3.k("Entry header/index mismatch for '", str, "'"), null);
                return;
            } else if (randomAccessFile.getFilePointer() != j3) {
                a6.e(u48.o("Entry '", str, randomAccessFile.getFilePointer(), "' payload offset mismatch: headerEnd="), ", index=", j3);
                return;
            } else {
                jC = us2.C(j3, oz6Var.d, eq3.k("entry end for '", str, "'"));
                i = i2;
            }
        }
        y5.j(eq3.k("Invalid non-zero SBA entry reserved field for '", str, "'"), null);
    }

    public static u07 r(RandomAccessFile randomAccessFile, long j, int i) throws IOException {
        long j2 = j - 32;
        randomAccessFile.seek(j2);
        byte[] bArr = new byte[32];
        randomAccessFile.readFully(bArr);
        int i2 = ((bArr[28] & 255) << 24) | ((bArr[29] & 255) << 16) | ((bArr[30] & 255) << 8) | (bArr[31] & 255);
        byte[] bArrK0 = x50.k0(bArr, 0, 28);
        CRC32 crc32 = new CRC32();
        crc32.update(bArrK0);
        int value = (int) crc32.getValue();
        if (i2 != value) {
            throw new pz6(dj7.i("SBA footer CRC mismatch: expected=", i2, value, ", actual="), null);
        }
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        try {
            new tr9(dataInputStream, 16).a("footer", zv1.f);
            int unsignedShort = dataInputStream.readUnsignedShort();
            if (unsignedShort != 32) {
                throw new qz6("Invalid SBA footer size: " + unsignedShort, null);
            }
            int unsignedShort2 = dataInputStream.readUnsignedShort();
            if (unsignedShort2 == i) {
                u07 u07Var = new u07(j2, dataInputStream.readLong(), dataInputStream.readLong(), dataInputStream.readInt(), i2);
                dataInputStream.close();
                return u07Var;
            }
            throw new qz6("SBA footer version mismatch: header=" + i + " footer=" + unsignedShort2, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(dataInputStream, th);
                throw th2;
            }
        }
    }

    public static s07 u(RandomAccessFile randomAccessFile) throws IOException {
        int i;
        int i2;
        int i3;
        byte[] bArr;
        int i4;
        int i5;
        int i6;
        cy0 py6Var;
        int i7;
        byte[] bArr2;
        l27 l27Var;
        int i8;
        l27 l27Var2;
        int i9;
        int i10;
        oy6 oy6Var = oy6.j;
        randomAccessFile.seek(0L);
        tr9 tr9Var = new tr9(randomAccessFile, 16);
        tr9Var.a("file header", zv1.c);
        int unsignedShort = randomAccessFile.readUnsignedShort();
        if (1 > unsignedShort || unsignedShort >= 3) {
            throw new j27(unsignedShort);
        }
        int unsignedShort2 = randomAccessFile.readUnsignedShort();
        if (unsignedShort == 1) {
            i = 96;
        } else {
            if (unsignedShort != 2) {
                throw new j27(unsignedShort);
            }
            i = 144;
        }
        if (unsignedShort2 != i) {
            y5.j(fz5.j(unsignedShort2, "Invalid SBA header size: "), null);
            return null;
        }
        int i11 = randomAccessFile.readInt();
        if ((i11 & (-4)) != 0) {
            throw new i27(fz5.j(i11, "Unsupported SBA archive flags: "), null);
        }
        long j = randomAccessFile.readLong();
        if (j < 0) {
            y5.j(u48.l(j, "Invalid negative SBA creation time: "), null);
            return null;
        }
        int unsignedShort3 = randomAccessFile.readUnsignedShort();
        int unsignedShort4 = randomAccessFile.readUnsignedShort();
        int unsignedShort5 = randomAccessFile.readUnsignedShort();
        int unsignedShort6 = randomAccessFile.readUnsignedShort();
        int unsignedShort7 = randomAccessFile.readUnsignedShort();
        int unsignedShort8 = randomAccessFile.readUnsignedShort();
        int unsignedShort9 = randomAccessFile.readUnsignedShort();
        int unsignedShort10 = randomAccessFile.readUnsignedShort();
        byte[] bArrE = tr9Var.e(16);
        byte[] bArrE2 = tr9Var.e(16);
        byte[] bArrE3 = tr9Var.e(16);
        int unsignedShort11 = randomAccessFile.readUnsignedShort();
        int unsignedShort12 = randomAccessFile.readUnsignedShort();
        byte[] bArr3 = bArrE3;
        int i12 = randomAccessFile.readInt();
        byte[] bArr4 = bArrE2;
        if (unsignedShort == 1) {
            byte[] bArrE4 = tr9Var.e(4);
            for (byte b : bArrE4) {
                if (b != 0) {
                    y5.j("Invalid non-zero SBA header reserved bytes", null);
                    return null;
                }
            }
            int i13 = unsignedShort5 == 0 ? 0 : 16384;
            i3 = unsignedShort5 == 0 ? 0 : 1;
            bArr = new byte[32];
            i5 = 0;
            i4 = 0;
            i6 = 0;
            i2 = i13;
        } else {
            int i14 = randomAccessFile.readInt();
            int unsignedShort13 = randomAccessFile.readUnsignedShort();
            int unsignedShort14 = randomAccessFile.readUnsignedShort();
            int unsignedShort15 = randomAccessFile.readUnsignedShort();
            int unsignedShort16 = randomAccessFile.readUnsignedShort();
            byte[] bArrE5 = tr9Var.e(32);
            byte[] bArrE6 = tr9Var.e(8);
            for (byte b2 : bArrE6) {
                if (b2 != 0) {
                    y5.j("Invalid non-zero SBA v2 header reserved bytes", null);
                    return null;
                }
            }
            i2 = i14;
            i3 = unsignedShort13;
            bArr = bArrE5;
            i4 = unsignedShort14;
            i5 = unsignedShort15;
            i6 = unsignedShort16;
        }
        if (unsignedShort3 != 0) {
            if (unsignedShort3 != 1) {
                throw new i27(fz5.j(unsignedShort3, "Unsupported SBA compression method: "), null);
            }
            if (1 > unsignedShort4 || unsignedShort4 >= 23) {
                y5.j(fz5.j(unsignedShort4, "Invalid zstd compression level: "), null);
                return null;
            }
            py6Var = new py6(unsignedShort4);
        } else {
            if (unsignedShort4 != 0) {
                y5.j("Compression level must be 0 when compression is disabled", null);
                return null;
            }
            py6Var = oy6Var;
        }
        cy0 cy0Var = py6Var;
        if ((!py6Var.equals(oy6Var)) != ((i11 & 1) != 0)) {
            y5.j(dj7.i("Inconsistent SBA compression header: flags=", i11, unsignedShort3, ", method="), null);
            return null;
        }
        if (unsignedShort5 != 0) {
            if (unsignedShort5 != 1) {
                if (unsignedShort5 != 2) {
                    if (unsignedShort5 != 3) {
                        if (unsignedShort5 != 4 && unsignedShort5 != 5) {
                            throw new i27(fz5.j(unsignedShort5, "Unsupported SBA encryption method: "), null);
                        }
                        if (!J(unsignedShort, unsignedShort6, unsignedShort7, i2, i3) || unsignedShort8 != 16 || unsignedShort9 != 16 || unsignedShort10 != 16 || unsignedShort11 != 0 || unsignedShort12 != 0 || 4096 > i12 || i12 >= 16777217 || !O(unsignedShort, i4, i10, i6)) {
                            StringBuilder sbV = dj7.v("Invalid SBA ", unsignedShort5 == 5 ? "AEGIS-128X2" : "AEGIS-256", " fields: kdf=", unsignedShort6, " iterations=");
                            xs1.s(sbV, unsignedShort7, " keyCheck=", unsignedShort8, " salt=");
                            xs1.s(sbV, unsignedShort9, " nonceSeed=", unsignedShort10, " mac=");
                            xs1.s(sbV, unsignedShort11, " macLength=", unsignedShort12, " chunkSize=");
                            sbV.append(i12);
                            throw new qz6(sbV.toString(), null);
                        }
                        unsignedShort5 = unsignedShort5;
                        i7 = i2;
                        i3 = i3;
                        l27Var = unsignedShort5 == 5 ? l27.Aegis128X2 : l27.Aegis256;
                    } else {
                        if (!J(unsignedShort, unsignedShort6, unsignedShort7, i2, i3) || unsignedShort8 != 16 || unsignedShort9 != 16 || unsignedShort10 != 16 || unsignedShort11 != 0 || unsignedShort12 != 0 || 4096 > i12 || i12 >= 16777217 || !O(unsignedShort, i4, i9, i6)) {
                            i9 = i5;
                            i9 = i5;
                            StringBuilder sbN = xs1.n("Invalid SBA AES-GCM-SIV fields: kdf=", unsignedShort6, " iterations=", " keyCheck=", unsignedShort7);
                            xs1.s(sbN, unsignedShort8, " salt=", unsignedShort9, " nonceSeed=");
                            xs1.s(sbN, unsignedShort10, " mac=", unsignedShort11, " macLength=");
                            sbN.append(unsignedShort12);
                            sbN.append(" chunkSize=");
                            sbN.append(i12);
                            throw new qz6(sbN.toString(), null);
                        }
                        l27Var2 = l27.Aes256GcmSiv;
                    }
                    bArr2 = bArrE;
                } else {
                    if (!J(unsignedShort, unsignedShort6, unsignedShort7, i2, i3) || unsignedShort8 != 16 || unsignedShort9 != 16 || unsignedShort10 != 16 || unsignedShort11 != 0 || unsignedShort12 != 0 || 4096 > i12 || i12 >= 16777217 || !O(unsignedShort, i4, i8, i6)) {
                        i8 = i5;
                        i8 = i5;
                        StringBuilder sbN2 = xs1.n("Invalid SBA AES-GCM fields: kdf=", unsignedShort6, " iterations=", " keyCheck=", unsignedShort7);
                        xs1.s(sbN2, unsignedShort8, " salt=", unsignedShort9, " nonceSeed=");
                        xs1.s(sbN2, unsignedShort10, " mac=", unsignedShort11, " macLength=");
                        sbN2.append(unsignedShort12);
                        sbN2.append(" chunkSize=");
                        sbN2.append(i12);
                        throw new qz6(sbN2.toString(), null);
                    }
                    l27Var2 = l27.Aes256Gcm;
                }
                l27Var = l27Var2;
                i7 = i2;
            } else {
                unsignedShort5 = unsignedShort5;
                i7 = i2;
                if (!J(unsignedShort, unsignedShort6, unsignedShort7, i7, i3) || unsignedShort8 != 16 || unsignedShort9 != 16 || unsignedShort10 != 16 || unsignedShort11 != 1 || unsignedShort12 != 32 || !O(unsignedShort, i4, i, i6)) {
                    int i15 = i5;
                    int i16 = i5;
                    StringBuilder sbN3 = xs1.n("Invalid SBA AES-CBC compatibility fields: kdf=", unsignedShort6, " iterations=", " keyCheck=", unsignedShort7);
                    xs1.s(sbN3, unsignedShort8, " salt=", unsignedShort9, " iv=");
                    xs1.s(sbN3, unsignedShort10, " mac=", unsignedShort11, " macLength=");
                    sbN3.append(unsignedShort12);
                    throw new qz6(sbN3.toString(), null);
                }
                if (i12 != 0) {
                    y5.j(fz5.j(i12, "SBA 7zAES payload chunk size must be zero: "), null);
                    return null;
                }
                l27Var = l27.SevenZipAes;
            }
            bArr2 = bArrE;
        } else {
            unsignedShort5 = unsignedShort5;
            i3 = i3;
            i7 = i2;
            if (unsignedShort6 != 0 || unsignedShort7 != 0 || unsignedShort8 != 0 || unsignedShort9 != 0 || unsignedShort10 != 0 || unsignedShort11 != 0 || unsignedShort12 != 0 || i12 != 0 || i7 != 0 || i3 != 0 || i4 != 0 || i != 0 || i6 != 0) {
                int i17 = i5;
                y5.j("SBA encryption/KDF/MAC fields must be zero when encryption is disabled", null);
                return null;
            }
            bArr2 = bArrE;
            for (byte b3 : bArr2) {
                if (b3 != 0) {
                    y5.j("SBA encryption bytes must be zero when encryption is disabled", null);
                    return null;
                }
            }
            bArr4 = bArr4;
            for (byte b4 : bArr4) {
                if (b4 != 0) {
                    y5.j("SBA encryption bytes must be zero when encryption is disabled", null);
                    return null;
                }
            }
            bArr3 = bArr3;
            for (byte b5 : bArr3) {
                if (b5 != 0) {
                    y5.j("SBA encryption bytes must be zero when encryption is disabled", null);
                    return null;
                }
            }
            bArr = bArr;
            for (byte b6 : bArr) {
                if (b6 != 0) {
                    y5.j("SBA encryption bytes must be zero when encryption is disabled", null);
                    return null;
                }
            }
            l27Var = l27.None;
        }
        if ((l27Var != l27.None) == ((i11 & 2) != 0)) {
            return new s07(unsignedShort, unsignedShort2, i11, j, cy0Var, unsignedShort3, unsignedShort4, l27Var, unsignedShort5, unsignedShort6, unsignedShort7, i7, i3, i12, bArr, bArr2, bArr4, bArr3);
        }
        y5.j(dj7.i("Inconsistent SBA encryption header: flags=", i11, unsignedShort5, ", method="), null);
        return null;
    }

    public static w07 z(byte[] bArr, long j, long j2, s07 s07Var) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        try {
            tr9 tr9Var = new tr9(dataInputStream, 16);
            tr9Var.a("index", zv1.e);
            int unsignedShort = dataInputStream.readUnsignedShort();
            if (unsignedShort != 16) {
                throw new qz6("Invalid SBA index header size: " + unsignedShort, null);
            }
            int unsignedShort2 = dataInputStream.readUnsignedShort();
            if (1 > unsignedShort2 || unsignedShort2 >= 3) {
                throw new j27(unsignedShort2);
            }
            int i = dataInputStream.readInt();
            if (i < 0) {
                throw new qz6("Invalid SBA entry count: " + i, null);
            }
            if (us2.C(16L, ((long) i) * ((long) (unsignedShort2 == 1 ? 84 : 108)), "minimum index size") > bArr.length) {
                throw new qz6("SBA entry count exceeds index bounds: count=" + i + ", indexBytes=" + bArr.length, null);
            }
            int i2 = dataInputStream.readInt();
            if (i2 < 0 || i2 > 1048576) {
                throw new qz6("Invalid SBA archive metadata length: " + i2, null);
            }
            String strN = us2.n("archive metadata", tr9Var.e(i2));
            ArrayList arrayList = new ArrayList(i);
            HashSet hashSet = new HashSet();
            for (int i3 = 0; i3 < i; i3++) {
                oz6 oz6VarD = D(tr9Var, i3, j, j2, s07Var, unsignedShort2);
                String str = oz6VarD.a;
                if (!hashSet.add(str)) {
                    throw new qz6("Duplicate SBA entry name in index: " + str, null);
                }
                arrayList.add(oz6VarD);
            }
            if (dataInputStream.available() == 0) {
                w07 w07Var = new w07(unsignedShort2, strN, arrayList);
                dataInputStream.close();
                return w07Var;
            }
            throw new qz6("Trailing bytes after SBA index records: " + dataInputStream.available(), null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(dataInputStream, th);
                throw th2;
            }
        }
    }

    public final ky6 A() throws qz6, i27 {
        tz6 tz6Var;
        int i;
        if (this.f) {
            l0.e("SbaReader has been closed");
            return null;
        }
        v07 v07VarN = n();
        u07 u07Var = v07VarN.b;
        s07 s07Var = v07VarN.a;
        l27 l27Var = s07Var.h;
        cy0 cy0Var = s07Var.e;
        ArrayList arrayList = v07VarN.f;
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        int i2 = 0;
        for (Object obj : arrayList) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                fl1.F0();
                throw null;
            }
            arrayList2.add(((oz6) obj).a(i2, cy0Var, l27Var.toPublicMethod()));
            i2 = i3;
        }
        int i4 = s07Var.a;
        long j = v07VarN.c;
        String str = v07VarN.e;
        int i5 = s07Var.b;
        int i6 = s07Var.c;
        long j2 = s07Var.d;
        int i7 = s07Var.f;
        int i8 = s07Var.g;
        wy6 publicMethod = l27Var.toPublicMethod();
        int i9 = s07Var.i;
        int i10 = s07Var.j;
        int i11 = s07Var.k;
        int i12 = s07Var.n;
        if (i10 == 0) {
            i = i10;
            tz6Var = new tz6(uz6.None, i, i11, null, null);
        } else {
            if (i10 != 1) {
                y5.j(fz5.j(i10, "Unsupported SBA KDF method: "), null);
                return null;
            }
            i = i10;
            tz6Var = new tz6(uz6.Argon2id, i, i11, Integer.valueOf(s07Var.l), Integer.valueOf(s07Var.m));
        }
        gy6 gy6Var = new gy6(i5, i6, j2, cy0Var, i7, i8, publicMethod, i9, i, i11, i12, tz6Var);
        long j3 = u07Var.b;
        long j4 = u07Var.c;
        int i13 = v07VarN.d;
        int i14 = u07Var.d;
        hy6 hy6Var = new hy6(j3, j4, i13, i14, String.format("0x%08x", Arrays.copyOf(new Object[]{Long.valueOf(((long) i14) & 4294967295L)}, 1)), arrayList2.size());
        long j5 = u07Var.a;
        int i15 = u07Var.e;
        return new ky6("Swift Backup Archive", "SBA1", i4, j, str, gy6Var, hy6Var, new fy6(32, i15, j5, String.format("0x%08x", Arrays.copyOf(new Object[]{Long.valueOf(((long) i15) & 4294967295L)}, 1))), arrayList2);
    }

    public final f44 G(s07 s07Var) throws CharacterCodingException, zz6, NoSuchAlgorithmException, qz6, sz6, i27 {
        l27 l27Var = s07Var.h;
        byte[] bArr = s07Var.r;
        byte[] bArr2 = s07Var.q;
        if (l27Var == l27.None) {
            y5.j("SBA archive is not encrypted", null);
            return null;
        }
        f44 f44Var = this.d;
        if (f44Var != null) {
            return f44Var;
        }
        b17 b17Var = this.b;
        x13.S(b17Var.e, "derive archive key");
        char[] cArr = b17Var.b;
        if (cArr == null) {
            throw new sz6("Archive key required for encrypted SBA payload", null);
        }
        int[] iArr = y07.a;
        int i = iArr[l27Var.ordinal()];
        if (i == 1) {
            y5.j("SBA archive is not encrypted", null);
            return null;
        }
        int i2 = i != 6 ? 32 : 16;
        byte[] bArr3 = sy6.a;
        byte[] bArrA = sy6.a(cArr, bArr2, s07Var.k, s07Var.l, s07Var.m, i2);
        byte[] bArrD = sy6.d(l27Var, bArrA, bArr2, bArr);
        if (!MessageDigest.isEqual(bArrD, s07Var.p)) {
            Arrays.fill(bArrA, 0, bArrA.length, (byte) 0);
            Arrays.fill(bArrD, 0, bArrD.length, (byte) 0);
            throw new sz6("Invalid SBA archive key", null);
        }
        Arrays.fill(bArrD, 0, bArrD.length, (byte) 0);
        switch (iArr[l27Var.ordinal()]) {
            case 1:
                y5.j("SBA archive is not encrypted", null);
                return null;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                switch (a07.a[l27Var.ordinal()]) {
                    case 1:
                        throw new i27("SBA optional encryption backend is not enabled for " + l27Var + ". Build with -PsbaEnableInternalEncryptionBackends=true to enable internal compatibility readers.", null);
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                        f44 f44Var2 = new f44(bArrA, s07Var.a >= 2 ? sy6.c(bArrA, bArr2, bArr) : new byte[0]);
                        this.d = f44Var2;
                        return f44Var2;
                    case 6:
                        y5.j("SBA archive is not encrypted", null);
                        return null;
                    default:
                        q.j();
                        return null;
                }
            default:
                q.j();
                return null;
        }
    }

    public final void U(RandomAccessFile randomAccessFile, s07 s07Var, u07 u07Var, byte[] bArr) throws NoSuchAlgorithmException, IOException, InvalidKeyException {
        if (s07Var.h == l27.None || s07Var.a < 2 || this.b.b == null) {
            return;
        }
        f44 f44VarG = G(s07Var);
        int i = s07Var.b;
        byte[] bArr2 = new byte[i];
        randomAccessFile.seek(0L);
        randomAccessFile.readFully(bArr2);
        for (int i2 = 0; i2 < 32; i2++) {
            bArr2[(int) (((long) i2) + 104)] = 0;
        }
        byte[] bArr3 = sy6.a;
        byte[] bArrB = sy6.b(f44VarG.b, bArr2, u07Var.b, u07Var.c, u07Var.d, bArr);
        try {
            if (!MessageDigest.isEqual(bArrB, s07Var.o)) {
                throw new pz6("SBA encrypted index MAC mismatch", null);
            }
        } finally {
            Arrays.fill(bArrB, 0, bArrB.length, (byte) 0);
            Arrays.fill(bArr2, 0, i, (byte) 0);
        }
    }

    public final Object W(final i07 i07Var, final s07 s07Var, final oz6 oz6Var, mt3 mt3Var) throws Throwable {
        Object objInvoke;
        ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
        boolean z = false;
        ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
        final ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptorArrCreatePipe[1];
        final AtomicReference atomicReference = new AtomicReference();
        Runnable runnable = new Runnable() { // from class: o07
            @Override // java.lang.Runnable
            public final void run() {
                s07 s07Var2 = s07Var;
                try {
                    l27 l27Var = s07Var2.h;
                    l27 l27Var2 = l27.Aes256GcmSiv;
                    ParcelFileDescriptor parcelFileDescriptor3 = parcelFileDescriptor2;
                    z07 z07Var = this;
                    i07 i07Var2 = i07Var;
                    oz6 oz6Var2 = oz6Var;
                    if (l27Var != l27Var2 && l27Var != l27.Aegis256 && l27Var != l27.Aegis128X2) {
                        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor3);
                        try {
                            z07Var.b(i07Var2, s07Var2, oz6Var2, autoCloseOutputStream);
                            throw null;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                rs9.c(autoCloseOutputStream, th);
                                throw th2;
                            }
                        }
                    }
                    try {
                        FileDescriptor fileDescriptor = parcelFileDescriptor3.getFileDescriptor();
                        fileDescriptor.getClass();
                        z07Var.a(i07Var2, s07Var2, oz6Var2, fileDescriptor);
                        parcelFileDescriptor3.close();
                        return;
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            rs9.c(parcelFileDescriptor3, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    atomicReference.set(th5);
                }
                atomicReference.set(th5);
            }
        };
        String str = oz6Var.a;
        Thread thread = new Thread(runnable, "SBA decrypt ".concat(str));
        thread.start();
        try {
            parcelFileDescriptor.getClass();
            objInvoke = mt3Var.invoke(parcelFileDescriptor);
            parcelFileDescriptor.close();
            th = null;
            while (true) {
                try {
                    thread.join();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        } catch (Throwable th) {
            th = th;
            try {
                parcelFileDescriptor.close();
                while (true) {
                    try {
                        thread.join();
                        break;
                    } catch (InterruptedException unused2) {
                        z = true;
                    }
                }
            } catch (Throwable unused3) {
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            objInvoke = null;
        }
        Throwable th2 = (Throwable) atomicReference.get();
        if (!(th == null && th2 == null) && this.b.e.isCancellationRequested()) {
            String str2 = "SBA operation cancelled: " + i07Var + " '" + str + "'";
            if (th2 != null) {
                th = th2;
            }
            throw new zz6(str2, th);
        }
        if (th == null) {
            if (th2 == null) {
                return objInvoke;
            }
            if ((th2 instanceof yy6) || (th2 instanceof IOException) || (th2 instanceof RuntimeException) || (th2 instanceof Error)) {
                throw th2;
            }
            y5.j("SBA extraction failed", th2);
            return null;
        }
        if (th2 instanceof yy6) {
            throw th2;
        }
        if (th2 != null) {
            yc9.a(th, th2);
        }
        if ((th instanceof yy6) || (th instanceof IOException) || (th instanceof RuntimeException) || (th instanceof Error)) {
            throw th;
        }
        y5.j("SBA extraction failed", th);
        return null;
    }

    public final Object Y(s07 s07Var, oz6 oz6Var, rt3 rt3Var) throws qz6 {
        if (s07Var.h != l27.None) {
            y5.j("Encrypted SBA payloads must be read through descriptor pipes", null);
            return null;
        }
        String path = this.a.getPath();
        path.getClass();
        return rt3Var.a(path, Long.valueOf(oz6Var.c), Long.valueOf(oz6Var.d));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    public final void a(final i07 i07Var, s07 s07Var, oz6 oz6Var, FileDescriptor fileDescriptor) throws NoSuchAlgorithmException, IOException {
        Throwable th;
        ?? r14;
        Object obj = "SBA native FD decryption is not configured for ";
        f44 f44VarG = G(s07Var);
        l27 l27Var = s07Var.h;
        l07 l07Var = l07.Decryption;
        m07 m07Var = m07.Started;
        final String str = oz6Var.a;
        final long j = oz6Var.e;
        x13.l(this.e, i07Var, l07Var, m07Var, str, 0L, Long.valueOf(j), 16);
        RandomAccessFile randomAccessFile = new RandomAccessFile(this.a, JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR);
        try {
            randomAccessFile.seek(oz6Var.c);
            int i = y07.a[l27Var.ordinal()];
            b17 b17Var = this.b;
            h07 h07Var = this.e;
            try {
                if (i == 4) {
                    randomAccessFile.getFD().getClass();
                    x13.Q(h07Var, b17Var.e, new rt3() { // from class: r07
                        @Override // defpackage.rt3
                        public final Object a(Object obj2, Object obj3, Object obj4) {
                            h07 h07Var2 = (h07) obj2;
                            ((Long) obj3).getClass();
                            long jLongValue = ((Long) obj4).longValue();
                            h07Var2.getClass();
                            if (jLongValue >= 0) {
                                l07 l07Var2 = l07.Decryption;
                                m07 m07Var2 = m07.Progress;
                                long j2 = j;
                                if (jLongValue > j2) {
                                    jLongValue = j2;
                                }
                                x13.k(h07Var2, i07Var, l07Var2, m07Var2, str, jLongValue, Long.valueOf(j2));
                            }
                            return be8.a;
                        }
                    });
                    throw new i27("SBA optional encryption backend is not enabled for " + l27Var + ". Build with -PsbaEnableInternalEncryptionBackends=true to enable internal compatibility readers.", null);
                }
                if (i == 5 || i == 6) {
                    l27 l27Var2 = s07Var.h;
                    FileDescriptor fd = randomAccessFile.getFD();
                    fd.getClass();
                    long j2 = oz6Var.d;
                    byte[] bArr = f44VarG.a;
                    byte[] bArr2 = s07Var.r;
                    int i2 = oz6Var.h;
                    final long j3 = oz6Var.e;
                    ty6 ty6VarI = xh8.i(l27Var2, fd, j2, fileDescriptor, bArr, bArr2, str, i2, j3, s07Var.n, x13.Q(h07Var, b17Var.e, new rt3() { // from class: r07
                        @Override // defpackage.rt3
                        public final Object a(Object obj2, Object obj3, Object obj4) {
                            h07 h07Var2 = (h07) obj2;
                            ((Long) obj3).getClass();
                            long jLongValue = ((Long) obj4).longValue();
                            h07Var2.getClass();
                            if (jLongValue >= 0) {
                                l07 l07Var2 = l07.Decryption;
                                m07 m07Var2 = m07.Progress;
                                long j4 = j3;
                                if (jLongValue > j4) {
                                    jLongValue = j4;
                                }
                                x13.k(h07Var2, i07Var, l07Var2, m07Var2, str, jLongValue, Long.valueOf(j4));
                            }
                            return be8.a;
                        }
                    }));
                    long j4 = ty6VarI.a;
                    long j5 = oz6Var.d;
                    if (j4 == j5) {
                        long j6 = ty6VarI.b;
                        if (j6 == j) {
                            x13.k(this.e, i07Var, l07Var, m07.Progress, str, j6, Long.valueOf(j));
                            x13.k(this.e, i07Var, l07Var, m07.Completed, str, ty6VarI.b, Long.valueOf(j));
                            randomAccessFile.close();
                            return;
                        }
                    }
                    throw new qz6("Encrypted SBA payload size mismatch for '" + str + "': stored=" + j4 + "/" + j5 + ", plain=" + ty6VarI.b + "/" + j, null);
                }
                try {
                    throw new qz6("SBA native FD decryption is not configured for " + l27Var, null);
                } catch (Throwable th2) {
                    th = th2;
                    r14 = randomAccessFile;
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                r14 = obj;
            }
        } catch (Throwable th4) {
            th = th4;
            obj = randomAccessFile;
        }
        th = th;
        r14 = obj;
        try {
            throw th;
        } catch (Throwable th5) {
            rs9.c(r14, th);
            throw th5;
        }
    }

    public final void b(i07 i07Var, s07 s07Var, oz6 oz6Var, ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream) throws CharacterCodingException, zz6, NoSuchAlgorithmException, qz6, sz6, i27 {
        G(s07Var);
        l27 l27Var = s07Var.h;
        l07 l07Var = l07.Decryption;
        String str = oz6Var.a;
        long j = oz6Var.e;
        new j07(autoCloseOutputStream, i07Var, l07Var, str, Long.valueOf(j), this.e, this.b.e);
        x13.l(this.e, i07Var, l07Var, m07.Started, str, 0L, Long.valueOf(j), 16);
        RandomAccessFile randomAccessFile = new RandomAccessFile(this.a, JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR);
        try {
            randomAccessFile.seek(oz6Var.c);
            switch (y07.a[l27Var.ordinal()]) {
                case 1:
                    throw new qz6("SBA archive is not encrypted", null);
                case 2:
                    throw new qz6("SBA 7zAES key cache is missing its MAC key", null);
                case 3:
                    new x07(randomAccessFile, oz6Var.d);
                    throw new i27("SBA optional encryption backend is not enabled for " + l27Var + ". Build with -PsbaEnableInternalEncryptionBackends=true to enable internal compatibility readers.", null);
                case 4:
                    throw new i27("SBA AES-GCM-SIV decryption requires native FD output", null);
                case 5:
                case 6:
                    throw new i27("SBA " + l27Var + " decryption requires native FD output", null);
                default:
                    throw new mn5();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(randomAccessFile, th);
                throw th2;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f = true;
        this.c = null;
        f44 f44Var = this.d;
        if (f44Var != null) {
            byte[] bArr = f44Var.a;
            Arrays.fill(bArr, 0, bArr.length, (byte) 0);
            byte[] bArr2 = f44Var.b;
            Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
        }
        this.d = null;
    }

    public final zy6 g(final s07 s07Var, final oz6 oz6Var, final String str, final int i, final String[] strArr) {
        int i2;
        String str2;
        String[] strArrExtractAegisArchiveEntry;
        byte[] bArr = s07Var.r;
        String str3 = oz6Var.a;
        l27 l27Var = s07Var.h;
        cy0 cy0Var = s07Var.e;
        if ((l27Var == l27.Aegis256 || l27Var == l27.Aegis128X2) && SbaLibaegisCryptoNative.a.isAvailable()) {
            oy6 oy6Var = oy6.j;
            if (cy0Var.equals(oy6Var) || (cy0Var instanceof py6)) {
                byte[] bArr2 = G(s07Var).a;
                i07 i07Var = i07.Extract;
                l07 l07Var = l07.Extraction;
                m07 m07Var = m07.Started;
                int i3 = oz6Var.h;
                long j = oz6Var.f;
                x13.l(this.e, i07Var, l07Var, m07Var, str3, 0L, Long.valueOf(j), 16);
                if (cy0Var.equals(oy6Var)) {
                    i2 = 0;
                } else {
                    if (!(cy0Var instanceof py6)) {
                        q.j();
                        return null;
                    }
                    i2 = 1;
                }
                int i4 = i2;
                vq vqVarQ = q(j, str3);
                byte[] bytes = str3.getBytes(f51.a);
                bytes.getClass();
                boolean z = this.b.f;
                File file = this.a;
                if (z) {
                    SbaSwiftTarNative sbaSwiftTarNative = SbaSwiftTarNative.a;
                    String path = file.getPath();
                    path.getClass();
                    str2 = str3;
                    strArrExtractAegisArchiveEntry = sbaSwiftTarNative.extractAegisArchiveEntryFused(path, oz6Var.c, oz6Var.d, oz6Var.e, oz6Var.f, str, i, strArr, i4, s07Var.i, bArr2, bArr, bytes, i3, s07Var.n, vqVarQ);
                } else {
                    str2 = str3;
                    SbaSwiftTarNative sbaSwiftTarNative2 = SbaSwiftTarNative.a;
                    String path2 = file.getPath();
                    path2.getClass();
                    strArrExtractAegisArchiveEntry = sbaSwiftTarNative2.extractAegisArchiveEntry(path2, oz6Var.c, oz6Var.d, oz6Var.e, oz6Var.f, str, i, strArr, i4, s07Var.i, bArr2, bArr, bytes, i3, s07Var.n, vqVarQ);
                }
                m07 m07Var2 = m07.Progress;
                long j2 = oz6Var.f;
                String str4 = str2;
                x13.k(this.e, i07Var, l07Var, m07Var2, str4, j2, Long.valueOf(j2));
                m07 m07Var3 = m07.Completed;
                long j3 = oz6Var.f;
                x13.k(this.e, i07Var, l07Var, m07Var3, str4, j3, Long.valueOf(j3));
                return new zy6(x50.z0(strArrExtractAegisArchiveEntry));
            }
        }
        return new zy6(x50.z0((String[]) W(i07.Extract, s07Var, oz6Var, new mt3() { // from class: q07
            @Override // defpackage.mt3
            public final Object invoke(Object obj) throws IOException {
                String[] strArrC;
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                parcelFileDescriptor.getClass();
                z07 z07Var = this.a;
                h07 h07Var = z07Var.e;
                i07 i07Var2 = i07.Extract;
                l07 l07Var2 = l07.Extraction;
                m07 m07Var4 = m07.Started;
                oz6 oz6Var2 = oz6Var;
                String str5 = oz6Var2.a;
                long j4 = oz6Var2.f;
                x13.l(h07Var, i07Var2, l07Var2, m07Var4, str5, 0L, Long.valueOf(j4), 16);
                cy0 cy0Var2 = s07Var.e;
                boolean zEquals = cy0Var2.equals(oy6.j);
                String str6 = str;
                int i5 = i;
                String[] strArr2 = strArr;
                if (zEquals) {
                    SbaSwiftTarNative sbaSwiftTarNative3 = SbaSwiftTarNative.a;
                    FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
                    fileDescriptor.getClass();
                    strArrC = SbaSwiftTarNative.b(fileDescriptor, oz6Var2.e, str6, i5, strArr2, z07Var.q(j4, str5));
                } else {
                    if (!(cy0Var2 instanceof py6)) {
                        q.j();
                        return null;
                    }
                    SbaSwiftTarNative sbaSwiftTarNative4 = SbaSwiftTarNative.a;
                    FileDescriptor fileDescriptor2 = parcelFileDescriptor.getFileDescriptor();
                    fileDescriptor2.getClass();
                    long j5 = oz6Var2.e;
                    long j6 = oz6Var2.f;
                    strArrC = SbaSwiftTarNative.c(fileDescriptor2, j5, j6, str6, i5, strArr2, z07Var.q(j6, str5));
                }
                h07 h07Var2 = z07Var.e;
                m07 m07Var5 = m07.Progress;
                long j7 = oz6Var2.f;
                x13.k(h07Var2, i07Var2, l07Var2, m07Var5, str5, j7, Long.valueOf(j7));
                h07 h07Var3 = z07Var.e;
                m07 m07Var6 = m07.Completed;
                long j8 = oz6Var2.f;
                x13.k(h07Var3, i07Var2, l07Var2, m07Var6, str5, j8, Long.valueOf(j8));
                return strArrC;
            }
        })));
    }

    public final zy6 h(String str, File file, List list) throws IOException {
        az6 az6Var;
        String str2;
        str.getClass();
        if (this.f) {
            l0.e("SbaReader has been closed");
            return null;
        }
        if (!file.exists() && !file.mkdirs()) {
            y5.j(xs1.j("Failed to create SBA extraction target directory: ", file.getPath()), null);
            return null;
        }
        if (!file.isDirectory()) {
            y5.j(xs1.j("SBA extraction target is not a directory: ", file.getPath()), null);
            return null;
        }
        final v07 v07VarN = n();
        s07 s07Var = v07VarN.a;
        final oz6 oz6Var = (oz6) v07VarN.g.get(str);
        if (oz6Var == null) {
            throw new NoSuchElementException(eq3.k("No SBA entry named '", str, "'"));
        }
        String[] strArr = null;
        final String canonicalPath = file.getCanonicalPath();
        b17 b17Var = this.b;
        int i = a17.a[b17Var.a.ordinal()];
        if (i == 1) {
            az6Var = new az6(511);
        } else if (i == 2) {
            az6Var = new az6(468);
        } else if (i == 3) {
            az6Var = new az6(384);
        } else {
            q.j();
            az6Var = null;
        }
        final int iS = w13.s(az6Var);
        if (list != null) {
            strArr = (String[]) list.toArray(new String[0]);
        }
        x13.S(b17Var.e, "extract entry '" + str + "'");
        try {
            if (s07Var.h != l27.None) {
                canonicalPath.getClass();
                return g(s07Var, oz6Var, canonicalPath, iS, strArr);
            }
            final String[] strArr2 = strArr;
            h07 h07Var = this.e;
            i07 i07Var = i07.Extract;
            l07 l07Var = l07.Extraction;
            m07 m07Var = m07.Started;
            Long lValueOf = Long.valueOf(oz6Var.f);
            str2 = str;
            try {
                x13.l(h07Var, i07Var, l07Var, m07Var, str2, 0L, lValueOf, 16);
                try {
                    String[] strArr3 = (String[]) Y(s07Var, oz6Var, new rt3() { // from class: n07
                        @Override // defpackage.rt3
                        public final Object a(Object obj, Object obj2, Object obj3) throws IOException {
                            oz6 oz6Var2 = oz6Var;
                            String str3 = oz6Var2.a;
                            String str4 = (String) obj;
                            long jLongValue = ((Long) obj2).longValue();
                            long jLongValue2 = ((Long) obj3).longValue();
                            str4.getClass();
                            cy0 cy0Var = v07VarN.a.e;
                            boolean zEquals = cy0Var.equals(oy6.j);
                            z07 z07Var = this;
                            String str5 = canonicalPath;
                            int i2 = iS;
                            String[] strArr4 = strArr2;
                            if (zEquals) {
                                str5.getClass();
                                FileInputStream fileInputStream = new FileInputStream(str4);
                                try {
                                    fileInputStream.getChannel().position(jLongValue);
                                    SbaSwiftTarNative sbaSwiftTarNative = SbaSwiftTarNative.a;
                                    FileDescriptor fd = fileInputStream.getFD();
                                    fd.getClass();
                                    String[] strArrB = SbaSwiftTarNative.b(fd, jLongValue2, str5, i2, strArr4, z07Var.q(oz6Var2.f, str3));
                                    fileInputStream.close();
                                    return strArrB;
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        rs9.c(fileInputStream, th);
                                        throw th2;
                                    }
                                }
                            }
                            if (!(cy0Var instanceof py6)) {
                                q.j();
                                return null;
                            }
                            str5.getClass();
                            FileInputStream fileInputStream2 = new FileInputStream(str4);
                            try {
                                fileInputStream2.getChannel().position(jLongValue);
                                SbaSwiftTarNative sbaSwiftTarNative2 = SbaSwiftTarNative.a;
                                FileDescriptor fd2 = fileInputStream2.getFD();
                                fd2.getClass();
                                long j = oz6Var2.f;
                                String[] strArrC = SbaSwiftTarNative.c(fd2, jLongValue2, j, str5, i2, strArr4, z07Var.q(j, str3));
                                fileInputStream2.close();
                                return strArrC;
                            } catch (Throwable th3) {
                                try {
                                    throw th3;
                                } catch (Throwable th4) {
                                    rs9.c(fileInputStream2, th3);
                                    throw th4;
                                }
                            }
                        }
                    });
                    h07 h07Var2 = this.e;
                    m07 m07Var2 = m07.Progress;
                    long j = oz6Var.f;
                    x13.k(h07Var2, i07Var, l07Var, m07Var2, str, j, Long.valueOf(j));
                    h07 h07Var3 = this.e;
                    m07 m07Var3 = m07.Completed;
                    long j2 = oz6Var.f;
                    str2 = str;
                    x13.k(h07Var3, i07Var, l07Var, m07Var3, str2, j2, Long.valueOf(j2));
                    return new zy6(x50.z0(strArr3));
                } catch (IOException e) {
                    e = e;
                    str2 = str;
                    throw w13.t(e, "Failed to extract SBA entry '" + str2 + "'");
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            e = e3;
            str2 = str;
        }
    }

    public final ArrayList j() {
        if (this.f) {
            l0.e("SbaReader has been closed");
            return null;
        }
        v07 v07VarN = n();
        ArrayList arrayList = v07VarN.f;
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        int i = 0;
        for (Object obj : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            s07 s07Var = v07VarN.a;
            arrayList2.add(((oz6) obj).a(i, s07Var.e, s07Var.h.toPublicMethod()));
            i = i2;
        }
        return arrayList2;
    }

    public final List m(String str) throws yy6 {
        str.getClass();
        if (this.f) {
            l0.e("SbaReader has been closed");
            return null;
        }
        v07 v07VarN = n();
        oz6 oz6Var = (oz6) v07VarN.g.get(str);
        if (oz6Var == null) {
            throw new NoSuchElementException(eq3.k("No SBA entry named '", str, "'"));
        }
        x13.S(this.b.e, "list tar entries for '" + str + "'");
        i07 i07Var = i07.ListTarEntries;
        l07 l07Var = l07.Listing;
        x13.l(this.e, i07Var, l07Var, m07.Started, str, 0L, Long.valueOf(oz6Var.f), 16);
        try {
            s07 s07Var = v07VarN.a;
            List list = s07Var.h != l27.None ? (List) W(i07Var, s07Var, oz6Var, new jj2(6, s07Var, oz6Var)) : (List) Y(s07Var, oz6Var, new bw(v07VarN, this, oz6Var));
            h07 h07Var = this.e;
            m07 m07Var = m07.Completed;
            long j = oz6Var.f;
            x13.k(h07Var, i07Var, l07Var, m07Var, str, j, Long.valueOf(j));
            return list;
        } catch (IOException e) {
            throw w13.t(e, "Failed to list tar entries for SBA entry '" + str + "'");
        }
    }

    public final v07 n() {
        v07 v07Var = this.c;
        if (v07Var != null) {
            return v07Var;
        }
        synchronized (this) {
            v07 v07Var2 = this.c;
            if (v07Var2 != null) {
                return v07Var2;
            }
            v07 v07VarV = v();
            this.c = v07VarV;
            return v07VarV;
        }
    }

    public final vq q(final long j, final String str) {
        return x13.Q(this.e, this.b.e, new rt3() { // from class: p07
            @Override // defpackage.rt3
            public final Object a(Object obj, Object obj2, Object obj3) {
                h07 h07Var = (h07) obj;
                long jLongValue = ((Long) obj2).longValue();
                ((Long) obj3).longValue();
                h07Var.getClass();
                if (jLongValue >= 0) {
                    i07 i07Var = i07.Extract;
                    l07 l07Var = l07.Extraction;
                    m07 m07Var = m07.Progress;
                    long j2 = j;
                    if (jLongValue > j2) {
                        jLongValue = j2;
                    }
                    x13.k(h07Var, i07Var, l07Var, m07Var, str, jLongValue, Long.valueOf(j2));
                }
                return be8.a;
            }
        });
    }

    public final v07 v() throws IOException {
        File file = this.a;
        if (!file.exists()) {
            throw new nz6(xs1.j("SBA file does not exist: ", file.getPath()), null);
        }
        long length = file.length();
        if (length < 128) {
            throw new nz6(fz5.m("SBA file is too small: ", " bytes", length), null);
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR);
        try {
            s07 s07VarU = u(randomAccessFile);
            u07 u07VarR = r(randomAccessFile, length, s07VarU.a);
            long j = u07VarR.b;
            long j2 = u07VarR.c;
            if (j < s07VarU.b || j2 <= 0) {
                throw new qz6("Invalid SBA index location: offset=" + j + ", size=" + j2, null);
            }
            if (j2 > 67108864) {
                throw new qz6("SBA index too large: " + j2, null);
            }
            long jC = us2.C(j, j2, "index bounds");
            long j3 = length - 32;
            if (jC > j3) {
                throw new nz6("SBA index extends beyond file bounds: offset=" + j + ", size=" + j2, null);
            }
            if (jC != j3) {
                throw new qz6("SBA index must end at footer: indexEnd=" + jC + ", footerStart=" + j3, null);
            }
            randomAccessFile.seek(j);
            byte[] bArr = new byte[(int) j2];
            randomAccessFile.readFully(bArr);
            CRC32 crc32 = new CRC32();
            crc32.update(bArr);
            int value = (int) crc32.getValue();
            int i = u07VarR.d;
            if (value != i) {
                throw new pz6("SBA index CRC mismatch: expected=" + i + ", actual=" + value, null);
            }
            U(randomAccessFile, s07VarU, u07VarR, bArr);
            w07 w07VarZ = z(bArr, u07VarR.b, length, s07VarU);
            String str = w07VarZ.b;
            ArrayList arrayList = w07VarZ.c;
            S(randomAccessFile, arrayList, j, s07VarU);
            int i2 = w07VarZ.a;
            int iQ0 = x65.q0(hl1.G0(arrayList, 10));
            if (iQ0 < 16) {
                iQ0 = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
            for (Object obj : arrayList) {
                linkedHashMap.put(((oz6) obj).a, obj);
            }
            v07 v07Var = new v07(s07VarU, u07VarR, length, i2, str, arrayList, linkedHashMap);
            randomAccessFile.close();
            return v07Var;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(randomAccessFile, th);
                throw th2;
            }
        }
    }

    public /* synthetic */ z07(File file) {
        this(file, new b17(null, null, null, 63));
    }
}
