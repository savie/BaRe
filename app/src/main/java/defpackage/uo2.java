package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uo2 {
    public static final iu5 f = iu5.a(pd2.c, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");
    public static final iu5 g = new iu5("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, iu5.e);
    public static final iu5 h;
    public static final iu5 i;
    public static final nh4 j;
    public static final ArrayDeque k;
    public final nr0 a;
    public final DisplayMetrics b;
    public final m35 c;
    public final ArrayList d;
    public final v24 e = v24.a();

    static {
        qo2 qo2Var = so2.a;
        Boolean bool = Boolean.FALSE;
        h = iu5.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        i = iu5.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        j = new nh4(6);
        Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser$ImageType.JPEG, ImageHeaderParser$ImageType.PNG_A, ImageHeaderParser$ImageType.PNG));
        k = new ArrayDeque(0);
    }

    public uo2(ArrayList arrayList, DisplayMetrics displayMetrics, nr0 nr0Var, m35 m35Var) {
        this.d = arrayList;
        ms8.j(displayMetrics, "Argument must not be null");
        this.b = displayMetrics;
        ms8.j(nr0Var, "Argument must not be null");
        this.a = nr0Var;
        ms8.j(m35Var, "Argument must not be null");
        this.c = m35Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
    
        throw r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap c(defpackage.ba4 r9, android.graphics.BitmapFactory.Options r10, defpackage.to2 r11, defpackage.nr0 r12) {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r10.inJustDecodeBounds
            if (r1 != 0) goto Lc
            r11.c()
            r9.f()
        Lc:
            int r1 = r10.outWidth
            int r2 = r10.outHeight
            java.lang.String r3 = r10.outMimeType
            java.util.concurrent.locks.Lock r4 = defpackage.n98.d
            r4.lock()
            android.graphics.Bitmap r9 = r9.b(r10)     // Catch: java.lang.IllegalArgumentException -> L1f java.lang.Throwable -> L66
            r4.unlock()
            return r9
        L1f:
            r4 = move-exception
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L66
            java.lang.String r6 = "Exception decoding bitmap, outWidth: "
            java.lang.String r7 = ", outHeight: "
            java.lang.String r8 = ", outMimeType: "
            java.lang.StringBuilder r1 = defpackage.xs1.n(r6, r1, r7, r8, r2)     // Catch: java.lang.Throwable -> L66
            r1.append(r3)     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = ", inBitmap: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L66
            android.graphics.Bitmap r2 = r10.inBitmap     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = d(r2)     // Catch: java.lang.Throwable -> L66
            r1.append(r2)     // Catch: java.lang.Throwable -> L66
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L66
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L66
            r1 = 3
            boolean r1 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L50
            java.lang.String r1 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r1, r5)     // Catch: java.lang.Throwable -> L66
        L50:
            android.graphics.Bitmap r0 = r10.inBitmap     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L65
            r12.f(r0)     // Catch: java.io.IOException -> L64 java.lang.Throwable -> L66
            r0 = 0
            r10.inBitmap = r0     // Catch: java.io.IOException -> L64 java.lang.Throwable -> L66
            android.graphics.Bitmap r9 = c(r9, r10, r11, r12)     // Catch: java.io.IOException -> L64 java.lang.Throwable -> L66
            java.util.concurrent.locks.Lock r10 = defpackage.n98.d
            r10.unlock()
            return r9
        L64:
            throw r5     // Catch: java.lang.Throwable -> L66
        L65:
            throw r5     // Catch: java.lang.Throwable -> L66
        L66:
            r9 = move-exception
            java.util.concurrent.locks.Lock r10 = defpackage.n98.d
            r10.unlock()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.uo2.c(ba4, android.graphics.BitmapFactory$Options, to2, nr0):android.graphics.Bitmap");
    }

    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static void e(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.inPreferredColorSpace = null;
        options.outColorSpace = null;
        options.outConfig = null;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public final or0 a(ba4 ba4Var, int i2, int i3, ou5 ou5Var, to2 to2Var) {
        ArrayDeque arrayDeque;
        BitmapFactory.Options options;
        byte[] bArr = (byte[]) this.c.c(65536, byte[].class);
        synchronized (uo2.class) {
            arrayDeque = k;
            synchronized (arrayDeque) {
                options = (BitmapFactory.Options) arrayDeque.poll();
            }
            if (options == null) {
                options = new BitmapFactory.Options();
                e(options);
            }
        }
        options.inTempStorage = bArr;
        pd2 pd2Var = (pd2) ou5Var.c(f);
        v46 v46Var = (v46) ou5Var.c(g);
        so2 so2Var = (so2) ou5Var.c(so2.f);
        boolean zBooleanValue = ((Boolean) ou5Var.c(h)).booleanValue();
        iu5 iu5Var = i;
        try {
            or0 or0VarE = or0.e(this.a, b(ba4Var, options, so2Var, pd2Var, v46Var, ou5Var.c(iu5Var) != null && ((Boolean) ou5Var.c(iu5Var)).booleanValue(), i2, i3, zBooleanValue, to2Var));
            e(options);
            synchronized (arrayDeque) {
                arrayDeque.offer(options);
            }
            return or0VarE;
        } finally {
            e(options);
            ArrayDeque arrayDeque2 = k;
            synchronized (arrayDeque2) {
                arrayDeque2.offer(options);
                this.c.g(bArr);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:102:0x023c  */
    /* JADX WARN: Code duplicated, block: B:85:0x0197  */
    /* JADX WARN: Code duplicated, block: B:86:0x019a  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:90:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:97:0x01dd  */
    public final Bitmap b(ba4 ba4Var, BitmapFactory.Options options, so2 so2Var, pd2 pd2Var, v46 v46Var, boolean z, int i2, int i3, boolean z2, to2 to2Var) {
        int i4;
        boolean z3;
        int i5;
        int i6;
        int i7;
        String str;
        String str2;
        nr0 nr0Var;
        int i8;
        int i9;
        nr0 nr0Var2;
        Bitmap bitmapK;
        ColorSpace colorSpace;
        Bitmap.Config config;
        boolean zHasAlpha;
        int i10;
        int i11;
        int iFloor;
        int iFloor2;
        int iRound;
        int iRound2;
        double dB;
        double d;
        int i12;
        int i13;
        double d2;
        int i14;
        int i15 = g15.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        options.inJustDecodeBounds = true;
        nr0 nr0Var3 = this.a;
        c(ba4Var, options, to2Var, nr0Var3);
        options.inJustDecodeBounds = false;
        int[] iArr = {options.outWidth, options.outHeight};
        int i16 = iArr[0];
        int i17 = iArr[1];
        String str3 = options.outMimeType;
        boolean z4 = (i16 == -1 || i17 == -1) ? false : z;
        int iA = ba4Var.a();
        switch (iA) {
            case 3:
            case 4:
                i4 = 180;
                break;
            case 5:
            case 6:
                i4 = 90;
                break;
            case 7:
            case 8:
                i4 = 270;
                break;
            default:
                i4 = 0;
                break;
        }
        switch (iA) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                z3 = true;
                break;
            default:
                z3 = false;
                break;
        }
        if (i2 == Integer.MIN_VALUE) {
            if (i4 != 90) {
                i5 = 270;
                if (i4 != 270) {
                    i6 = i16;
                }
            } else {
                i5 = 270;
            }
            i6 = i17;
        } else {
            i5 = 270;
            i6 = i2;
        }
        if (i3 == Integer.MIN_VALUE) {
            i7 = (i4 == 90 || i4 == i5) ? i16 : i17;
        } else {
            i7 = i3;
        }
        ImageHeaderParser$ImageType imageHeaderParser$ImageTypeG = ba4Var.g();
        boolean z5 = z4;
        if (i16 <= 0 || i17 <= 0) {
            str = ", density: ";
            str2 = ", target density: ";
            nr0Var = nr0Var3;
            i8 = i6;
            if (Log.isLoggable("Downsampler", 3)) {
                Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeG + " with target [" + i8 + "x" + i7 + "]");
            }
        } else {
            if (i4 == 90 || i4 == 270) {
                i10 = i17;
                i11 = i16;
            } else {
                i11 = i17;
                i10 = i16;
            }
            i8 = i6;
            float fB = so2Var.b(i10, i11, i8, i7);
            if (fB <= 0.0f) {
                StringBuilder sb = new StringBuilder("Cannot scale with factor: ");
                sb.append(fB);
                sb.append(" from: ");
                sb.append(so2Var);
                sb.append(", source: [");
                xs1.s(sb, i16, "x", i17, "], target: [");
                sb.append(i8);
                sb.append("x");
                sb.append(i7);
                sb.append("]");
                throw new IllegalArgumentException(sb.toString());
            }
            int iA2 = so2Var.a(i10, i11, i8, i7);
            if (iA2 == 0) {
                c6.f("Cannot round with null rounding");
                return null;
            }
            int i18 = i4;
            float f2 = i10;
            int i19 = i10;
            float f3 = i11;
            int i20 = i11;
            int i21 = (int) (((double) (fB * f3)) + 0.5d);
            int i22 = i19 / ((int) (((double) (fB * f2)) + 0.5d));
            int i23 = i20 / i21;
            int iMax = Math.max(1, Integer.highestOneBit(iA2 == 1 ? Math.max(i22, i23) : Math.min(i22, i23)));
            if (iA2 == 1 && iMax < 1.0f / fB) {
                iMax <<= 1;
            }
            options.inSampleSize = iMax;
            if (imageHeaderParser$ImageTypeG == ImageHeaderParser$ImageType.JPEG) {
                float fMin = Math.min(iMax, 8);
                float f4 = f3 / fMin;
                iFloor = (int) Math.ceil(f2 / fMin);
                iFloor2 = (int) Math.ceil(f4);
                int i24 = iMax / 8;
                if (i24 > 0) {
                    iFloor /= i24;
                    iFloor2 /= i24;
                }
            } else {
                if (imageHeaderParser$ImageTypeG == ImageHeaderParser$ImageType.PNG || imageHeaderParser$ImageTypeG == ImageHeaderParser$ImageType.PNG_A) {
                    float f5 = iMax;
                    float f6 = f3 / f5;
                    iFloor = (int) Math.floor(f2 / f5);
                    iFloor2 = (int) Math.floor(f6);
                } else if (imageHeaderParser$ImageTypeG.isWebp()) {
                    float f7 = iMax;
                    iRound2 = Math.round(f2 / f7);
                    iRound = Math.round(f3 / f7);
                } else if (i19 % iMax == 0 && i20 % iMax == 0) {
                    iRound2 = i19 / iMax;
                    iRound = i20 / iMax;
                } else {
                    options.inJustDecodeBounds = true;
                    c(ba4Var, options, to2Var, nr0Var3);
                    options.inJustDecodeBounds = false;
                    int[] iArr2 = {options.outWidth, options.outHeight};
                    int i25 = iArr2[0];
                    iRound = iArr2[1];
                    iRound2 = i25;
                }
                nr0Var = nr0Var3;
                dB = so2Var.b(iRound2, iRound, i8, i7);
                if (dB <= 1.0d) {
                    d = dB;
                } else {
                    d = 1.0d / dB;
                }
                int iRound3 = (int) Math.round(d * 2.147483647E9d);
                int i26 = (int) ((((double) iRound3) * dB) + 0.5d);
                float f8 = i26 / iRound3;
                i12 = iMax;
                i13 = iRound;
                options.inTargetDensity = (int) (((dB / ((double) f8)) * ((double) i26)) + 0.5d);
                if (dB <= 1.0d) {
                    d2 = dB;
                } else {
                    d2 = 1.0d / dB;
                }
                int iRound4 = (int) Math.round(d2 * 2.147483647E9d);
                options.inDensity = iRound4;
                i14 = options.inTargetDensity;
                if (i14 > 0 || iRound4 <= 0 || i14 == iRound4) {
                    options.inTargetDensity = 0;
                    options.inDensity = 0;
                } else {
                    options.inScaled = true;
                }
                if (Log.isLoggable("Downsampler", 2)) {
                    StringBuilder sbN = xs1.n("Calculate scaling, source: [", i16, "x", "], degreesToRotate: ", i17);
                    xs1.s(sbN, i18, ", target: [", i8, "x");
                    xs1.s(sbN, i7, "], power of two scaled: [", iRound2, "x");
                    sbN.append(i13);
                    sbN.append("], exact scale factor: ");
                    sbN.append(fB);
                    sbN.append(", power of 2 sample size: ");
                    sbN.append(i12);
                    sbN.append(", adjusted scale factor: ");
                    sbN.append(dB);
                    str2 = ", target density: ";
                    sbN.append(str2);
                    sbN.append(options.inTargetDensity);
                    str = ", density: ";
                    sbN.append(str);
                    sbN.append(options.inDensity);
                    Log.v("Downsampler", sbN.toString());
                } else {
                    str = r6;
                    str2 = ", target density: ";
                }
            }
            int i27 = iFloor2;
            iRound2 = iFloor;
            iRound = i27;
            nr0Var = nr0Var3;
            dB = so2Var.b(iRound2, iRound, i8, i7);
            if (dB <= 1.0d) {
                d = dB;
            } else {
                d = 1.0d / dB;
            }
            int iRound5 = (int) Math.round(d * 2.147483647E9d);
            int i28 = (int) ((((double) iRound5) * dB) + 0.5d);
            float f9 = i28 / iRound5;
            i12 = iMax;
            i13 = iRound;
            options.inTargetDensity = (int) (((dB / ((double) f9)) * ((double) i28)) + 0.5d);
            if (dB <= 1.0d) {
                d2 = dB;
            } else {
                d2 = 1.0d / dB;
            }
            int iRound6 = (int) Math.round(d2 * 2.147483647E9d);
            options.inDensity = iRound6;
            i14 = options.inTargetDensity;
            if (i14 > 0) {
                options.inTargetDensity = 0;
                options.inDensity = 0;
            } else {
                options.inTargetDensity = 0;
                options.inDensity = 0;
            }
            if (Log.isLoggable("Downsampler", 2)) {
                StringBuilder sbN2 = xs1.n("Calculate scaling, source: [", i16, "x", "], degreesToRotate: ", i17);
                xs1.s(sbN2, i18, ", target: [", i8, "x");
                xs1.s(sbN2, i7, "], power of two scaled: [", iRound2, "x");
                sbN2.append(i13);
                sbN2.append("], exact scale factor: ");
                sbN2.append(fB);
                sbN2.append(", power of 2 sample size: ");
                sbN2.append(i12);
                sbN2.append(", adjusted scale factor: ");
                sbN2.append(dB);
                str2 = ", target density: ";
                sbN2.append(str2);
                sbN2.append(options.inTargetDensity);
                str = ", density: ";
                sbN2.append(str);
                sbN2.append(options.inDensity);
                Log.v("Downsampler", sbN2.toString());
            } else {
                str = r6;
                str2 = ", target density: ";
            }
        }
        boolean zC = this.e.c(i8, i7, z5, z3);
        if (zC) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        if (!zC) {
            if (pd2Var != pd2.a) {
                try {
                    zHasAlpha = ba4Var.g().hasAlpha();
                } catch (IOException e) {
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + pd2Var, e);
                    }
                    zHasAlpha = false;
                }
                Bitmap.Config config2 = zHasAlpha ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
                options.inPreferredConfig = config2;
                if (config2 == Bitmap.Config.RGB_565) {
                    options.inDither = true;
                }
            } else {
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            }
        }
        if (i16 < 0 || i17 < 0 || !z2) {
            int i29 = options.inTargetDensity;
            float f10 = (i29 <= 0 || (i9 = options.inDensity) <= 0 || i29 == i9) ? 1.0f : i29 / i9;
            int i30 = options.inSampleSize;
            float f11 = i30;
            int iCeil = (int) Math.ceil(i16 / f11);
            int iCeil2 = (int) Math.ceil(i17 / f11);
            int iRound7 = Math.round(iCeil * f10);
            int iRound8 = Math.round(iCeil2 * f10);
            if (Log.isLoggable("Downsampler", 2)) {
                StringBuilder sbN3 = xs1.n("Calculated target [", iRound7, "x", "] for source [", iRound8);
                xs1.s(sbN3, i16, "x", i17, "], sampleSize: ");
                sbN3.append(i30);
                sbN3.append(", targetDensity: ");
                sbN3.append(options.inTargetDensity);
                sbN3.append(str);
                sbN3.append(options.inDensity);
                sbN3.append(", density multiplier: ");
                sbN3.append(f10);
                Log.v("Downsampler", sbN3.toString());
            }
            i8 = iRound7;
            i7 = iRound8;
        }
        if (i8 <= 0 || i7 <= 0 || (config = options.inPreferredConfig) == Bitmap.Config.HARDWARE) {
            nr0Var2 = nr0Var;
        } else {
            Bitmap.Config config3 = options.outConfig;
            if (config3 != null) {
                config = config3;
            }
            nr0Var2 = nr0Var;
            options.inBitmap = nr0Var2.d(i8, i7, config);
        }
        if (v46Var != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                options.inPreferredColorSpace = ColorSpace.get((v46Var == v46.a && (colorSpace = options.outColorSpace) != null && colorSpace.isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
            } else {
                options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            }
        }
        Bitmap bitmapC = c(ba4Var, options, to2Var, nr0Var2);
        to2Var.g(nr0Var2, bitmapC);
        if (Log.isLoggable("Downsampler", 2)) {
            Log.v("Downsampler", "Decoded " + d(bitmapC) + " from [" + i16 + "x" + i17 + "] " + str3 + " with inBitmap " + d(options.inBitmap) + " for [" + i2 + "x" + i3 + "], sample size: " + options.inSampleSize + str + options.inDensity + str2 + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + g15.a(jElapsedRealtimeNanos));
        }
        if (bitmapC == null) {
            return null;
        }
        bitmapC.setDensity(this.b.densityDpi);
        switch (iA) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                Matrix matrix = new Matrix();
                switch (iA) {
                    case 2:
                        matrix.setScale(-1.0f, 1.0f);
                        break;
                    case 3:
                        matrix.setRotate(180.0f);
                        break;
                    case 4:
                        matrix.setRotate(180.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 5:
                        matrix.setRotate(90.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 6:
                        matrix.setRotate(90.0f);
                        break;
                    case 7:
                        matrix.setRotate(-90.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 8:
                        matrix.setRotate(-90.0f);
                        break;
                }
                RectF rectF = new RectF(0.0f, 0.0f, bitmapC.getWidth(), bitmapC.getHeight());
                matrix.mapRect(rectF);
                bitmapK = nr0Var2.k(Math.round(rectF.width()), Math.round(rectF.height()), bitmapC.getConfig() != null ? bitmapC.getConfig() : Bitmap.Config.ARGB_8888);
                matrix.postTranslate(-rectF.left, -rectF.top);
                bitmapK.setHasAlpha(bitmapC.hasAlpha());
                n98.a(bitmapC, bitmapK, matrix);
                break;
            default:
                bitmapK = bitmapC;
                break;
        }
        if (!bitmapC.equals(bitmapK)) {
            nr0Var2.f(bitmapC);
        }
        return bitmapK;
    }
}
