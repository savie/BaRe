package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.bumptech.glide.load.data.a;
import com.jcraft.jsch.Argon2;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import org.swiftapps.swiftbackup.apkreader.ApkManifestParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gh implements w23, ba4, wi8 {
    public Object a;
    public Object b;
    public Object c;

    public /* synthetic */ gh(Object obj, Object obj2, Object obj3) {
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
    }

    @Override // defpackage.ba4
    public int a() throws Throwable {
        List list = (List) this.b;
        a aVar = (a) this.c;
        m35 m35Var = (m35) this.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            x94 x94Var = (x94) list.get(i);
            eg6 eg6Var = null;
            try {
                eg6 eg6Var2 = new eg6(new FileInputStream(aVar.a().getFileDescriptor()), m35Var);
                try {
                    int iD = x94Var.d(eg6Var2, m35Var);
                    eg6Var2.b();
                    aVar.a();
                    if (iD != -1) {
                        return iD;
                    }
                } catch (Throwable th) {
                    th = th;
                    eg6Var = eg6Var2;
                    if (eg6Var != null) {
                        eg6Var.b();
                    }
                    aVar.a();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return -1;
    }

    @Override // defpackage.ba4
    public Bitmap b(BitmapFactory.Options options) {
        return BitmapFactory.decodeFileDescriptor(((a) this.c).a().getFileDescriptor(), null, options);
    }

    @Override // defpackage.wi8
    public boolean c() {
        return true;
    }

    public String d(ch chVar) {
        int i = chVar.a;
        int i2 = chVar.c;
        if (i >= 0) {
            return o(i);
        }
        int i3 = chVar.b;
        if (i3 == 0) {
            return null;
        }
        if (i3 == 1) {
            ly8.j(16);
            return "@0x".concat(jd4.L(16, ((long) i2) & 4294967295L));
        }
        if (i3 == 3) {
            return o(i2);
        }
        switch (i3) {
            case Argon2.V10 /* 16 */:
            case 17:
                return String.valueOf(i2);
            case 18:
                return i2 != 0 ? "true" : "false";
            default:
                return String.valueOf(i2);
        }
    }

    public oe0 e() {
        String strConcat = ((String) this.a) == null ? " backendName" : "";
        if (((d66) this.c) == null) {
            strConcat = strConcat.concat(" priority");
        }
        if (strConcat.isEmpty()) {
            return new oe0((String) this.a, (byte[]) this.b, (d66) this.c);
        }
        l0.e("Missing required properties:".concat(strConcat));
        return null;
    }

    @Override // defpackage.ba4
    public ImageHeaderParser$ImageType g() throws Throwable {
        List list = (List) this.b;
        a aVar = (a) this.c;
        m35 m35Var = (m35) this.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            x94 x94Var = (x94) list.get(i);
            eg6 eg6Var = null;
            try {
                eg6 eg6Var2 = new eg6(new FileInputStream(aVar.a().getFileDescriptor()), m35Var);
                try {
                    ImageHeaderParser$ImageType imageHeaderParser$ImageTypeC = x94Var.c(eg6Var2);
                    eg6Var2.b();
                    aVar.a();
                    if (imageHeaderParser$ImageTypeC != ImageHeaderParser$ImageType.UNKNOWN) {
                        return imageHeaderParser$ImageTypeC;
                    }
                } catch (Throwable th) {
                    th = th;
                    eg6Var = eg6Var2;
                    if (eg6Var != null) {
                        eg6Var.b();
                    }
                    aVar.a();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // defpackage.ea6
    public Object get() {
        Context context = (Context) ((id4) this.a).a;
        ox1 ox1Var = (ox1) ((ca6) this.b).get();
        r87 r87Var = (r87) ((ca6) this.c).get();
        context.getClass();
        ox1Var.getClass();
        r87Var.getClass();
        return ge.r(r87Var, new nh(new u10(r87Var, 8), 13), l73.c(ox1Var), new ek(context, 23));
    }

    @Override // defpackage.wi8
    public int getLength() {
        return 0;
    }

    @Override // defpackage.wi8
    public Class getType() {
        Object obj = this.b;
        return obj != null ? obj.getClass() : (Class) this.c;
    }

    @Override // defpackage.wi8
    public Object getValue() {
        return this.b;
    }

    public void h(y91 y91Var, ByteArrayOutputStream byteArrayOutputStream) {
        HashMap map = (HashMap) this.a;
        v96 v96Var = new v96(byteArrayOutputStream, map, (HashMap) this.b, (fr5) this.c);
        fr5 fr5Var = (fr5) map.get(y91.class);
        if (fr5Var == null) {
            throw new fw2(fz5.k(y91.class, "No encoder for "));
        }
        fr5Var.a(y91Var, v96Var);
    }

    public Long i(eh ehVar, String str) {
        ch chVar = (ch) ehVar.b.get(str);
        if (chVar == null) {
            return null;
        }
        int i = chVar.b;
        int i2 = chVar.c;
        if (i == 3) {
            return uq7.Y(o(i2));
        }
        if (i == 16 || i == 17) {
            return Long.valueOf(((long) i2) & 4294967295L);
        }
        String strD = d(chVar);
        if (strD != null) {
            return uq7.Y(strD);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:94:0x01d6  */
    public hh j() {
        dh dhVarK;
        int i;
        Long l;
        long j;
        String str;
        int i2;
        String str2;
        ByteBuffer byteBuffer = (ByteBuffer) this.a;
        dh dhVarK2 = k();
        if (dhVarK2 == null || dhVarK2.a != 3) {
            return null;
        }
        long jLongValue = 0;
        Long l2 = null;
        String str3 = null;
        String str4 = null;
        boolean z = false;
        boolean z2 = false;
        for (int i3 = dhVarK2.e; byteBuffer.position() < i3 && byteBuffer.hasRemaining() && (dhVarK = k()) != null; i3 = i) {
            int i4 = dhVarK.b;
            int i5 = dhVarK.e;
            int i6 = dhVarK.a;
            if (i6 == 1) {
                i = i3;
                l = l2;
                j = jLongValue;
                str = str3;
                byteBuffer.position(i4 + 8);
                int iL = l();
                int iL2 = l();
                int iL3 = l();
                int iL4 = l();
                l();
                if (iL > 100000) {
                    f6.g(fz5.j(iL, "Too many strings: "));
                    return null;
                }
                if (iL2 > 100000) {
                    f6.g(fz5.j(iL2, "Too many styles: "));
                    return null;
                }
                int i7 = dhVarK.c;
                int i8 = dhVarK.d;
                if (iL4 > i8 || i7 > iL4) {
                    f6.g(fz5.j(iL4, "Invalid strings start: "));
                    return null;
                }
                if (((long) i7) + ((((long) iL) + ((long) iL2)) * 4) > i8) {
                    c6.f("String pool offsets outside chunk");
                    return null;
                }
                boolean z3 = (iL3 & 256) != 0;
                int[] iArr = new int[iL];
                for (int i9 = 0; i9 < iL; i9++) {
                    iArr[i9] = l();
                }
                for (int i10 = 0; i10 < iL2; i10++) {
                    l();
                }
                ByteBuffer byteBufferOrder = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
                byteBufferOrder.getClass();
                this.b = new fh(byteBufferOrder, i4 + iL4, dhVarK.e, iArr, z3);
            } else if (i6 != 258) {
                if (i6 == 384) {
                    int i11 = dhVarK.f;
                    if (i11 % 4 != 0) {
                        f6.g(fz5.j(i11, "Invalid resource map size: "));
                        return null;
                    }
                    int i12 = i11 / 4;
                    int[] iArr2 = new int[i12];
                    for (int i13 = 0; i13 < i12; i13++) {
                        iArr2[i13] = byteBuffer.getInt();
                    }
                    this.c = iArr2;
                }
                i = i3;
                l = l2;
                j = jLongValue;
                str = str3;
            } else {
                int iPosition = byteBuffer.position();
                byteBuffer.getInt();
                String strO = o(byteBuffer.getInt());
                int iM = m();
                int iM2 = m();
                if (iM < 20) {
                    f6.g(fz5.j(iM, "Invalid attribute start: "));
                    return null;
                }
                if (iM2 < 20) {
                    f6.g(fz5.j(iM2, "Invalid attribute size: "));
                    return null;
                }
                int iM3 = m();
                i = i3;
                if (iM3 > 10000) {
                    f6.g(fz5.j(iM3, "Too many attributes: "));
                    return null;
                }
                m();
                m();
                m();
                int i14 = iPosition + iM;
                j = jLongValue;
                if ((((long) iM2) * ((long) iM3)) + ((long) i14) > i5) {
                    c6.f("Attributes outside start element chunk");
                    return null;
                }
                byteBuffer.position(i14);
                LinkedHashMap linkedHashMap = new LinkedHashMap(iM3);
                int i15 = 0;
                while (i15 < iM3) {
                    int iPosition2 = byteBuffer.position();
                    byteBuffer.getInt();
                    int i16 = byteBuffer.getInt();
                    int i17 = byteBuffer.getInt();
                    m();
                    byteBuffer.getClass();
                    byteBuffer.get();
                    byteBuffer.getClass();
                    Long l3 = l2;
                    int i18 = byteBuffer.get() & 255;
                    int i19 = i15;
                    int i20 = byteBuffer.getInt();
                    String strO2 = o(i16);
                    if (strO2.length() > 0) {
                        i2 = iPosition2;
                        str2 = str3;
                    } else {
                        i2 = iPosition2;
                        int[] iArr3 = (int[]) this.c;
                        iArr3.getClass();
                        str2 = str3;
                        Integer numValueOf = (i16 < 0 || i16 >= iArr3.length) ? null : Integer.valueOf(iArr3[i16]);
                        if (numValueOf == null || (str = (String) ApkManifestParser.ANDROID_ATTR_IDS.get(numValueOf)) == null) {
                        }
                        linkedHashMap.put(str, new ch(i17, i18, i20));
                        byteBuffer.position(i2 + iM2);
                        i15 = i19 + 1;
                        l2 = l3;
                        str3 = str2;
                    }
                    String str5 = strO2;
                    linkedHashMap.put(str5, new ch(i17, i18, i20));
                    byteBuffer.position(i2 + iM2);
                    i15 = i19 + 1;
                    l2 = l3;
                    str3 = str2;
                }
                l = l2;
                str = str3;
                eh ehVar = new eh(strO, linkedHashMap);
                if (strO.equals("manifest")) {
                    Long lI = i(ehVar, "versionCode");
                    l2 = lI == null ? l : lI;
                    Long lI2 = i(ehVar, "versionCodeMajor");
                    jLongValue = lI2 != null ? lI2.longValue() : j;
                    ch chVar = (ch) linkedHashMap.get("versionName");
                    String strD = chVar != null ? d(chVar) : null;
                    str3 = strD == null ? str : strD;
                } else if (strO.equals("application")) {
                    ch chVar2 = (ch) linkedHashMap.get("name");
                    String strD2 = chVar2 != null ? d(chVar2) : null;
                    if (strD2 != null) {
                        str4 = strD2;
                    }
                } else if (strO.equals("meta-data")) {
                    if (z) {
                        z = true;
                    } else {
                        ch chVar3 = (ch) linkedHashMap.get("name");
                        String strD3 = chVar3 != null ? d(chVar3) : null;
                        boolean z4 = g42.a;
                        if (pe4.d(strD3, (String) g42.t.getValue())) {
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                } else if (strO.equals("uses-static-library")) {
                    jLongValue = j;
                    l2 = l;
                    str3 = str;
                    z2 = true;
                }
                byteBuffer.position(i5);
            }
            jLongValue = j;
            l2 = l;
            byteBuffer.position(i5);
        }
        Long l4 = l2;
        long j2 = jLongValue;
        String str6 = str3;
        if (l4 != null) {
            return new hh(l4.longValue(), j2, str6, str4, z, z2);
        }
        return null;
    }

    public dh k() {
        ByteBuffer byteBuffer = (ByteBuffer) this.a;
        if (byteBuffer.remaining() < 8) {
            return null;
        }
        int iPosition = byteBuffer.position();
        int iM = m();
        int iM2 = m();
        int iL = l();
        if (iM2 < 8) {
            f6.g(fz5.j(iM2, "Invalid chunk header size: "));
            return null;
        }
        if (iL < iM2) {
            f6.g(fz5.j(iL, "Invalid chunk size: "));
            return null;
        }
        if (((long) iPosition) + ((long) iL) > byteBuffer.limit()) {
            c6.f("Chunk outside buffer bounds");
            return null;
        }
        if (iM == 1) {
            if (iM2 < 28) {
                f6.g(fz5.j(iM2, "Invalid string pool header size: "));
                return null;
            }
        } else if (256 <= iM && iM < 384 && iM2 < 16) {
            f6.g(fz5.j(iM2, "Invalid XML node header size: "));
            return null;
        }
        byteBuffer.position(iPosition + iM2);
        return new dh(iM, iPosition, iM2, iL);
    }

    public int l() {
        int i = ((ByteBuffer) this.a).getInt();
        if (i >= 0) {
            return i;
        }
        f6.g(xs1.j("Unsigned chunk value is too large: ", String.valueOf(((long) i) & 4294967295L)));
        return 0;
    }

    public int m() {
        ByteBuffer byteBuffer = (ByteBuffer) this.a;
        byteBuffer.getClass();
        return byteBuffer.getShort() & 65535;
    }

    public void n(String str) {
        if (str != null) {
            this.a = str;
        } else {
            f6.n("Null backendName");
        }
    }

    public String o(int i) {
        String string;
        fh fhVar = (fh) this.b;
        String[] strArr = fhVar.f;
        int[] iArr = fhVar.d;
        int i2 = fhVar.c;
        if (i < 0 || i >= iArr.length) {
            return "";
        }
        String str = strArr[i];
        if (str != null) {
            return str;
        }
        ByteBuffer byteBufferOrder = fhVar.a.duplicate().order(ByteOrder.LITTLE_ENDIAN);
        long j = ((long) fhVar.b) + ((long) iArr[i]);
        long j2 = i2;
        if (j >= j2) {
            c6.f("String offset outside string pool");
            return null;
        }
        byteBufferOrder.position((int) j);
        if (fhVar.e) {
            fh fhVar2 = fh.g;
            us2.t(byteBufferOrder);
            int iT = us2.t(byteBufferOrder);
            if (((long) byteBufferOrder.position()) + ((long) iT) + 1 > j2) {
                c6.f("UTF-8 string outside string pool");
                return null;
            }
            byte[] bArr = new byte[iT];
            byteBufferOrder.get(bArr);
            byteBufferOrder.get();
            CharsetDecoder charsetDecoderNewDecoder = f51.a.newDecoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
            string = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(bArr)).toString();
            string.getClass();
        } else {
            short s = byteBufferOrder.getShort();
            int i3 = s & 65535;
            if ((Short.MIN_VALUE & s) != 0) {
                i3 = ((s & Short.MAX_VALUE) << 15) | (65535 & byteBufferOrder.getShort());
            }
            long j3 = ((long) i3) * 2;
            if (((long) byteBufferOrder.position()) + j3 + 2 > j2) {
                c6.f("UTF-16 string outside string pool");
                return null;
            }
            byte[] bArr2 = new byte[(int) j3];
            byteBufferOrder.get(bArr2);
            byteBufferOrder.getShort();
            CharsetDecoder charsetDecoderNewDecoder2 = ApkManifestParser.UTF_16_LE.newDecoder();
            CodingErrorAction codingErrorAction2 = CodingErrorAction.REPORT;
            string = charsetDecoderNewDecoder2.onMalformedInput(codingErrorAction2).onUnmappableCharacter(codingErrorAction2).decode(ByteBuffer.wrap(bArr2)).toString();
            string.getClass();
        }
        strArr[i] = string;
        return string;
    }

    public lg9 p() throws GeneralSecurityException {
        km8 km8Var;
        d2a d2aVarB;
        tg9 tg9Var = (tg9) this.a;
        if (tg9Var == null || (km8Var = (km8) this.b) == null) {
            m0.h("Cannot build without parameters and/or key material");
            return null;
        }
        if (tg9Var.a != ((d2a) km8Var.a).a.length) {
            m0.h("Key size mismatch");
            return null;
        }
        if (tg9Var.a() && ((Integer) this.c) == null) {
            m0.h("Cannot create key without ID requirement with parameters with ID requirement");
            return null;
        }
        if (!((tg9) this.a).a() && ((Integer) this.c) != null) {
            m0.h("Cannot create key with ID requirement with parameters without ID requirement");
            return null;
        }
        sg9 sg9Var = ((tg9) this.a).b;
        if (sg9Var == sg9.e) {
            d2aVarB = zs9.a;
        } else if (sg9Var == sg9.d) {
            d2aVarB = zs9.a(((Integer) this.c).intValue());
        } else {
            if (sg9Var != sg9.c) {
                l0.e("Unknown AesGcmSivParameters.Variant: ".concat(String.valueOf(sg9Var)));
                return null;
            }
            d2aVarB = zs9.b(((Integer) this.c).intValue());
        }
        return new lg9((tg9) this.a, (km8) this.b, d2aVarB, (Integer) this.c);
    }

    @Override // defpackage.wi8
    public void setValue(Object obj) {
        wi8 wi8Var = (wi8) this.a;
        if (wi8Var != null) {
            wi8Var.setValue(obj);
        }
        this.b = obj;
    }

    @Override // defpackage.ba4
    public void f() {
    }
}
