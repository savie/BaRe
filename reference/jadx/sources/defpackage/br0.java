package defpackage;

import java.io.OutputStream;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class br0 implements XmlSerializer {
    public static final byte[] d = {65, 66, 88, 0};
    public s33 a;
    public int b;
    public String[] c;

    public final void a(String str, boolean z) {
        s33 s33Var = this.a;
        if (z) {
            s33Var.writeByte(207);
            this.a.b(str);
        } else {
            s33Var.writeByte(223);
            this.a.b(str);
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final XmlSerializer attribute(String str, String str2, String str3) {
        if (str != null && !str.isEmpty()) {
            c6.f("Namespaces are not supported");
            return null;
        }
        this.a.writeByte(47);
        this.a.b(str2);
        this.a.writeUTF(str3);
        return this;
    }

    public final void b(int i, String str) {
        s33 s33Var = this.a;
        if (str == null) {
            s33Var.writeByte(i | 16);
        } else {
            s33Var.writeByte(i | 32);
            this.a.writeUTF(str);
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void cdsect(String str) {
        b(5, str);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void comment(String str) {
        b(9, str);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void docdecl(String str) {
        b(10, str);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void endDocument() {
        this.a.writeByte(17);
        flush();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final XmlSerializer endTag(String str, String str2) {
        if (str != null && !str.isEmpty()) {
            c6.f("Namespaces are not supported");
            return null;
        }
        this.b--;
        this.a.writeByte(51);
        this.a.b(str2);
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void entityRef(String str) {
        b(6, str);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void flush() {
        this.a.flush();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final int getDepth() {
        return this.b;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final boolean getFeature(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final String getName() {
        return this.c[this.b - 1];
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final String getNamespace() {
        return "";
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final String getPrefix(String str, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final Object getProperty(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void ignorableWhitespace(String str) {
        b(7, str);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void processingInstruction(String str) {
        b(8, str);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void setFeature(String str, boolean z) {
        if ("http://xmlpull.org/v1/doc/features.html#indent-output".equals(str)) {
            return;
        }
        x5.e();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void setOutput(OutputStream outputStream, String str) {
        if (str != null && !StandardCharsets.UTF_8.name().equalsIgnoreCase(str)) {
            x5.e();
            return;
        }
        s33 s33Var = new s33(outputStream);
        this.a = s33Var;
        s33Var.write(d, 0, 4);
        this.b = 0;
        this.c = new String[8];
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void setPrefix(String str, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void setProperty(String str, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void startDocument(String str, Boolean bool) {
        if (str != null && !StandardCharsets.UTF_8.name().equalsIgnoreCase(str)) {
            x5.e();
        } else if (bool == null || bool.booleanValue()) {
            this.a.writeByte(16);
        } else {
            x5.e();
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final XmlSerializer startTag(String str, String str2) {
        if (str != null && !str.isEmpty()) {
            c6.f("Namespaces are not supported");
            return null;
        }
        int i = this.b;
        String[] strArr = this.c;
        if (i == strArr.length) {
            this.c = (String[]) Arrays.copyOf(strArr, i + (i >> 1));
        }
        String[] strArr2 = this.c;
        int i2 = this.b;
        this.b = i2 + 1;
        strArr2[i2] = str2;
        this.a.writeByte(50);
        this.a.b(str2);
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final XmlSerializer text(char[] cArr, int i, int i2) {
        b(4, new String(cArr, i, i2));
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final XmlSerializer text(String str) {
        b(4, str);
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public final void setOutput(Writer writer) {
        throw new UnsupportedOperationException();
    }
}
