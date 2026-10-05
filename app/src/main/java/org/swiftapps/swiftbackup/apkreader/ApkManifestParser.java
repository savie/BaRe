package org.swiftapps.swiftbackup.apkreader;

import android.R;
import android.util.Log;
import defpackage.ah;
import defpackage.be8;
import defpackage.bh;
import defpackage.c73;
import defpackage.cy0;
import defpackage.dz8;
import defpackage.ez8;
import defpackage.fh;
import defpackage.g51;
import defpackage.gh;
import defpackage.gv7;
import defpackage.hh;
import defpackage.hz8;
import defpackage.ih;
import defpackage.lh6;
import defpackage.os4;
import defpackage.pe4;
import defpackage.pg;
import defpackage.pw5;
import defpackage.q63;
import defpackage.rg;
import defpackage.rs9;
import defpackage.x65;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.LinkedList;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ApkManifestParser implements ih {
    private static final String ANDROID_MANIFEST = "AndroidManifest.xml";
    private static final int ATTRIBUTE_EXTENSION_HEADER_SIZE = 20;
    private static final int ATTRIBUTE_SIZE = 20;
    private static final int BYTE_MASK = 255;
    private static final int CHUNK_HEADER_SIZE = 8;
    private static final int CHUNK_STRING_POOL = 1;
    private static final int CHUNK_XML = 3;
    private static final int CHUNK_XML_FIRST = 256;
    private static final int CHUNK_XML_LAST = 383;
    private static final int CHUNK_XML_RESOURCE_MAP = 384;
    private static final int CHUNK_XML_START_ELEMENT = 258;
    private static final int MAX_ATTRIBUTES_PER_ELEMENT = 10000;
    private static final int MAX_STRING_POOL_STRINGS = 100000;
    private static final int MAX_STRING_POOL_STYLES = 100000;
    private static final int STRING_POOL_HEADER_SIZE = 28;
    private static final int STRING_POOL_UTF8_FLAG = 256;
    private static final String TAG_APPLICATION = "application";
    private static final String TAG_MANIFEST = "manifest";
    private static final String TAG_META_DATA = "meta-data";
    private static final String TAG_USES_STATIC_LIBRARY = "uses-static-library";
    private static final int TYPE_INT_BOOLEAN = 18;
    private static final int TYPE_INT_DEC = 16;
    private static final int TYPE_INT_HEX = 17;
    private static final int TYPE_NULL = 0;
    private static final int TYPE_REFERENCE = 1;
    private static final int TYPE_STRING = 3;
    private static final long UINT_MASK = 4294967295L;
    private static final int USHORT_MASK = 65535;
    private static final int UTF16_LENGTH_TWO_SHORT_FLAG = 32768;
    private static final int UTF16_LENGTH_VALUE_MASK = 32767;
    private static final int UTF8_LENGTH_TWO_BYTE_FLAG = 128;
    private static final int UTF8_LENGTH_VALUE_MASK = 127;
    private static final int XML_NODE_HEADER_SIZE = 16;
    private final q63 apkFile;
    private final String logTag;
    private final os4 parsedApkInfo$delegate;
    private final os4 parsedManifestInfo$delegate;
    public static final Companion Companion = new Companion();
    private static final Charset UTF_16_LE = Charset.forName("UTF-16LE");
    private static final String ATTR_NAME = "name";
    private static final String ATTR_VERSION_CODE = "versionCode";
    private static final String ATTR_VERSION_NAME = "versionName";
    private static final String ATTR_VERSION_CODE_MAJOR = "versionCodeMajor";
    private static final Map<Integer, String> ANDROID_ATTR_IDS = x65.r0(new pw5(Integer.valueOf(R.attr.name), ATTR_NAME), new pw5(Integer.valueOf(R.attr.versionCode), ATTR_VERSION_CODE), new pw5(Integer.valueOf(R.attr.versionName), ATTR_VERSION_NAME), new pw5(Integer.valueOf(R.attr.versionCodeMajor), ATTR_VERSION_CODE_MAJOR));

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public final boolean hasApplicationClass(String str, String str2) {
            str.getClass();
            str2.getClass();
            return pe4.d(new ApkManifestParser(new q63(str, 1)).getApplicationClassName(), str2);
        }
    }

    public ApkManifestParser(q63 q63Var) {
        q63Var.getClass();
        this.apkFile = q63Var;
        this.logTag = "ApkManifestParser";
        int i = 0;
        this.parsedManifestInfo$delegate = new gv7(new ah(this, i));
        this.parsedApkInfo$delegate = new gv7(new bh(this, i));
    }

    private final rg getParsedApkInfo() {
        return (rg) this.parsedApkInfo$delegate.getValue();
    }

    private final hh getParsedManifestInfo() {
        return (hh) this.parsedManifestInfo$delegate.getValue();
    }

    public static final boolean hasApplicationClass(String str, String str2) {
        return Companion.hasApplicationClass(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final pg parsedApkInfo_delegate$lambda$0(ApkManifestParser apkManifestParser) {
        hh parsedManifestInfo = apkManifestParser.getParsedManifestInfo();
        if (parsedManifestInfo == null) {
            return null;
        }
        String str = parsedManifestInfo.c;
        if (str == null) {
            str = "null";
        }
        return new pg(str, (parsedManifestInfo.b << 32) | (parsedManifestInfo.a & UINT_MASK), parsedManifestInfo.e, parsedManifestInfo.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hh parsedManifestInfo_delegate$lambda$0(ApkManifestParser apkManifestParser) {
        try {
            byte[] manifestBytes = apkManifestParser.readManifestBytes();
            if (manifestBytes == null) {
                return null;
            }
            gh ghVar = new gh();
            ghVar.a = ByteBuffer.wrap(manifestBytes).order(ByteOrder.LITTLE_ENDIAN);
            ghVar.b = fh.g;
            ghVar.c = new int[0];
            return ghVar.j();
        } catch (Exception e) {
            Log.e(apkManifestParser.logTag, "getVersionInfo", e);
            return null;
        }
    }

    private final byte[] readManifestBytes() {
        lh6 lh6Var = new lh6();
        try {
            q63 q63Var = this.apkFile;
            boolean z = q63.d;
            ZipInputStream zipInputStream = new ZipInputStream(q63Var.w(true));
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (pe4.d(nextEntry != null ? nextEntry.getName() : null, ANDROID_MANIFEST)) {
                    lh6Var.a = cy0.E(zipInputStream);
                }
                zipInputStream.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(zipInputStream, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            Log.e(this.logTag, "readManifestBytes: zip stream", e);
        }
        byte[] bArr = (byte[]) lh6Var.a;
        if (bArr != null) {
            return bArr;
        }
        c73 c73VarL = this.apkFile.l(1);
        if (c73VarL != null) {
            try {
                readManifestBytes$lambda$2(this, lh6Var, c73VarL.a);
                c73VarL.close();
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    rs9.c(c73VarL, th3);
                    throw th4;
                }
            }
        }
        return (byte[]) lh6Var.a;
    }

    private static final Object readManifestBytes$lambda$2(ApkManifestParser apkManifestParser, lh6 lh6Var, FileChannel fileChannel) {
        fileChannel.getClass();
        try {
            byte[] bArr = hz8.L;
            dz8 dz8Var = new dz8();
            dz8Var.x = true;
            Charset charset = dz8.y;
            Charset charset2 = dz8Var.p;
            int i = g51.a;
            if (charset != null) {
                charset2 = charset;
            }
            dz8Var.n = charset2;
            dz8Var.p = charset;
            dz8Var.t = fileChannel;
            hz8 hz8VarK = dz8Var.K();
            try {
                LinkedList linkedList = (LinkedList) hz8VarK.b.get(ANDROID_MANIFEST);
                ez8 ez8Var = linkedList != null ? (ez8) linkedList.getFirst() : null;
                if (ez8Var != null) {
                    InputStream inputStreamA = hz8VarK.a(ez8Var);
                    try {
                        byte[] bArrE = cy0.E(inputStreamA);
                        inputStreamA.close();
                        lh6Var.a = bArrE;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(inputStreamA, th);
                            throw th2;
                        }
                    }
                }
                hz8VarK.close();
                return be8.a;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    rs9.c(hz8VarK, th3);
                    throw th4;
                }
            }
        } catch (Exception e) {
            return Integer.valueOf(Log.e(apkManifestParser.logTag, "readManifestBytes: zip channel", e));
        }
    }

    @Override // defpackage.ih
    public rg getApkInfo() {
        return getParsedApkInfo();
    }

    public final String getApplicationClassName() {
        hh parsedManifestInfo = getParsedManifestInfo();
        if (parsedManifestInfo != null) {
            return parsedManifestInfo.d;
        }
        return null;
    }
}
