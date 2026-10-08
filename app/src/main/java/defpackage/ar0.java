package defpackage;

import android.text.TextUtils;
import com.jcraft.jsch.Argon2;
import com.nimbusds.jose.crypto.impl.AESGCM;
import com.nimbusds.jose.crypto.impl.XC20P;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ar0 implements uc8 {
    public static final char[] n = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public r33 a;
    public int b;
    public int c;
    public String d;
    public String e;
    public int f;
    public zq0[] k;

    public static String d(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = n;
            cArr[i] = cArr2[(b >>> 4) & 15];
            i += 2;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    @Override // defpackage.uc8
    public final int a(String str, String str2) {
        if (str != null && !str.isEmpty()) {
            c6.f("Namespaces are not supported");
            return 0;
        }
        for (int i = 0; i < this.f; i++) {
            if (Objects.equals(this.k[i].a, str2)) {
                return i;
            }
        }
        return -1;
    }

    @Override // defpackage.uc8
    public final int b(int i) throws XmlPullParserException {
        zq0 zq0Var = this.k[i];
        int i2 = zq0Var.b;
        if (i2 != 32 && i2 != 48) {
            if (i2 == 96 || i2 == 112) {
                return zq0Var.e;
            }
            throw new XmlPullParserException("Invalid conversion from " + zq0Var.b);
        }
        try {
            return Integer.parseInt(zq0Var.c);
        } catch (Exception e) {
            throw new XmlPullParserException("Invalid attribute " + zq0Var.a + ": " + e);
        }
    }

    @Override // defpackage.uc8
    public final boolean c(int i) throws XmlPullParserException {
        zq0 zq0Var = this.k[i];
        int i2 = zq0Var.b;
        if (i2 != 32 && i2 != 48) {
            if (i2 == 192) {
                return true;
            }
            if (i2 == 208) {
                return false;
            }
            throw new XmlPullParserException("Invalid conversion from " + zq0Var.b);
        }
        if ("true".equalsIgnoreCase(zq0Var.c)) {
            return true;
        }
        if ("false".equalsIgnoreCase(zq0Var.c)) {
            return false;
        }
        throw new XmlPullParserException("Invalid attribute " + zq0Var.a + ": " + zq0Var.c);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void defineEntityReplacementText(String str, String str2) {
        throw new UnsupportedOperationException();
    }

    public final void e() throws XmlPullParserException, IOException {
        String str;
        byte b = this.a.readByte();
        int i = b & 15;
        int i2 = b & 240;
        if (i == 15) {
            int i3 = this.f;
            zq0[] zq0VarArr = this.k;
            if (i3 == zq0VarArr.length) {
                int length = zq0VarArr.length;
                int i4 = (length >> 1) + length;
                this.k = (zq0[]) Arrays.copyOf(zq0VarArr, i4);
                while (length < i4) {
                    this.k[length] = new zq0();
                    length++;
                }
            }
            zq0[] zq0VarArr2 = this.k;
            int i5 = this.f;
            this.f = i5 + 1;
            zq0 zq0Var = zq0VarArr2[i5];
            zq0Var.a = this.a.b();
            zq0Var.b = i2;
            switch (i2) {
                case Argon2.V10 /* 16 */:
                case XC20P.IV_BIT_LENGTH /* 192 */:
                case 208:
                    return;
                case 32:
                    zq0Var.c = this.a.readUTF();
                    return;
                case 48:
                    zq0Var.c = this.a.b();
                    return;
                case 64:
                case 80:
                    int unsignedShort = this.a.readUnsignedShort();
                    byte[] bArr = new byte[unsignedShort];
                    r33 r33Var = this.a;
                    r33Var.getClass();
                    r33Var.readFully(bArr, 0, unsignedShort);
                    zq0Var.d = bArr;
                    return;
                case AESGCM.IV_BIT_LENGTH /* 96 */:
                case OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS /* 112 */:
                    zq0Var.e = this.a.readInt();
                    return;
                case 128:
                case 144:
                    zq0Var.f = this.a.readLong();
                    return;
                case 160:
                    zq0Var.g = this.a.readFloat();
                    return;
                case 176:
                    zq0Var.h = this.a.readDouble();
                    return;
                default:
                    y5.m(fz5.j(i2, "Unexpected data type "));
                    return;
            }
        }
        switch (i) {
            case 0:
                this.d = null;
                this.e = null;
                if (this.f > 0) {
                    g();
                    return;
                }
                return;
            case 1:
                this.d = null;
                this.e = null;
                if (this.f > 0) {
                    g();
                    return;
                }
                return;
            case 2:
                this.d = this.a.b();
                this.e = null;
                if (this.f > 0) {
                    g();
                    return;
                }
                return;
            case 3:
                this.d = this.a.b();
                this.e = null;
                if (this.f > 0) {
                    g();
                    return;
                }
                return;
            case 4:
            case 5:
            case 7:
            case 8:
            case XmlPullParser.COMMENT /* 9 */:
            case 10:
                this.d = null;
                this.e = this.a.readUTF();
                if (this.f > 0) {
                    g();
                    return;
                }
                return;
            case 6:
                String utf = this.a.readUTF();
                this.d = utf;
                switch (utf) {
                    case "gt":
                        str = ">";
                        break;
                    case "lt":
                        str = "<";
                        break;
                    case "amp":
                        str = "&";
                        break;
                    case "apos":
                        str = "'";
                        break;
                    case "quot":
                        str = "\"";
                        break;
                    default:
                        if (utf.length() > 1 && utf.charAt(0) == '#') {
                            str = new String(new char[]{(char) Integer.parseInt(utf.substring(1))});
                            break;
                        } else {
                            throw new XmlPullParserException("Unknown entity ".concat(utf));
                        }
                        break;
                }
                this.e = str;
                if (this.f > 0) {
                    g();
                    return;
                }
                return;
            default:
                y5.m(dj7.i("Unknown token ", i, i2, " with type "));
                return;
        }
    }

    public final int f() throws XmlPullParserException, IOException {
        while (true) {
            r33 r33Var = this.a;
            if (r33Var.e - r33Var.d < 1) {
                r33Var.a(1);
            }
            int i = r33Var.a[r33Var.d] & 15;
            if (i != 15) {
                return i;
            }
            e();
        }
    }

    public final void g() {
        for (int i = 0; i < this.f; i++) {
            zq0 zq0Var = this.k[i];
            zq0Var.a = null;
            zq0Var.c = null;
            zq0Var.d = null;
        }
        this.f = 0;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getAttributeCount() {
        return this.f;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributeName(int i) {
        return this.k[i].a;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributeNamespace(int i) {
        return "";
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributePrefix(int i) {
        return null;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributeType(int i) {
        return "CDATA";
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributeValue(String str, String str2) {
        int iA = a(str, str2);
        if (iA != -1) {
            return this.k[iA].a();
        }
        return null;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getColumnNumber() {
        return -1;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getDepth() {
        return this.c;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getEventType() {
        return this.b;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final boolean getFeature(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getInputEncoding() {
        return StandardCharsets.UTF_8.name();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getLineNumber() {
        return -1;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getName() {
        return this.d;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getNamespace() {
        int i = this.b;
        if (i == 2 || i == 3) {
            return "";
        }
        return null;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getNamespaceCount(int i) {
        return 0;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getNamespacePrefix(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getNamespaceUri(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getPositionDescription() {
        return "Token " + this.b + " at depth " + this.c;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getPrefix() {
        return null;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final Object getProperty(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getText() {
        return this.e;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final char[] getTextCharacters(int[] iArr) {
        char[] charArray = this.e.toCharArray();
        iArr[0] = 0;
        iArr[1] = charArray.length;
        return charArray;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final boolean isAttributeDefault(int i) {
        return false;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final boolean isEmptyElementTag() throws XmlPullParserException {
        if (this.b != 2) {
            throw new XmlPullParserException("Not at START_TAG");
        }
        try {
            return f() == 3;
        } catch (IOException e) {
            throw new XmlPullParserException(e.toString());
        }
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final boolean isWhitespace() throws XmlPullParserException {
        int i = this.b;
        if (i == 4 || i == 5) {
            return !TextUtils.isGraphic(this.e);
        }
        if (i == 7) {
            return true;
        }
        throw new XmlPullParserException("Not applicable for token " + this.b);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int next() throws XmlPullParserException, IOException {
        int iNextToken;
        while (true) {
            iNextToken = nextToken();
            if (iNextToken == 1 || iNextToken == 2 || iNextToken == 3) {
                break;
            }
            if (iNextToken == 4) {
                String str = this.e;
                while (true) {
                    int iF = f();
                    if (iF != 4 && iF != 5 && iF != 6) {
                        if (iF != 8 && iF != 9) {
                            break;
                        }
                        e();
                    } else {
                        e();
                        str = str + this.e;
                    }
                }
                this.b = 4;
                this.d = null;
                this.e = str;
                if (str != null && str.length() != 0) {
                    return 4;
                }
            }
        }
        return iNextToken;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int nextTag() throws XmlPullParserException, IOException {
        int next = next();
        if (next == 4 && isWhitespace()) {
            next = next();
        }
        if (next == 2 || next == 3) {
            return next;
        }
        throw new XmlPullParserException(getPositionDescription());
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String nextText() throws XmlPullParserException, IOException {
        if (this.b != 2) {
            throw new XmlPullParserException(getPositionDescription());
        }
        int next = next();
        if (next != 4) {
            if (next == 3) {
                return "";
            }
            throw new XmlPullParserException(getPositionDescription());
        }
        String str = this.e;
        if (next() == 3) {
            return str;
        }
        throw new XmlPullParserException(getPositionDescription());
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int nextToken() throws XmlPullParserException, IOException {
        int iF;
        if (this.b == 3) {
            this.c--;
        }
        try {
            iF = f();
            e();
        } catch (EOFException unused) {
            iF = 1;
        }
        if (iF == 2) {
            f();
            this.c++;
        }
        this.b = iF;
        return iF;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void require(int i, String str, String str2) throws XmlPullParserException {
        if (str != null && !str.isEmpty()) {
            c6.f("Namespaces are not supported");
        } else if (this.b != i || !Objects.equals(this.d, str2)) {
            throw new XmlPullParserException(getPositionDescription());
        }
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void setFeature(String str, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void setInput(InputStream inputStream, String str) throws XmlPullParserException {
        if (str != null && !StandardCharsets.UTF_8.name().equalsIgnoreCase(str)) {
            x5.e();
            return;
        }
        r33 r33Var = this.a;
        if (r33Var != null) {
            r33Var.c = null;
            r33Var.d = 0;
            r33Var.e = 0;
            r33Var.f = 0;
            this.a = null;
        }
        this.a = new r33(inputStream);
        this.b = 0;
        this.c = 0;
        this.d = null;
        this.e = null;
        this.f = 0;
        this.k = new zq0[8];
        int i = 0;
        while (true) {
            zq0[] zq0VarArr = this.k;
            if (i >= zq0VarArr.length) {
                break;
            }
            zq0VarArr[i] = new zq0();
            i++;
        }
        try {
            byte[] bArr = new byte[4];
            r33 r33Var2 = this.a;
            r33Var2.getClass();
            r33Var2.readFully(bArr, 0, 4);
            if (Arrays.equals(bArr, br0.d)) {
                if (f() == 0) {
                    e();
                }
            } else {
                throw new IOException("Unexpected magic " + d(bArr));
            }
        } catch (IOException e) {
            throw new XmlPullParserException(e.toString());
        }
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void setProperty(String str, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getNamespace(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributeValue(int i) {
        return this.k[i].a();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void setInput(Reader reader) {
        throw new UnsupportedOperationException();
    }
}
