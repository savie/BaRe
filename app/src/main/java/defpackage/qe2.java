package defpackage;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qe2 implements x94 {
    public static final byte[] a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));
    public static final int[] b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public static int e(pe2 pe2Var, m35 m35Var) {
        try {
            int iF = pe2Var.f();
            if ((iF & 65496) == 65496 || iF == 19789 || iF == 18761) {
                int iG = g(pe2Var);
                if (iG != -1) {
                    byte[] bArr = (byte[]) m35Var.c(iG, byte[].class);
                    try {
                        return h(pe2Var, bArr, iG);
                    } finally {
                        m35Var.g(bArr);
                    }
                }
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                    return -1;
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + iF);
                return -1;
            }
        } catch (oe2 unused) {
        }
        return -1;
    }

    public static ImageHeaderParser$ImageType f(pe2 pe2Var) {
        try {
            int iF = pe2Var.f();
            if (iF == 65496) {
                return ImageHeaderParser$ImageType.JPEG;
            }
            int iJ = (iF << 8) | pe2Var.j();
            if (iJ == 4671814) {
                return ImageHeaderParser$ImageType.GIF;
            }
            int iJ2 = (iJ << 8) | pe2Var.j();
            if (iJ2 == -1991225785) {
                pe2Var.skip(21L);
                try {
                    return pe2Var.j() >= 3 ? ImageHeaderParser$ImageType.PNG_A : ImageHeaderParser$ImageType.PNG;
                } catch (oe2 unused) {
                    return ImageHeaderParser$ImageType.PNG;
                }
            }
            if (iJ2 == 1380533830) {
                pe2Var.skip(4L);
                if (((pe2Var.f() << 16) | pe2Var.f()) != 1464156752) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int iF2 = (pe2Var.f() << 16) | pe2Var.f();
                if ((iF2 & (-256)) != 1448097792) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int i = iF2 & 255;
                if (i != 88) {
                    if (i != 76) {
                        return ImageHeaderParser$ImageType.WEBP;
                    }
                    pe2Var.skip(4L);
                    return (pe2Var.j() & 8) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
                }
                pe2Var.skip(4L);
                short sJ = pe2Var.j();
                if ((sJ & 2) != 0) {
                    return ImageHeaderParser$ImageType.ANIMATED_WEBP;
                }
                return (sJ & 16) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
            }
            if (((pe2Var.f() << 16) | pe2Var.f()) != 1718909296) {
                return ImageHeaderParser$ImageType.UNKNOWN;
            }
            int iF3 = (pe2Var.f() << 16) | pe2Var.f();
            if (iF3 == 1635150195) {
                return ImageHeaderParser$ImageType.ANIMATED_AVIF;
            }
            int i2 = 0;
            boolean z = iF3 == 1635150182;
            pe2Var.skip(4L);
            int i3 = iJ2 - 16;
            if (i3 % 4 == 0) {
                while (i2 < 5 && i3 > 0) {
                    int iF4 = (pe2Var.f() << 16) | pe2Var.f();
                    if (iF4 == 1635150195) {
                        return ImageHeaderParser$ImageType.ANIMATED_AVIF;
                    }
                    if (iF4 == 1635150182) {
                        z = true;
                    }
                    i2++;
                    i3 -= 4;
                }
            }
            return z ? ImageHeaderParser$ImageType.AVIF : ImageHeaderParser$ImageType.UNKNOWN;
        } catch (oe2 unused2) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    public static int g(pe2 pe2Var) {
        short sJ;
        int iF;
        long j;
        long jSkip;
        do {
            short sJ2 = pe2Var.j();
            if (sJ2 == 255) {
                sJ = pe2Var.j();
                if (sJ != 218) {
                    if (sJ != 217) {
                        iF = pe2Var.f() - 2;
                        if (sJ == 225) {
                            return iF;
                        }
                        j = iF;
                        jSkip = pe2Var.skip(j);
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                        return -1;
                    }
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) sJ2));
                return -1;
            }
            return -1;
        } while (jSkip == j);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            StringBuilder sbN = xs1.n("Unable to skip enough data, type: ", sJ, ", wanted to skip: ", ", but actually skipped: ", iF);
            sbN.append(jSkip);
            Log.d("DfltImageHeaderParser", sbN.toString());
        }
        return -1;
    }

    public static int h(pe2 pe2Var, byte[] bArr, int i) {
        ByteOrder byteOrder;
        int i2 = pe2Var.i(bArr, i);
        short s = -1;
        if (i2 == i) {
            int i3 = 0;
            byte[] bArr2 = a;
            boolean z = bArr != null && i > bArr2.length;
            if (z) {
                for (int i4 = 0; i4 < bArr2.length; i4++) {
                    if (bArr[i4] != bArr2[i4]) {
                        z = false;
                        break;
                    }
                }
            }
            if (!z) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
                return -1;
            }
            ByteBuffer byteBuffer = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
            short s2 = byteBuffer.remaining() - 6 >= 2 ? byteBuffer.getShort(6) : (short) -1;
            if (s2 != 18761) {
                if (s2 != 19789 && Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) s2));
                }
                byteOrder = ByteOrder.BIG_ENDIAN;
            } else {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            }
            byteBuffer.order(byteOrder);
            int i5 = byteBuffer.remaining() - 10 >= 4 ? byteBuffer.getInt(10) : -1;
            int i6 = i5 + 6;
            short s3 = byteBuffer.remaining() - i6 >= 2 ? byteBuffer.getShort(i6) : (short) -1;
            while (i3 < s3) {
                int i7 = (i3 * 12) + i5 + 8;
                short s4 = byteBuffer.remaining() - i7 >= 2 ? byteBuffer.getShort(i7) : s;
                if (s4 != 274) {
                    s = s;
                } else {
                    int i8 = i7 + 2;
                    short s5 = byteBuffer.remaining() - i8 >= 2 ? byteBuffer.getShort(i8) : s;
                    if (s5 < 1 || s5 > 12) {
                        s = s;
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) s5));
                        }
                    } else {
                        int i9 = i7 + 4;
                        int i10 = byteBuffer.remaining() - i9 >= 4 ? byteBuffer.getInt(i9) : s;
                        if (i10 < 0) {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Negative tiff component count");
                            }
                            s = s;
                        } else {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                StringBuilder sbN = xs1.n("Got tagIndex=", i3, " tagType=", " formatCode=", s4);
                                sbN.append((int) s5);
                                sbN.append(" componentCount=");
                                sbN.append(i10);
                                Log.d("DfltImageHeaderParser", sbN.toString());
                            }
                            int i11 = i10 + b[s5];
                            if (i11 <= 4) {
                                int i12 = i7 + 8;
                                if (i12 >= 0 && i12 <= byteBuffer.remaining()) {
                                    if (i11 >= 0 && i11 + i12 <= byteBuffer.remaining()) {
                                        return byteBuffer.remaining() - i12 >= 2 ? byteBuffer.getShort(i12) : s;
                                    }
                                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                        Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) s4));
                                    }
                                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i12 + " tagType=" + ((int) s4));
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) s5));
                            }
                        }
                    }
                }
                i3++;
                s = s;
            }
        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i + ", actually read: " + i2);
            return -1;
        }
        return s;
    }

    @Override // defpackage.x94
    public final ImageHeaderParser$ImageType a(ByteBuffer byteBuffer) {
        ms8.j(byteBuffer, "Argument must not be null");
        return f(new om5(byteBuffer));
    }

    @Override // defpackage.x94
    public final int b(ByteBuffer byteBuffer, m35 m35Var) {
        om5 om5Var = new om5(byteBuffer);
        ms8.j(m35Var, "Argument must not be null");
        return e(om5Var, m35Var);
    }

    @Override // defpackage.x94
    public final ImageHeaderParser$ImageType c(InputStream inputStream) {
        return f(new rb(inputStream, 11));
    }

    @Override // defpackage.x94
    public final int d(InputStream inputStream, m35 m35Var) {
        rb rbVar = new rb(inputStream, 11);
        ms8.j(m35Var, "Argument must not be null");
        return e(rbVar, m35Var);
    }
}
