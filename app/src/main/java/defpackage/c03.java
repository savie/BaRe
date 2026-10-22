package defpackage;

import android.content.res.AssetManager;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.OsConstants;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c03 {
    public static final String[] D;
    public static final int[] E;
    public static final byte[] F;
    public static final zz2 G;
    public static final zz2[][] H;
    public static final zz2[] I;
    public static final HashMap[] J;
    public static final HashMap[] K;
    public static final HashSet L;
    public static final HashMap M;
    public static final Charset N;
    public static final byte[] O;
    public static final byte[] P;
    public final FileDescriptor a;
    public final AssetManager.AssetInputStream b;
    public int c;
    public final HashMap[] d;
    public final HashSet e;
    public ByteOrder f;
    public boolean g;
    public int h;
    public int i;
    public int j;
    public int k;
    public static final boolean l = Log.isLoggable("ExifInterface", 3);
    public static final List m = Arrays.asList(1, 6, 3, 8);
    public static final List n = Arrays.asList(2, 7, 4, 5);
    public static final int[] o = {8, 8, 8};
    public static final int[] p = {8};
    public static final byte[] q = {-1, -40, -1};
    public static final byte[] r = {102, 116, 121, 112};
    public static final byte[] s = {109, 105, 102, 49};
    public static final byte[] t = {104, 101, 105, 99};
    public static final byte[] u = {79, 76, 89, 77, 80, 0};
    public static final byte[] v = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    public static final byte[] w = {-119, 80, 78, 71, 13, 10, 26, 10};
    public static final byte[] x = {101, 88, 73, 102};
    public static final byte[] y = {73, 72, 68, 82};
    public static final byte[] z = {73, 69, 78, 68};
    public static final byte[] A = {82, 73, 70, 70};
    public static final byte[] B = {87, 69, 66, 80};
    public static final byte[] C = {69, 88, 73, 70};

    static {
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        D = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        E = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        F = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        zz2[] zz2VarArr = {new zz2("NewSubfileType", 254, 4), new zz2("SubfileType", 255, 4), new zz2("ImageWidth", 256, 3, 4), new zz2("ImageLength", 257, 3, 4), new zz2("BitsPerSample", 258, 3), new zz2("Compression", 259, 3), new zz2("PhotometricInterpretation", 262, 3), new zz2("ImageDescription", 270, 2), new zz2("Make", 271, 2), new zz2("Model", 272, 2), new zz2("StripOffsets", 273, 3, 4), new zz2("Orientation", 274, 3), new zz2("SamplesPerPixel", 277, 3), new zz2("RowsPerStrip", 278, 3, 4), new zz2("StripByteCounts", 279, 3, 4), new zz2("XResolution", 282, 5), new zz2("YResolution", 283, 5), new zz2("PlanarConfiguration", 284, 3), new zz2("ResolutionUnit", 296, 3), new zz2("TransferFunction", 301, 3), new zz2("Software", 305, 2), new zz2("DateTime", 306, 2), new zz2("Artist", 315, 2), new zz2("WhitePoint", 318, 5), new zz2("PrimaryChromaticities", 319, 5), new zz2("SubIFDPointer", 330, 4), new zz2("JPEGInterchangeFormat", 513, 4), new zz2("JPEGInterchangeFormatLength", 514, 4), new zz2("YCbCrCoefficients", 529, 5), new zz2("YCbCrSubSampling", 530, 3), new zz2("YCbCrPositioning", 531, 3), new zz2("ReferenceBlackWhite", 532, 5), new zz2("Copyright", 33432, 2), new zz2("ExifIFDPointer", 34665, 4), new zz2("GPSInfoIFDPointer", 34853, 4), new zz2("SensorTopBorder", 4, 4), new zz2("SensorLeftBorder", 5, 4), new zz2("SensorBottomBorder", 6, 4), new zz2("SensorRightBorder", 7, 4), new zz2("ISO", 23, 3), new zz2("JpgFromRaw", 46, 7), new zz2("Xmp", 700, 1)};
        zz2[] zz2VarArr2 = {new zz2("ExposureTime", 33434, 5), new zz2("FNumber", 33437, 5), new zz2("ExposureProgram", 34850, 3), new zz2("SpectralSensitivity", 34852, 2), new zz2("PhotographicSensitivity", 34855, 3), new zz2("OECF", 34856, 7), new zz2("SensitivityType", 34864, 3), new zz2("StandardOutputSensitivity", 34865, 4), new zz2("RecommendedExposureIndex", 34866, 4), new zz2("ISOSpeed", 34867, 4), new zz2("ISOSpeedLatitudeyyy", 34868, 4), new zz2("ISOSpeedLatitudezzz", 34869, 4), new zz2("ExifVersion", 36864, 2), new zz2("DateTimeOriginal", 36867, 2), new zz2("DateTimeDigitized", 36868, 2), new zz2("OffsetTime", 36880, 2), new zz2("OffsetTimeOriginal", 36881, 2), new zz2("OffsetTimeDigitized", 36882, 2), new zz2("ComponentsConfiguration", 37121, 7), new zz2("CompressedBitsPerPixel", 37122, 5), new zz2("ShutterSpeedValue", 37377, 10), new zz2("ApertureValue", 37378, 5), new zz2("BrightnessValue", 37379, 10), new zz2("ExposureBiasValue", 37380, 10), new zz2("MaxApertureValue", 37381, 5), new zz2("SubjectDistance", 37382, 5), new zz2("MeteringMode", 37383, 3), new zz2("LightSource", 37384, 3), new zz2("Flash", 37385, 3), new zz2("FocalLength", 37386, 5), new zz2("SubjectArea", 37396, 3), new zz2("MakerNote", 37500, 7), new zz2("UserComment", 37510, 7), new zz2("SubSecTime", 37520, 2), new zz2("SubSecTimeOriginal", 37521, 2), new zz2("SubSecTimeDigitized", 37522, 2), new zz2("FlashpixVersion", 40960, 7), new zz2("ColorSpace", 40961, 3), new zz2("PixelXDimension", 40962, 3, 4), new zz2("PixelYDimension", 40963, 3, 4), new zz2("RelatedSoundFile", 40964, 2), new zz2("InteroperabilityIFDPointer", 40965, 4), new zz2("FlashEnergy", 41483, 5), new zz2("SpatialFrequencyResponse", 41484, 7), new zz2("FocalPlaneXResolution", 41486, 5), new zz2("FocalPlaneYResolution", 41487, 5), new zz2("FocalPlaneResolutionUnit", 41488, 3), new zz2("SubjectLocation", 41492, 3), new zz2("ExposureIndex", 41493, 5), new zz2("SensingMethod", 41495, 3), new zz2("FileSource", 41728, 7), new zz2("SceneType", 41729, 7), new zz2("CFAPattern", 41730, 7), new zz2("CustomRendered", 41985, 3), new zz2("ExposureMode", 41986, 3), new zz2("WhiteBalance", 41987, 3), new zz2("DigitalZoomRatio", 41988, 5), new zz2("FocalLengthIn35mmFilm", 41989, 3), new zz2("SceneCaptureType", 41990, 3), new zz2("GainControl", 41991, 3), new zz2("Contrast", 41992, 3), new zz2("Saturation", 41993, 3), new zz2("Sharpness", 41994, 3), new zz2("DeviceSettingDescription", 41995, 7), new zz2("SubjectDistanceRange", 41996, 3), new zz2("ImageUniqueID", 42016, 2), new zz2("CameraOwnerName", 42032, 2), new zz2("BodySerialNumber", 42033, 2), new zz2("LensSpecification", 42034, 5), new zz2("LensMake", 42035, 2), new zz2("LensModel", 42036, 2), new zz2("Gamma", 42240, 5), new zz2("DNGVersion", 50706, 1), new zz2("DefaultCropSize", 50720, 3, 4)};
        zz2[] zz2VarArr3 = {new zz2("GPSVersionID", 0, 1), new zz2("GPSLatitudeRef", 1, 2), new zz2("GPSLatitude", 2, 5, 10), new zz2("GPSLongitudeRef", 3, 2), new zz2("GPSLongitude", 4, 5, 10), new zz2("GPSAltitudeRef", 5, 1), new zz2("GPSAltitude", 6, 5), new zz2("GPSTimeStamp", 7, 5), new zz2("GPSSatellites", 8, 2), new zz2("GPSStatus", 9, 2), new zz2("GPSMeasureMode", 10, 2), new zz2("GPSDOP", 11, 5), new zz2("GPSSpeedRef", 12, 2), new zz2("GPSSpeed", 13, 5), new zz2("GPSTrackRef", 14, 2), new zz2("GPSTrack", 15, 5), new zz2("GPSImgDirectionRef", 16, 2), new zz2("GPSImgDirection", 17, 5), new zz2("GPSMapDatum", 18, 2), new zz2("GPSDestLatitudeRef", 19, 2), new zz2("GPSDestLatitude", 20, 5), new zz2("GPSDestLongitudeRef", 21, 2), new zz2("GPSDestLongitude", 22, 5), new zz2("GPSDestBearingRef", 23, 2), new zz2("GPSDestBearing", 24, 5), new zz2("GPSDestDistanceRef", 25, 2), new zz2("GPSDestDistance", 26, 5), new zz2("GPSProcessingMethod", 27, 7), new zz2("GPSAreaInformation", 28, 7), new zz2("GPSDateStamp", 29, 2), new zz2("GPSDifferential", 30, 3), new zz2("GPSHPositioningError", 31, 5)};
        zz2[] zz2VarArr4 = {new zz2("InteroperabilityIndex", 1, 2)};
        zz2[] zz2VarArr5 = {new zz2("NewSubfileType", 254, 4), new zz2("SubfileType", 255, 4), new zz2("ThumbnailImageWidth", 256, 3, 4), new zz2("ThumbnailImageLength", 257, 3, 4), new zz2("BitsPerSample", 258, 3), new zz2("Compression", 259, 3), new zz2("PhotometricInterpretation", 262, 3), new zz2("ImageDescription", 270, 2), new zz2("Make", 271, 2), new zz2("Model", 272, 2), new zz2("StripOffsets", 273, 3, 4), new zz2("ThumbnailOrientation", 274, 3), new zz2("SamplesPerPixel", 277, 3), new zz2("RowsPerStrip", 278, 3, 4), new zz2("StripByteCounts", 279, 3, 4), new zz2("XResolution", 282, 5), new zz2("YResolution", 283, 5), new zz2("PlanarConfiguration", 284, 3), new zz2("ResolutionUnit", 296, 3), new zz2("TransferFunction", 301, 3), new zz2("Software", 305, 2), new zz2("DateTime", 306, 2), new zz2("Artist", 315, 2), new zz2("WhitePoint", 318, 5), new zz2("PrimaryChromaticities", 319, 5), new zz2("SubIFDPointer", 330, 4), new zz2("JPEGInterchangeFormat", 513, 4), new zz2("JPEGInterchangeFormatLength", 514, 4), new zz2("YCbCrCoefficients", 529, 5), new zz2("YCbCrSubSampling", 530, 3), new zz2("YCbCrPositioning", 531, 3), new zz2("ReferenceBlackWhite", 532, 5), new zz2("Copyright", 33432, 2), new zz2("ExifIFDPointer", 34665, 4), new zz2("GPSInfoIFDPointer", 34853, 4), new zz2("DNGVersion", 50706, 1), new zz2("DefaultCropSize", 50720, 3, 4)};
        G = new zz2("StripOffsets", 273, 3);
        H = new zz2[][]{zz2VarArr, zz2VarArr2, zz2VarArr3, zz2VarArr4, zz2VarArr5, zz2VarArr, new zz2[]{new zz2("ThumbnailImage", 256, 7), new zz2("CameraSettingsIFDPointer", 8224, 4), new zz2("ImageProcessingIFDPointer", 8256, 4)}, new zz2[]{new zz2("PreviewImageStart", 257, 4), new zz2("PreviewImageLength", 258, 4)}, new zz2[]{new zz2("AspectFrame", 4371, 3)}, new zz2[]{new zz2("ColorSpace", 55, 3)}};
        I = new zz2[]{new zz2("SubIFDPointer", 330, 4), new zz2("ExifIFDPointer", 34665, 4), new zz2("GPSInfoIFDPointer", 34853, 4), new zz2("InteroperabilityIFDPointer", 40965, 4), new zz2("CameraSettingsIFDPointer", 8224, 1), new zz2("ImageProcessingIFDPointer", 8256, 1)};
        J = new HashMap[10];
        K = new HashMap[10];
        L = new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        M = new HashMap();
        Charset charsetForName = Charset.forName("US-ASCII");
        N = charsetForName;
        O = "Exif\u0000\u0000".getBytes(charsetForName);
        P = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            zz2[][] zz2VarArr6 = H;
            if (i >= zz2VarArr6.length) {
                HashMap map = M;
                zz2[] zz2VarArr7 = I;
                map.put(Integer.valueOf(zz2VarArr7[0].a), 5);
                map.put(Integer.valueOf(zz2VarArr7[1].a), 1);
                map.put(Integer.valueOf(zz2VarArr7[2].a), 2);
                map.put(Integer.valueOf(zz2VarArr7[3].a), 3);
                map.put(Integer.valueOf(zz2VarArr7[4].a), 7);
                map.put(Integer.valueOf(zz2VarArr7[5].a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            J[i] = new HashMap();
            K[i] = new HashMap();
            for (zz2 zz2Var : zz2VarArr6[i]) {
                J[i].put(Integer.valueOf(zz2Var.a), zz2Var);
                K[i].put(zz2Var.b, zz2Var);
            }
            i++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00d8 A[Catch: all -> 0x005e, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x005e, blocks: (B:14:0x004f, B:16:0x0052, B:23:0x0067, B:29:0x0084, B:31:0x008f, B:39:0x00a5, B:34:0x0096, B:37:0x009e, B:38:0x00a2, B:40:0x00af, B:42:0x00b8, B:44:0x00be, B:46:0x00c4, B:48:0x00ca, B:53:0x00d8), top: B:65:0x004f }] */
    /* JADX WARN: Code duplicated, block: B:68:? A[RETURN, SYNTHETIC] */
    public c03(InputStream inputStream) throws IOException {
        zz2[][] zz2VarArr = H;
        this.d = new HashMap[zz2VarArr.length];
        this.e = new HashSet(zz2VarArr.length);
        this.f = ByteOrder.BIG_ENDIAN;
        boolean z2 = inputStream instanceof AssetManager.AssetInputStream;
        boolean z3 = l;
        if (z2) {
            this.b = (AssetManager.AssetInputStream) inputStream;
            this.a = null;
        } else if (inputStream instanceof FileInputStream) {
            FileInputStream fileInputStream = (FileInputStream) inputStream;
            try {
                e03.c(fileInputStream.getFD(), 0L, OsConstants.SEEK_CUR);
                this.b = null;
                this.a = fileInputStream.getFD();
            } catch (Exception unused) {
                if (z3) {
                    Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                }
                this.b = null;
                this.a = null;
            }
        } else {
            this.b = null;
            this.a = null;
        }
        for (int i = 0; i < zz2VarArr.length; i++) {
            try {
                try {
                    this.d[i] = new HashMap();
                } catch (Throwable th) {
                    a();
                    if (z3) {
                        p();
                    }
                    throw th;
                }
            } catch (IOException e) {
                e = e;
                if (z3) {
                    Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                }
                a();
                if (!z3) {
                    return;
                }
            } catch (UnsupportedOperationException e2) {
                e = e2;
                if (z3) {
                    Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                }
                a();
                if (!z3) {
                    return;
                }
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
        int iF = f(bufferedInputStream);
        this.c = iF;
        if (iF == 4 || iF == 9 || iF == 13 || iF == 14) {
            xz2 xz2Var = new xz2(bufferedInputStream);
            int i2 = this.c;
            if (i2 == 4) {
                e(xz2Var, 0, 0);
            } else if (i2 == 13) {
                h(xz2Var);
            } else if (i2 == 9) {
                i(xz2Var);
            } else if (i2 == 14) {
                l(xz2Var);
            }
        } else {
            b03 b03Var = new b03(bufferedInputStream);
            int i3 = this.c;
            if (i3 == 12) {
                d(b03Var);
            } else if (i3 == 7) {
                g(b03Var);
            } else if (i3 == 10) {
                k(b03Var);
            } else {
                j(b03Var);
            }
            b03Var.b(this.h);
            u(b03Var);
        }
        a();
        if (!z3) {
            return;
        }
        p();
    }

    public static ByteOrder q(xz2 xz2Var) throws IOException {
        short s2 = xz2Var.readShort();
        boolean z2 = l;
        if (s2 == 18761) {
            if (z2) {
                Log.d("ExifInterface", "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s2 != 19789) {
            c6.k(Integer.toHexString(s2), "Invalid byte order: ");
            return null;
        }
        if (z2) {
            Log.d("ExifInterface", "readExifSegment: Byte Align MM");
        }
        return ByteOrder.BIG_ENDIAN;
    }

    public final void a() {
        String strB = b("DateTimeOriginal");
        HashMap[] mapArr = this.d;
        if (strB != null && b("DateTime") == null) {
            HashMap map = mapArr[0];
            byte[] bytes = strB.concat(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR).getBytes(N);
            map.put("DateTime", new yz2(bytes, 2, bytes.length));
        }
        if (b("ImageWidth") == null) {
            mapArr[0].put("ImageWidth", yz2.a(0L, this.f));
        }
        if (b("ImageLength") == null) {
            mapArr[0].put("ImageLength", yz2.a(0L, this.f));
        }
        if (b("Orientation") == null) {
            mapArr[0].put("Orientation", yz2.a(0L, this.f));
        }
        if (b("LightSource") == null) {
            mapArr[1].put("LightSource", yz2.a(0L, this.f));
        }
    }

    public final String b(String str) {
        yz2 yz2VarC = c(str);
        if (yz2VarC != null) {
            int i = yz2VarC.a;
            if (!L.contains(str)) {
                return yz2VarC.f(this.f);
            }
            if (str.equals("GPSTimeStamp")) {
                if (i != 5 && i != 10) {
                    Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + i);
                    return null;
                }
                a03[] a03VarArr = (a03[]) yz2VarC.g(this.f);
                if (a03VarArr == null || a03VarArr.length != 3) {
                    Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(a03VarArr));
                    return null;
                }
                a03 a03Var = a03VarArr[0];
                Integer numValueOf = Integer.valueOf((int) (a03Var.a / a03Var.b));
                a03 a03Var2 = a03VarArr[1];
                Integer numValueOf2 = Integer.valueOf((int) (a03Var2.a / a03Var2.b));
                a03 a03Var3 = a03VarArr[2];
                return String.format("%02d:%02d:%02d", numValueOf, numValueOf2, Integer.valueOf((int) (a03Var3.a / a03Var3.b)));
            }
            try {
                return Double.toString(yz2VarC.d(this.f));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public final yz2 c(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            if (l) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = "PhotographicSensitivity";
        }
        for (int i = 0; i < H.length; i++) {
            yz2 yz2Var = (yz2) this.d[i].get(str);
            if (yz2Var != null) {
                return yz2Var;
            }
        }
        return null;
    }

    public final void d(b03 b03Var) throws IOException {
        String strExtractMetadata;
        String strExtractMetadata2;
        String strExtractMetadata3;
        int i;
        if (Build.VERSION.SDK_INT < 28) {
            g84.j("Reading EXIF from HEIF files is supported from SDK 28 and above");
            return;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                f03.a(mediaMetadataRetriever, new wz2(b03Var));
                String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(33);
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(34);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(26);
                String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(strExtractMetadata6)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(29);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(30);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(strExtractMetadata7)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    strExtractMetadata = null;
                    strExtractMetadata2 = null;
                    strExtractMetadata3 = null;
                }
                HashMap[] mapArr = this.d;
                if (strExtractMetadata != null) {
                    mapArr[0].put("ImageWidth", yz2.c(Integer.parseInt(strExtractMetadata), this.f));
                }
                if (strExtractMetadata2 != null) {
                    mapArr[0].put("ImageLength", yz2.c(Integer.parseInt(strExtractMetadata2), this.f));
                }
                if (strExtractMetadata3 != null) {
                    int i2 = Integer.parseInt(strExtractMetadata3);
                    if (i2 == 90) {
                        i = 6;
                    } else if (i2 != 180) {
                        i = i2 != 270 ? 1 : 8;
                    } else {
                        i = 3;
                    }
                    mapArr[0].put("Orientation", yz2.c(i, this.f));
                }
                if (strExtractMetadata4 != null && strExtractMetadata5 != null) {
                    int i3 = Integer.parseInt(strExtractMetadata4);
                    int i4 = Integer.parseInt(strExtractMetadata5);
                    if (i4 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    b03Var.b(i3);
                    byte[] bArr = new byte[6];
                    if (b03Var.read(bArr) != 6) {
                        throw new IOException("Can't read identifier");
                    }
                    int i5 = i3 + 6;
                    int i6 = i4 - 6;
                    if (!Arrays.equals(bArr, O)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i6];
                    if (b03Var.read(bArr2) != i6) {
                        throw new IOException("Can't read exif");
                    }
                    this.h = i5;
                    r(bArr2, 0);
                }
                if (l) {
                    Log.d("ExifInterface", "Heif meta: " + strExtractMetadata + "x" + strExtractMetadata2 + ", rotation " + strExtractMetadata3);
                }
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.");
            }
        } catch (Throwable th) {
            mediaMetadataRetriever.release();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0147 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x0188 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00ac A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:36:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:71:0x013d  */
    /* JADX WARN: Code duplicated, block: B:74:0x0144 A[LOOP:2: B:69:0x013a->B:74:0x0144, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:77:0x0156  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    public final void e(defpackage.xz2 r23, int r24, int r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c03.e(xz2, int, int):void");
    }

    /* JADX WARN: Code duplicated, block: B:109:0x013f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:111:0x0142  */
    /* JADX WARN: Code duplicated, block: B:114:0x0149  */
    /* JADX WARN: Code duplicated, block: B:119:0x0156  */
    /* JADX WARN: Code duplicated, block: B:122:0x015d A[LOOP:3: B:117:0x0151->B:122:0x015d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:126:0x0167  */
    /* JADX WARN: Code duplicated, block: B:129:0x0171 A[LOOP:4: B:124:0x0162->B:129:0x0171, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:132:0x0177 A[LOOP:2: B:112:0x0144->B:132:0x0177, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:136:0x017f  */
    /* JADX WARN: Code duplicated, block: B:152:0x010e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x017a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x014f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:0x0170 A[EDGE_INSN: B:166:0x0170->B:128:0x0170 BREAK  A[LOOP:3: B:117:0x0151->B:122:0x015d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:0x0174 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x0170 A[EDGE_INSN: B:168:0x0170->B:128:0x0170 BREAK  A[LOOP:3: B:117:0x0151->B:122:0x015d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00ca A[Catch: all -> 0x0065, TRY_LEAVE, TryCatch #1 {all -> 0x0065, blocks: (B:14:0x0039, B:19:0x005a, B:30:0x0076, B:33:0x007c, B:34:0x0082, B:38:0x008c, B:44:0x009b, B:47:0x00a5, B:62:0x00c6, B:64:0x00ca), top: B:145:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:89:0x010c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:96:0x0124  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r7v0 */
    public final int f(BufferedInputStream bufferedInputStream) throws Throwable {
        int i;
        xz2 xz2Var;
        xz2 xz2Var2;
        int i2;
        int i3;
        int i4;
        byte[] bArr;
        int i5;
        byte[] bArr2;
        int i6;
        byte[] bArr3;
        xz2 xz2Var3;
        short s2;
        long j;
        bufferedInputStream.mark(5000);
        byte[] bArr4 = new byte[5000];
        bufferedInputStream.read(bArr4);
        bufferedInputStream.reset();
        int i7 = 0;
        while (true) {
            byte[] bArr5 = q;
            if (i7 >= bArr5.length) {
                return 4;
            }
            if (bArr4[i7] != bArr5[i7]) {
                byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
                for (int i8 = 0; i8 < bytes.length; i8++) {
                    byte b = bArr4[i8];
                    ?? r7 = bytes[i8];
                    if (b != r7) {
                        ?? r4 = 0;
                        xz2 xz2Var4 = null;
                        xz2 xz2Var5 = null;
                        xz2 xz2Var6 = null;
                        try {
                            try {
                                try {
                                    try {
                                        xz2Var = new xz2(bArr4);
                                        try {
                                            long j2 = xz2Var.readInt();
                                            byte[] bArr6 = new byte[4];
                                            xz2Var.read(bArr6);
                                            if (Arrays.equals(bArr6, r)) {
                                                if (j2 == 1) {
                                                    j2 = xz2Var.readLong();
                                                    j = 16;
                                                    if (j2 < 16) {
                                                    }
                                                } else {
                                                    j = 8;
                                                }
                                                if (j2 > 5000) {
                                                    j2 = 5000;
                                                }
                                                long j3 = j2 - j;
                                                if (j3 >= 8) {
                                                    byte[] bArr7 = new byte[4];
                                                    long j4 = 0;
                                                    boolean z2 = false;
                                                    boolean z3 = false;
                                                    while (true) {
                                                        if (j4 >= j3 / 4) {
                                                            i = 0;
                                                            break;
                                                        }
                                                        i = 0;
                                                        try {
                                                            if (xz2Var.read(bArr7) != 4) {
                                                                break;
                                                            }
                                                            if (j4 != 1) {
                                                                if (Arrays.equals(bArr7, s)) {
                                                                    z2 = true;
                                                                } else if (Arrays.equals(bArr7, t)) {
                                                                    z3 = true;
                                                                }
                                                                if (z2 && z3) {
                                                                    xz2Var.close();
                                                                    return 12;
                                                                }
                                                            }
                                                            j4++;
                                                        } catch (Exception e) {
                                                            e = e;
                                                            if (l) {
                                                                Log.d("ExifInterface", "Exception parsing HEIF file type box.", e);
                                                            }
                                                            if (xz2Var != null) {
                                                                break;
                                                            }
                                                            xz2Var2 = new xz2(bArr4);
                                                            ByteOrder byteOrderQ = q(xz2Var2);
                                                            this.f = byteOrderQ;
                                                            xz2Var2.b = byteOrderQ;
                                                            s2 = xz2Var2.readShort();
                                                            if (s2 != 20306) {
                                                                i2 = 1;
                                                            } else {
                                                                i2 = 1;
                                                            }
                                                            xz2Var2.close();
                                                            if (i2 != 0) {
                                                                return 7;
                                                            }
                                                            try {
                                                                xz2Var3 = new xz2(bArr4);
                                                                try {
                                                                    ByteOrder byteOrderQ2 = q(xz2Var3);
                                                                    this.f = byteOrderQ2;
                                                                    xz2Var3.b = byteOrderQ2;
                                                                    i3 = xz2Var3.readShort() != 85 ? i : 1;
                                                                    xz2Var3.close();
                                                                } catch (Exception unused) {
                                                                    xz2Var4 = xz2Var3;
                                                                    if (xz2Var4 != null) {
                                                                        xz2Var4.close();
                                                                    }
                                                                    i3 = i;
                                                                } catch (Throwable th) {
                                                                    th = th;
                                                                    xz2Var5 = xz2Var3;
                                                                    if (xz2Var5 != null) {
                                                                        xz2Var5.close();
                                                                    }
                                                                    throw th;
                                                                }
                                                            } catch (Exception unused2) {
                                                            } catch (Throwable th2) {
                                                                th = th2;
                                                            }
                                                            if (i3 != 0) {
                                                                return 10;
                                                            }
                                                            i4 = i;
                                                            while (true) {
                                                                bArr = w;
                                                                if (i4 < bArr.length) {
                                                                    return 13;
                                                                }
                                                                if (bArr4[i4] != bArr[i4]) {
                                                                    i5 = i;
                                                                    while (true) {
                                                                        bArr2 = A;
                                                                        if (i5 < bArr2.length) {
                                                                            i6 = i;
                                                                            while (true) {
                                                                                bArr3 = B;
                                                                                if (i6 < bArr3.length) {
                                                                                    return 14;
                                                                                }
                                                                                if (bArr4[bArr2.length + i6 + 4] != bArr3[i6]) {
                                                                                    break;
                                                                                }
                                                                                i6++;
                                                                            }
                                                                        } else {
                                                                            if (bArr4[i5] != bArr2[i5]) {
                                                                                break;
                                                                            }
                                                                            i5++;
                                                                        }
                                                                    }
                                                                    return i;
                                                                }
                                                                i4++;
                                                            }
                                                        }
                                                    }
                                                    xz2Var.close();
                                                    xz2Var2 = new xz2(bArr4);
                                                    ByteOrder byteOrderQ3 = q(xz2Var2);
                                                    this.f = byteOrderQ3;
                                                    xz2Var2.b = byteOrderQ3;
                                                    s2 = xz2Var2.readShort();
                                                    if (s2 != 20306 || s2 == 21330) {
                                                        i2 = 1;
                                                    } else {
                                                        i2 = i;
                                                    }
                                                    xz2Var2.close();
                                                    if (i2 != 0) {
                                                        return 7;
                                                    }
                                                    xz2Var3 = new xz2(bArr4);
                                                    ByteOrder byteOrderQ4 = q(xz2Var3);
                                                    this.f = byteOrderQ4;
                                                    xz2Var3.b = byteOrderQ4;
                                                    if (xz2Var3.readShort() != 85) {
                                                    }
                                                    xz2Var3.close();
                                                    if (i3 != 0) {
                                                        return 10;
                                                    }
                                                    i4 = i;
                                                    while (true) {
                                                        bArr = w;
                                                        if (i4 < bArr.length) {
                                                            return 13;
                                                        }
                                                        if (bArr4[i4] != bArr[i4]) {
                                                            i5 = i;
                                                            while (true) {
                                                                bArr2 = A;
                                                                if (i5 < bArr2.length) {
                                                                    i6 = i;
                                                                    while (true) {
                                                                        bArr3 = B;
                                                                        if (i6 < bArr3.length) {
                                                                            return 14;
                                                                        }
                                                                        if (bArr4[bArr2.length + i6 + 4] != bArr3[i6]) {
                                                                            break;
                                                                            break;
                                                                        }
                                                                        i6++;
                                                                    }
                                                                } else {
                                                                    if (bArr4[i5] != bArr2[i5]) {
                                                                        break;
                                                                        break;
                                                                    }
                                                                    i5++;
                                                                }
                                                            }
                                                            return i;
                                                        }
                                                        i4++;
                                                    }
                                                }
                                                if (l) {
                                                    Log.d("ExifInterface", "Exception parsing HEIF file type box.", e);
                                                }
                                                if (xz2Var != null) {
                                                    xz2Var.close();
                                                }
                                                xz2Var2 = new xz2(bArr4);
                                                ByteOrder byteOrderQ5 = q(xz2Var2);
                                                this.f = byteOrderQ5;
                                                xz2Var2.b = byteOrderQ5;
                                                s2 = xz2Var2.readShort();
                                                if (s2 != 20306) {
                                                    i2 = 1;
                                                } else {
                                                    i2 = 1;
                                                }
                                                xz2Var2.close();
                                                if (i2 != 0) {
                                                    return 7;
                                                }
                                                xz2Var3 = new xz2(bArr4);
                                                ByteOrder byteOrderQ6 = q(xz2Var3);
                                                this.f = byteOrderQ6;
                                                xz2Var3.b = byteOrderQ6;
                                                if (xz2Var3.readShort() != 85) {
                                                }
                                                xz2Var3.close();
                                                if (i3 != 0) {
                                                    return 10;
                                                }
                                                i4 = i;
                                                while (true) {
                                                    bArr = w;
                                                    if (i4 < bArr.length) {
                                                        return 13;
                                                    }
                                                    if (bArr4[i4] != bArr[i4]) {
                                                        i5 = i;
                                                        while (true) {
                                                            bArr2 = A;
                                                            if (i5 < bArr2.length) {
                                                                i6 = i;
                                                                while (true) {
                                                                    bArr3 = B;
                                                                    if (i6 < bArr3.length) {
                                                                        return 14;
                                                                    }
                                                                    if (bArr4[bArr2.length + i6 + 4] != bArr3[i6]) {
                                                                        break;
                                                                        break;
                                                                    }
                                                                    i6++;
                                                                }
                                                            } else {
                                                                if (bArr4[i5] != bArr2[i5]) {
                                                                    break;
                                                                    break;
                                                                }
                                                                i5++;
                                                            }
                                                        }
                                                        return i;
                                                    }
                                                    i4++;
                                                }
                                            }
                                            xz2Var.close();
                                            i = 0;
                                        } catch (Exception e2) {
                                            e = e2;
                                            i = 0;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        r4 = r7;
                                        if (r4 != 0) {
                                            r4.close();
                                        }
                                        throw th;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    i = 0;
                                    xz2Var = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                    if (r4 != 0) {
                                        r4.close();
                                    }
                                    throw th;
                                }
                                ByteOrder byteOrderQ7 = q(xz2Var2);
                                this.f = byteOrderQ7;
                                xz2Var2.b = byteOrderQ7;
                                s2 = xz2Var2.readShort();
                                if (s2 != 20306) {
                                    i2 = 1;
                                } else {
                                    i2 = 1;
                                }
                                xz2Var2.close();
                            } catch (Exception unused3) {
                                if (xz2Var2 != null) {
                                    xz2Var2.close();
                                }
                                i2 = i;
                            } catch (Throwable th5) {
                                th = th5;
                                xz2Var6 = xz2Var2;
                                if (xz2Var6 != null) {
                                    xz2Var6.close();
                                }
                                throw th;
                            }
                            xz2Var2 = new xz2(bArr4);
                        } catch (Exception unused4) {
                            xz2Var2 = null;
                        } catch (Throwable th6) {
                            th = th6;
                        }
                        if (i2 != 0) {
                            return 7;
                        }
                        xz2Var3 = new xz2(bArr4);
                        ByteOrder byteOrderQ8 = q(xz2Var3);
                        this.f = byteOrderQ8;
                        xz2Var3.b = byteOrderQ8;
                        if (xz2Var3.readShort() != 85) {
                        }
                        xz2Var3.close();
                        if (i3 != 0) {
                            return 10;
                        }
                        i4 = i;
                        while (true) {
                            bArr = w;
                            if (i4 < bArr.length) {
                                return 13;
                            }
                            if (bArr4[i4] != bArr[i4]) {
                                i5 = i;
                                while (true) {
                                    bArr2 = A;
                                    if (i5 < bArr2.length) {
                                        i6 = i;
                                        while (true) {
                                            bArr3 = B;
                                            if (i6 < bArr3.length) {
                                                return 14;
                                            }
                                            if (bArr4[bArr2.length + i6 + 4] != bArr3[i6]) {
                                                break;
                                                break;
                                            }
                                            i6++;
                                        }
                                    } else {
                                        if (bArr4[i5] != bArr2[i5]) {
                                            break;
                                            break;
                                        }
                                        i5++;
                                    }
                                }
                                return i;
                            }
                            i4++;
                        }
                    }
                }
                return 9;
            }
            i7++;
        }
    }

    public final void g(b03 b03Var) throws Throwable {
        int i;
        int i2;
        j(b03Var);
        HashMap[] mapArr = this.d;
        yz2 yz2Var = (yz2) mapArr[1].get("MakerNote");
        if (yz2Var != null) {
            b03 b03Var2 = new b03(yz2Var.d);
            b03Var2.b = this.f;
            byte[] bArr = u;
            byte[] bArr2 = new byte[bArr.length];
            b03Var2.readFully(bArr2);
            b03Var2.b(0L);
            byte[] bArr3 = v;
            byte[] bArr4 = new byte[bArr3.length];
            b03Var2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                b03Var2.b(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                b03Var2.b(12L);
            }
            s(b03Var2, 6);
            yz2 yz2Var2 = (yz2) mapArr[7].get("PreviewImageStart");
            yz2 yz2Var3 = (yz2) mapArr[7].get("PreviewImageLength");
            if (yz2Var2 != null && yz2Var3 != null) {
                mapArr[5].put("JPEGInterchangeFormat", yz2Var2);
                mapArr[5].put("JPEGInterchangeFormatLength", yz2Var3);
            }
            yz2 yz2Var4 = (yz2) mapArr[8].get("AspectFrame");
            if (yz2Var4 != null) {
                int[] iArr = (int[]) yz2Var4.g(this.f);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                int i3 = iArr[2];
                int i4 = iArr[0];
                if (i3 <= i4 || (i = iArr[3]) <= (i2 = iArr[1])) {
                    return;
                }
                int i5 = (i3 - i4) + 1;
                int i6 = (i - i2) + 1;
                if (i5 < i6) {
                    int i7 = i5 + i6;
                    i6 = i7 - i6;
                    i5 = i7 - i6;
                }
                yz2 yz2VarC = yz2.c(i5, this.f);
                yz2 yz2VarC2 = yz2.c(i6, this.f);
                mapArr[0].put("ImageWidth", yz2VarC);
                mapArr[0].put("ImageLength", yz2VarC2);
            }
        }
    }

    public final void h(xz2 xz2Var) throws Throwable {
        if (l) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + xz2Var);
        }
        xz2Var.b = ByteOrder.BIG_ENDIAN;
        byte[] bArr = w;
        xz2Var.a(bArr.length);
        int length = bArr.length;
        while (true) {
            try {
                int i = xz2Var.readInt();
                byte[] bArr2 = new byte[4];
                if (xz2Var.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i2 = length + 8;
                if (i2 == 16 && !Arrays.equals(bArr2, y)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, z)) {
                    return;
                }
                if (Arrays.equals(bArr2, x)) {
                    byte[] bArr3 = new byte[i];
                    if (xz2Var.read(bArr3) != i) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + jm1.f(bArr2));
                    }
                    int i3 = xz2Var.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == i3) {
                        this.h = i2;
                        r(bArr3, 0);
                        x();
                        u(new xz2(bArr3));
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i3 + ", calculated CRC value: " + crc32.getValue());
                }
                int i4 = i + 4;
                xz2Var.a(i4);
                length = i2 + i4;
            } catch (EOFException unused) {
                y5.m("Encountered corrupt PNG file.");
                return;
            }
        }
    }

    public final void i(xz2 xz2Var) throws Throwable {
        boolean z2 = l;
        if (z2) {
            Log.d("ExifInterface", "getRafAttributes starting with: " + xz2Var);
        }
        xz2Var.a(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        xz2Var.read(bArr);
        xz2Var.read(bArr2);
        xz2Var.read(bArr3);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        int i3 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i2];
        xz2Var.a(i - xz2Var.c);
        xz2Var.read(bArr4);
        e(new xz2(bArr4), i, 5);
        xz2Var.a(i3 - xz2Var.c);
        xz2Var.b = ByteOrder.BIG_ENDIAN;
        int i4 = xz2Var.readInt();
        if (z2) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + i4);
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int unsignedShort = xz2Var.readUnsignedShort();
            int unsignedShort2 = xz2Var.readUnsignedShort();
            if (unsignedShort == G.a) {
                short s2 = xz2Var.readShort();
                short s3 = xz2Var.readShort();
                yz2 yz2VarC = yz2.c(s2, this.f);
                yz2 yz2VarC2 = yz2.c(s3, this.f);
                HashMap[] mapArr = this.d;
                mapArr[0].put("ImageLength", yz2VarC);
                mapArr[0].put("ImageWidth", yz2VarC2);
                if (z2) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) s2) + ", width: " + ((int) s3));
                    return;
                }
                return;
            }
            xz2Var.a(unsignedShort2);
        }
    }

    public final void j(b03 b03Var) throws Throwable {
        o(b03Var);
        s(b03Var, 0);
        w(b03Var, 0);
        w(b03Var, 5);
        w(b03Var, 4);
        x();
        if (this.c == 8) {
            HashMap[] mapArr = this.d;
            yz2 yz2Var = (yz2) mapArr[1].get("MakerNote");
            if (yz2Var != null) {
                b03 b03Var2 = new b03(yz2Var.d);
                b03Var2.b = this.f;
                b03Var2.a(6);
                s(b03Var2, 9);
                yz2 yz2Var2 = (yz2) mapArr[9].get("ColorSpace");
                if (yz2Var2 != null) {
                    mapArr[1].put("ColorSpace", yz2Var2);
                }
            }
        }
    }

    public final void k(b03 b03Var) throws Throwable {
        if (l) {
            Log.d("ExifInterface", "getRw2Attributes starting with: " + b03Var);
        }
        j(b03Var);
        HashMap[] mapArr = this.d;
        yz2 yz2Var = (yz2) mapArr[0].get("JpgFromRaw");
        if (yz2Var != null) {
            e(new xz2(yz2Var.d), (int) yz2Var.c, 5);
        }
        yz2 yz2Var2 = (yz2) mapArr[0].get("ISO");
        yz2 yz2Var3 = (yz2) mapArr[1].get("PhotographicSensitivity");
        if (yz2Var2 == null || yz2Var3 != null) {
            return;
        }
        mapArr[1].put("PhotographicSensitivity", yz2Var2);
    }

    public final void l(xz2 xz2Var) throws Throwable {
        if (l) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + xz2Var);
        }
        xz2Var.b = ByteOrder.LITTLE_ENDIAN;
        xz2Var.a(A.length);
        int i = xz2Var.readInt() + 8;
        byte[] bArr = B;
        xz2Var.a(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                if (xz2Var.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int i2 = xz2Var.readInt();
                int i3 = length + 8;
                if (Arrays.equals(C, bArr2)) {
                    byte[] bArr3 = new byte[i2];
                    if (xz2Var.read(bArr3) == i2) {
                        this.h = i3;
                        r(bArr3, 0);
                        u(new xz2(bArr3));
                        return;
                    } else {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + jm1.f(bArr2));
                    }
                }
                if (i2 % 2 == 1) {
                    i2++;
                }
                length = i3 + i2;
                if (length == i) {
                    return;
                }
                if (length > i) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                xz2Var.a(i2);
            } catch (EOFException unused) {
                y5.m("Encountered corrupt WebP file.");
                return;
            }
        }
    }

    public final void m(xz2 xz2Var, HashMap map) throws Throwable {
        yz2 yz2Var = (yz2) map.get("JPEGInterchangeFormat");
        yz2 yz2Var2 = (yz2) map.get("JPEGInterchangeFormatLength");
        if (yz2Var == null || yz2Var2 == null) {
            return;
        }
        int iE = yz2Var.e(this.f);
        int iE2 = yz2Var2.e(this.f);
        if (this.c == 7) {
            iE += this.i;
        }
        if (iE > 0 && iE2 > 0 && this.b == null && this.a == null) {
            xz2Var.skip(iE);
            xz2Var.read(new byte[iE2]);
        }
        if (l) {
            Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + iE + ", length: " + iE2);
        }
    }

    public final boolean n(HashMap map) {
        yz2 yz2Var = (yz2) map.get("ImageLength");
        yz2 yz2Var2 = (yz2) map.get("ImageWidth");
        if (yz2Var == null || yz2Var2 == null) {
            return false;
        }
        return yz2Var.e(this.f) <= 512 && yz2Var2.e(this.f) <= 512;
    }

    public final void o(b03 b03Var) throws IOException {
        ByteOrder byteOrderQ = q(b03Var);
        this.f = byteOrderQ;
        b03Var.b = byteOrderQ;
        int unsignedShort = b03Var.readUnsignedShort();
        int i = this.c;
        if (i != 7 && i != 10 && unsignedShort != 42) {
            c6.k(Integer.toHexString(unsignedShort), "Invalid start code: ");
            return;
        }
        int i2 = b03Var.readInt();
        if (i2 < 8) {
            y5.m(fz5.j(i2, "Invalid first Ifd offset: "));
            return;
        }
        int i3 = i2 - 8;
        if (i3 > 0) {
            b03Var.a(i3);
        }
    }

    public final void p() {
        int i = 0;
        while (true) {
            HashMap[] mapArr = this.d;
            if (i >= mapArr.length) {
                return;
            }
            StringBuilder sbR = dj7.r(i, "The size of tag group[", "]: ");
            sbR.append(mapArr[i].size());
            Log.d("ExifInterface", sbR.toString());
            for (Map.Entry entry : mapArr[i].entrySet()) {
                yz2 yz2Var = (yz2) entry.getValue();
                Log.d("ExifInterface", "tagName: " + ((String) entry.getKey()) + ", tagType: " + yz2Var.toString() + ", tagValue: '" + yz2Var.f(this.f) + "'");
            }
            i++;
        }
    }

    public final void r(byte[] bArr, int i) throws IOException {
        b03 b03Var = new b03(bArr);
        o(b03Var);
        s(b03Var, i);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x020f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0213  */
    /* JADX WARN: Code duplicated, block: B:108:0x0220  */
    /* JADX WARN: Code duplicated, block: B:109:0x0225  */
    /* JADX WARN: Code duplicated, block: B:110:0x0231  */
    /* JADX WARN: Code duplicated, block: B:112:0x0238  */
    /* JADX WARN: Code duplicated, block: B:115:0x024f  */
    /* JADX WARN: Code duplicated, block: B:117:0x025a  */
    /* JADX WARN: Code duplicated, block: B:119:0x0267 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x0269  */
    /* JADX WARN: Code duplicated, block: B:121:0x0288 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:122:0x028a  */
    /* JADX WARN: Code duplicated, block: B:124:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:126:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:129:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:131:0x02df  */
    /* JADX WARN: Code duplicated, block: B:140:0x0309  */
    /* JADX WARN: Code duplicated, block: B:167:0x030c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x014b  */
    /* JADX WARN: Code duplicated, block: B:72:0x0152  */
    /* JADX WARN: Code duplicated, block: B:74:0x015a  */
    /* JADX WARN: Code duplicated, block: B:76:0x0160  */
    /* JADX WARN: Code duplicated, block: B:77:0x0174  */
    /* JADX WARN: Code duplicated, block: B:80:0x017b  */
    /* JADX WARN: Code duplicated, block: B:82:0x0185  */
    /* JADX WARN: Code duplicated, block: B:83:0x0187  */
    /* JADX WARN: Code duplicated, block: B:84:0x018c  */
    /* JADX WARN: Code duplicated, block: B:86:0x018f  */
    /* JADX WARN: Code duplicated, block: B:90:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:93:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:95:0x0203  */
    /* JADX WARN: Code duplicated, block: B:97:0x0208  */
    /* JADX WARN: Code duplicated, block: B:99:0x020b  */
    /* JADX WARN: Instruction removed from duplicated block: B:120:0x0269, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:122:0x028a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:76:0x0160, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:93:0x01e8, please report this as an issue */
    public final void s(b03 b03Var, int i) throws IOException {
        HashMap[] mapArr;
        long j;
        long j2;
        boolean z2;
        int i2;
        long j3;
        Integer num;
        long j4;
        String str;
        int i3;
        int unsignedShort;
        long j5;
        int i4;
        Integer numValueOf = Integer.valueOf(b03Var.c);
        HashSet hashSet = this.e;
        hashSet.add(numValueOf);
        short s2 = b03Var.readShort();
        boolean z3 = l;
        if (z3) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + ((int) s2));
        }
        if (s2 <= 0) {
            return;
        }
        short s3 = 0;
        while (true) {
            mapArr = this.d;
            if (s3 >= s2) {
                break;
            }
            int unsignedShort2 = b03Var.readUnsignedShort();
            int unsignedShort3 = b03Var.readUnsignedShort();
            int i5 = b03Var.readInt();
            long j6 = ((long) b03Var.c) + 4;
            zz2 zz2Var = (zz2) J[i].get(Integer.valueOf(unsignedShort2));
            if (z3) {
                Log.d("ExifInterface", String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", Integer.valueOf(i), Integer.valueOf(unsignedShort2), zz2Var != null ? zz2Var.b : null, Integer.valueOf(unsignedShort3), Integer.valueOf(i5)));
            }
            if (zz2Var != null) {
                if (unsignedShort3 > 0) {
                    int[] iArr = E;
                    if (unsignedShort3 < iArr.length) {
                        int i6 = zz2Var.c;
                        if (i6 == 7 || unsignedShort3 == 7 || i6 == unsignedShort3 || (i2 = zz2Var.d) == unsignedShort3 || (((i6 == 4 || i2 == 4) && unsignedShort3 == 3) || (((i6 == 9 || i2 == 9) && unsignedShort3 == 8) || ((i6 == 12 || i2 == 12) && unsignedShort3 == 11)))) {
                            if (unsignedShort3 == 7) {
                                unsignedShort3 = i6;
                            }
                            j = j6;
                            j2 = ((long) i5) * ((long) iArr[unsignedShort3]);
                            if (j2 < 0 || j2 > 2147483647L) {
                                if (z3 != 0) {
                                    Log.d("ExifInterface", "Skip the tag entry since the number of components is invalid: " + i5);
                                }
                                z2 = false;
                            } else {
                                z2 = true;
                            }
                        } else if (z3 != 0) {
                            Log.d("ExifInterface", "Skip the tag entry since data format (" + D[unsignedShort3] + ") is unexpected for tag: " + zz2Var.b);
                        }
                    }
                    if (z2) {
                        j3 = j;
                        if (j2 > 4) {
                            i4 = b03Var.readInt();
                            if (z3 != 0) {
                                Log.d("ExifInterface", "seek to data offset: " + i4);
                            }
                            if (this.c == 7) {
                                if ("MakerNote".equals(zz2Var.b)) {
                                    this.i = i4;
                                } else if (i != 6 && "ThumbnailImage".equals(zz2Var.b)) {
                                    this.j = i4;
                                    this.k = i5;
                                    yz2 yz2VarC = yz2.c(6, this.f);
                                    yz2 yz2VarA = yz2.a(this.j, this.f);
                                    yz2 yz2VarA2 = yz2.a(this.k, this.f);
                                    mapArr[4].put("Compression", yz2VarC);
                                    mapArr[4].put("JPEGInterchangeFormat", yz2VarA);
                                    mapArr[4].put("JPEGInterchangeFormatLength", yz2VarA2);
                                }
                            }
                            b03Var.b(i4);
                        } else {
                            j3 = j3;
                            unsignedShort2 = unsignedShort2;
                            unsignedShort3 = unsignedShort3;
                        }
                        num = (Integer) M.get(Integer.valueOf(unsignedShort2));
                        if (z3 != 0) {
                            Log.d("ExifInterface", "nextIfdType: " + num + " byteCount: " + j2);
                        }
                        if (num != null) {
                            i3 = unsignedShort3;
                            if (i3 != 3) {
                                if (i3 == 4) {
                                    j5 = ((long) b03Var.readInt()) & 4294967295L;
                                } else if (i3 == 8) {
                                    unsignedShort = b03Var.readShort();
                                } else if (i3 != 9 || i3 == 13) {
                                    unsignedShort = b03Var.readInt();
                                } else {
                                    j5 = -1;
                                }
                                if (z3 != 0) {
                                    Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j5), zz2Var.b));
                                }
                                if (j5 > 0) {
                                    if (!hashSet.contains(Integer.valueOf((int) j5))) {
                                        b03Var.b(j5);
                                        s(b03Var, num.intValue());
                                    } else if (z3 != 0) {
                                        Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j5 + ")");
                                    }
                                } else if (z3 != 0) {
                                    Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j5);
                                }
                                b03Var.b(j3);
                            } else {
                                unsignedShort = b03Var.readUnsignedShort();
                            }
                            j5 = unsignedShort;
                            if (z3 != 0) {
                                Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j5), zz2Var.b));
                            }
                            if (j5 > 0) {
                                if (!hashSet.contains(Integer.valueOf((int) j5))) {
                                    b03Var.b(j5);
                                    s(b03Var, num.intValue());
                                } else if (z3 != 0) {
                                    Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j5 + ")");
                                }
                            } else if (z3 != 0) {
                                Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j5);
                            }
                            b03Var.b(j3);
                        } else {
                            j4 = j3;
                            int i7 = b03Var.c + this.h;
                            byte[] bArr = new byte[(int) j2];
                            b03Var.readFully(bArr);
                            yz2 yz2Var = new yz2(i7, bArr, unsignedShort3, i5);
                            HashMap map = mapArr[i];
                            str = zz2Var.b;
                            map.put(str, yz2Var);
                            if ("DNGVersion".equals(str)) {
                                this.c = 3;
                            }
                            if (((!"Make".equals(str) || "Model".equals(str)) && yz2Var.f(this.f).contains("PENTAX")) || ("Compression".equals(str) && yz2Var.e(this.f) == 65535)) {
                                this.c = 8;
                            }
                            if (b03Var.c != j4) {
                                b03Var.b(j4);
                            }
                        }
                    } else {
                        b03Var.b(j);
                    }
                    s3 = (short) (s3 + 1);
                    s2 = s2;
                    z3 = z3;
                }
                j = j6;
                if (z3 != 0) {
                    Log.d("ExifInterface", "Skip the tag entry since data format is invalid: " + unsignedShort3);
                }
                j2 = 0;
                z2 = false;
                if (z2) {
                    b03Var.b(j);
                } else {
                    j3 = j;
                    if (j2 > 4) {
                        i4 = b03Var.readInt();
                        if (z3 != 0) {
                            Log.d("ExifInterface", "seek to data offset: " + i4);
                        }
                        if (this.c == 7) {
                            if ("MakerNote".equals(zz2Var.b)) {
                                this.i = i4;
                            } else if (i != 6) {
                            }
                        }
                        b03Var.b(i4);
                    } else {
                        j3 = j3;
                        unsignedShort2 = unsignedShort2;
                        unsignedShort3 = unsignedShort3;
                    }
                    num = (Integer) M.get(Integer.valueOf(unsignedShort2));
                    if (z3 != 0) {
                        Log.d("ExifInterface", "nextIfdType: " + num + " byteCount: " + j2);
                    }
                    if (num != null) {
                        i3 = unsignedShort3;
                        if (i3 != 3) {
                            if (i3 == 4) {
                                j5 = ((long) b03Var.readInt()) & 4294967295L;
                            } else if (i3 == 8) {
                                if (i3 != 9) {
                                }
                                unsignedShort = b03Var.readInt();
                            } else {
                                unsignedShort = b03Var.readShort();
                            }
                            if (z3 != 0) {
                                Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j5), zz2Var.b));
                            }
                            if (j5 > 0) {
                                if (!hashSet.contains(Integer.valueOf((int) j5))) {
                                    b03Var.b(j5);
                                    s(b03Var, num.intValue());
                                } else if (z3 != 0) {
                                    Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j5 + ")");
                                }
                            } else if (z3 != 0) {
                                Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j5);
                            }
                            b03Var.b(j3);
                        } else {
                            unsignedShort = b03Var.readUnsignedShort();
                        }
                        j5 = unsignedShort;
                        if (z3 != 0) {
                            Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j5), zz2Var.b));
                        }
                        if (j5 > 0) {
                            if (!hashSet.contains(Integer.valueOf((int) j5))) {
                                b03Var.b(j5);
                                s(b03Var, num.intValue());
                            } else if (z3 != 0) {
                                Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j5 + ")");
                            }
                        } else if (z3 != 0) {
                            Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j5);
                        }
                        b03Var.b(j3);
                    } else {
                        j4 = j3;
                        int i8 = b03Var.c + this.h;
                        byte[] bArr2 = new byte[(int) j2];
                        b03Var.readFully(bArr2);
                        yz2 yz2Var2 = new yz2(i8, bArr2, unsignedShort3, i5);
                        HashMap map2 = mapArr[i];
                        str = zz2Var.b;
                        map2.put(str, yz2Var2);
                        if ("DNGVersion".equals(str)) {
                            this.c = 3;
                        }
                        if (!"Make".equals(str)) {
                        }
                        this.c = 8;
                        if (b03Var.c != j4) {
                            b03Var.b(j4);
                        }
                    }
                }
                s3 = (short) (s3 + 1);
                s2 = s2;
                z3 = z3;
            } else if (z3) {
                Log.d("ExifInterface", "Skip the tag entry since tag number is not defined: " + unsignedShort2);
            }
            j = j6;
            j2 = 0;
            z2 = false;
            if (z2) {
                b03Var.b(j);
            } else {
                j3 = j;
                if (j2 > 4) {
                    i4 = b03Var.readInt();
                    if (z3 != 0) {
                        Log.d("ExifInterface", "seek to data offset: " + i4);
                    }
                    if (this.c == 7) {
                        if ("MakerNote".equals(zz2Var.b)) {
                            this.i = i4;
                        } else if (i != 6) {
                        }
                    }
                    b03Var.b(i4);
                } else {
                    j3 = j3;
                    unsignedShort2 = unsignedShort2;
                    unsignedShort3 = unsignedShort3;
                }
                num = (Integer) M.get(Integer.valueOf(unsignedShort2));
                if (z3 != 0) {
                    Log.d("ExifInterface", "nextIfdType: " + num + " byteCount: " + j2);
                }
                if (num != null) {
                    i3 = unsignedShort3;
                    if (i3 != 3) {
                        if (i3 == 4) {
                            j5 = ((long) b03Var.readInt()) & 4294967295L;
                        } else if (i3 == 8) {
                            if (i3 != 9) {
                            }
                            unsignedShort = b03Var.readInt();
                        } else {
                            unsignedShort = b03Var.readShort();
                        }
                        if (z3 != 0) {
                            Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j5), zz2Var.b));
                        }
                        if (j5 > 0) {
                            if (!hashSet.contains(Integer.valueOf((int) j5))) {
                                b03Var.b(j5);
                                s(b03Var, num.intValue());
                            } else if (z3 != 0) {
                                Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j5 + ")");
                            }
                        } else if (z3 != 0) {
                            Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j5);
                        }
                        b03Var.b(j3);
                    } else {
                        unsignedShort = b03Var.readUnsignedShort();
                    }
                    j5 = unsignedShort;
                    if (z3 != 0) {
                        Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j5), zz2Var.b));
                    }
                    if (j5 > 0) {
                        if (!hashSet.contains(Integer.valueOf((int) j5))) {
                            b03Var.b(j5);
                            s(b03Var, num.intValue());
                        } else if (z3 != 0) {
                            Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j5 + ")");
                        }
                    } else if (z3 != 0) {
                        Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j5);
                    }
                    b03Var.b(j3);
                } else {
                    j4 = j3;
                    int i9 = b03Var.c + this.h;
                    byte[] bArr3 = new byte[(int) j2];
                    b03Var.readFully(bArr3);
                    yz2 yz2Var3 = new yz2(i9, bArr3, unsignedShort3, i5);
                    HashMap map3 = mapArr[i];
                    str = zz2Var.b;
                    map3.put(str, yz2Var3);
                    if ("DNGVersion".equals(str)) {
                        this.c = 3;
                    }
                    if (!"Make".equals(str)) {
                    }
                    this.c = 8;
                    if (b03Var.c != j4) {
                        b03Var.b(j4);
                    }
                }
            }
            s3 = (short) (s3 + 1);
            s2 = s2;
            z3 = z3;
        }
        boolean z4 = z3;
        int i10 = b03Var.readInt();
        if (z4) {
            Log.d("ExifInterface", String.format("nextIfdOffset: %d", Integer.valueOf(i10)));
        }
        long j7 = i10;
        if (j7 <= 0) {
            if (z4) {
                Log.d("ExifInterface", "Stop reading file since a wrong offset may cause an infinite loop: " + i10);
                return;
            }
            return;
        }
        if (hashSet.contains(Integer.valueOf(i10))) {
            if (z4) {
                Log.d("ExifInterface", "Stop reading file since re-reading an IFD may cause an infinite loop: " + i10);
                return;
            }
            return;
        }
        b03Var.b(j7);
        if (mapArr[4].isEmpty()) {
            s(b03Var, 4);
        } else if (mapArr[5].isEmpty()) {
            s(b03Var, 5);
        }
    }

    public final void t(int i, String str, String str2) {
        HashMap[] mapArr = this.d;
        if (mapArr[i].isEmpty() || mapArr[i].get(str) == null) {
            return;
        }
        HashMap map = mapArr[i];
        map.put(str2, map.get(str));
        mapArr[i].remove(str);
    }

    public final void u(xz2 xz2Var) throws Throwable {
        yz2 yz2Var;
        int iE;
        HashMap map = this.d[4];
        yz2 yz2Var2 = (yz2) map.get("Compression");
        if (yz2Var2 == null) {
            m(xz2Var, map);
            return;
        }
        int iE2 = yz2Var2.e(this.f);
        if (iE2 != 1) {
            if (iE2 == 6) {
                m(xz2Var, map);
                return;
            } else if (iE2 != 7) {
                return;
            }
        }
        yz2 yz2Var3 = (yz2) map.get("BitsPerSample");
        if (yz2Var3 != null) {
            int[] iArr = (int[]) yz2Var3.g(this.f);
            int[] iArr2 = o;
            if (Arrays.equals(iArr2, iArr) || (this.c == 3 && (yz2Var = (yz2) map.get("PhotometricInterpretation")) != null && (((iE = yz2Var.e(this.f)) == 1 && Arrays.equals(iArr, p)) || (iE == 6 && Arrays.equals(iArr, iArr2))))) {
                yz2 yz2Var4 = (yz2) map.get("StripOffsets");
                yz2 yz2Var5 = (yz2) map.get("StripByteCounts");
                if (yz2Var4 == null || yz2Var5 == null) {
                    return;
                }
                long[] jArrJ = jm1.j(yz2Var4.g(this.f));
                long[] jArrJ2 = jm1.j(yz2Var5.g(this.f));
                if (jArrJ == null || jArrJ.length == 0) {
                    Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
                    return;
                }
                if (jArrJ2 == null || jArrJ2.length == 0) {
                    Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
                    return;
                }
                if (jArrJ.length != jArrJ2.length) {
                    Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
                    return;
                }
                long j = 0;
                for (long j2 : jArrJ2) {
                    j += j2;
                }
                byte[] bArr = new byte[(int) j];
                this.g = true;
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < jArrJ.length; i3++) {
                    int i4 = (int) jArrJ[i3];
                    int i5 = (int) jArrJ2[i3];
                    if (i3 < jArrJ.length - 1 && i4 + i5 != jArrJ[i3 + 1]) {
                        this.g = false;
                    }
                    int i6 = i4 - i;
                    if (i6 < 0) {
                        Log.d("ExifInterface", "Invalid strip offset value");
                        return;
                    }
                    long j3 = i6;
                    if (xz2Var.skip(j3) != j3) {
                        Log.d("ExifInterface", "Failed to skip " + i6 + " bytes.");
                        return;
                    }
                    int i7 = i + i6;
                    byte[] bArr2 = new byte[i5];
                    if (xz2Var.read(bArr2) != i5) {
                        Log.d("ExifInterface", "Failed to read " + i5 + " bytes.");
                        return;
                    }
                    i = i7 + i5;
                    System.arraycopy(bArr2, 0, bArr, i2, i5);
                    i2 += i5;
                }
                if (this.g) {
                    long j4 = jArrJ[0];
                    return;
                }
                return;
            }
        }
        if (l) {
            Log.d("ExifInterface", "Unsupported data type value");
        }
    }

    public final void v(int i, int i2) throws Throwable {
        HashMap[] mapArr = this.d;
        boolean zIsEmpty = mapArr[i].isEmpty();
        boolean z2 = l;
        if (zIsEmpty || mapArr[i2].isEmpty()) {
            if (z2) {
                Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
                return;
            }
            return;
        }
        yz2 yz2Var = (yz2) mapArr[i].get("ImageLength");
        yz2 yz2Var2 = (yz2) mapArr[i].get("ImageWidth");
        yz2 yz2Var3 = (yz2) mapArr[i2].get("ImageLength");
        yz2 yz2Var4 = (yz2) mapArr[i2].get("ImageWidth");
        if (yz2Var == null || yz2Var2 == null) {
            if (z2) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (yz2Var3 == null || yz2Var4 == null) {
            if (z2) {
                Log.d("ExifInterface", "Second image does not contain valid size information");
                return;
            }
            return;
        }
        int iE = yz2Var.e(this.f);
        int iE2 = yz2Var2.e(this.f);
        int iE3 = yz2Var3.e(this.f);
        int iE4 = yz2Var4.e(this.f);
        if (iE >= iE3 || iE2 >= iE4) {
            return;
        }
        HashMap map = mapArr[i];
        mapArr[i] = mapArr[i2];
        mapArr[i2] = map;
    }

    public final void w(b03 b03Var, int i) throws Throwable {
        yz2 yz2VarC;
        yz2 yz2VarC2;
        HashMap[] mapArr = this.d;
        yz2 yz2Var = (yz2) mapArr[i].get("DefaultCropSize");
        yz2 yz2Var2 = (yz2) mapArr[i].get("SensorTopBorder");
        yz2 yz2Var3 = (yz2) mapArr[i].get("SensorLeftBorder");
        yz2 yz2Var4 = (yz2) mapArr[i].get("SensorBottomBorder");
        yz2 yz2Var5 = (yz2) mapArr[i].get("SensorRightBorder");
        if (yz2Var != null) {
            int i2 = yz2Var.a;
            ByteOrder byteOrder = this.f;
            if (i2 == 5) {
                a03[] a03VarArr = (a03[]) yz2Var.g(byteOrder);
                if (a03VarArr == null || a03VarArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(a03VarArr));
                    return;
                }
                yz2VarC = yz2.b(a03VarArr[0], this.f);
                yz2VarC2 = yz2.b(a03VarArr[1], this.f);
            } else {
                int[] iArr = (int[]) yz2Var.g(byteOrder);
                if (iArr == null || iArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
                yz2VarC = yz2.c(iArr[0], this.f);
                yz2VarC2 = yz2.c(iArr[1], this.f);
            }
            mapArr[i].put("ImageWidth", yz2VarC);
            mapArr[i].put("ImageLength", yz2VarC2);
            return;
        }
        if (yz2Var2 != null && yz2Var3 != null && yz2Var4 != null && yz2Var5 != null) {
            int iE = yz2Var2.e(this.f);
            int iE2 = yz2Var4.e(this.f);
            int iE3 = yz2Var5.e(this.f);
            int iE4 = yz2Var3.e(this.f);
            if (iE2 <= iE || iE3 <= iE4) {
                return;
            }
            yz2 yz2VarC3 = yz2.c(iE2 - iE, this.f);
            yz2 yz2VarC4 = yz2.c(iE3 - iE4, this.f);
            mapArr[i].put("ImageLength", yz2VarC3);
            mapArr[i].put("ImageWidth", yz2VarC4);
            return;
        }
        yz2 yz2Var6 = (yz2) mapArr[i].get("ImageLength");
        yz2 yz2Var7 = (yz2) mapArr[i].get("ImageWidth");
        if (yz2Var6 == null || yz2Var7 == null) {
            yz2 yz2Var8 = (yz2) mapArr[i].get("JPEGInterchangeFormat");
            yz2 yz2Var9 = (yz2) mapArr[i].get("JPEGInterchangeFormatLength");
            if (yz2Var8 == null || yz2Var9 == null) {
                return;
            }
            int iE5 = yz2Var8.e(this.f);
            int iE6 = yz2Var8.e(this.f);
            b03Var.b(iE5);
            byte[] bArr = new byte[iE6];
            b03Var.read(bArr);
            e(new xz2(bArr), iE5, i);
        }
    }

    public final void x() throws Throwable {
        v(0, 5);
        v(0, 4);
        v(5, 4);
        HashMap[] mapArr = this.d;
        yz2 yz2Var = (yz2) mapArr[1].get("PixelXDimension");
        yz2 yz2Var2 = (yz2) mapArr[1].get("PixelYDimension");
        if (yz2Var != null && yz2Var2 != null) {
            mapArr[0].put("ImageWidth", yz2Var);
            mapArr[0].put("ImageLength", yz2Var2);
        }
        if (mapArr[4].isEmpty() && n(mapArr[5])) {
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap();
        }
        if (!n(mapArr[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        t(0, "ThumbnailOrientation", "Orientation");
        t(0, "ThumbnailImageLength", "ImageLength");
        t(0, "ThumbnailImageWidth", "ImageWidth");
        t(5, "ThumbnailOrientation", "Orientation");
        t(5, "ThumbnailImageLength", "ImageLength");
        t(5, "ThumbnailImageWidth", "ImageWidth");
        t(4, "Orientation", "ThumbnailOrientation");
        t(4, "ImageLength", "ThumbnailImageLength");
        t(4, "ImageWidth", "ThumbnailImageWidth");
    }
}
