package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v96 implements gr5 {
    public static final Charset f = Charset.forName("UTF-8");
    public static final h63 g;
    public static final h63 h;
    public static final u96 i;
    public OutputStream a;
    public final HashMap b;
    public final HashMap c;
    public final fr5 d;
    public final x96 e = new x96(this);

    static {
        f70 f70Var = new f70(1);
        HashMap map = new HashMap();
        map.put(r96.class, f70Var);
        g = new h63(Collections.unmodifiableMap(new HashMap(map)), "key");
        f70 f70Var2 = new f70(2);
        HashMap map2 = new HashMap();
        map2.put(r96.class, f70Var2);
        h = new h63(Collections.unmodifiableMap(new HashMap(map2)), "value");
        i = new u96();
    }

    public v96(ByteArrayOutputStream byteArrayOutputStream, HashMap map, HashMap map2, fr5 fr5Var) {
        this.a = byteArrayOutputStream;
        this.b = map;
        this.c = map2;
        this.d = fr5Var;
    }

    public static int k(h63 h63Var) {
        r96 r96Var = (r96) ((Annotation) h63Var.b.get(r96.class));
        if (r96Var != null) {
            return r96Var.tag();
        }
        throw new fw2("Field has no @Protobuf config");
    }

    @Override // defpackage.gr5
    public final gr5 a(h63 h63Var, Object obj) {
        i(h63Var, obj, true);
        return this;
    }

    public final void b(h63 h63Var, double d, boolean z) throws IOException {
        if (z && d == 0.0d) {
            return;
        }
        l((k(h63Var) << 3) | 1);
        this.a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(d).array());
    }

    public final void c(h63 h63Var, int i2, boolean z) {
        if (z && i2 == 0) {
            return;
        }
        r96 r96Var = (r96) ((Annotation) h63Var.b.get(r96.class));
        if (r96Var == null) {
            throw new fw2("Field has no @Protobuf config");
        }
        int iOrdinal = r96Var.intEncoding().ordinal();
        if (iOrdinal == 0) {
            l(r96Var.tag() << 3);
            l(i2);
        } else if (iOrdinal == 1) {
            l(r96Var.tag() << 3);
            l((i2 << 1) ^ (i2 >> 31));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            l((r96Var.tag() << 3) | 5);
            this.a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i2).array());
        }
    }

    @Override // defpackage.gr5
    public final gr5 d(h63 h63Var, boolean z) {
        c(h63Var, z ? 1 : 0, true);
        return this;
    }

    @Override // defpackage.gr5
    public final gr5 e(h63 h63Var, int i2) {
        c(h63Var, i2, true);
        return this;
    }

    @Override // defpackage.gr5
    public final gr5 f(h63 h63Var, double d) throws IOException {
        b(h63Var, d, true);
        return this;
    }

    @Override // defpackage.gr5
    public final gr5 g(h63 h63Var, long j) throws IOException {
        h(h63Var, j, true);
        return this;
    }

    public final void h(h63 h63Var, long j, boolean z) throws IOException {
        if (z && j == 0) {
            return;
        }
        r96 r96Var = (r96) ((Annotation) h63Var.b.get(r96.class));
        if (r96Var == null) {
            throw new fw2("Field has no @Protobuf config");
        }
        int iOrdinal = r96Var.intEncoding().ordinal();
        if (iOrdinal == 0) {
            l(r96Var.tag() << 3);
            m(j);
        } else if (iOrdinal == 1) {
            l(r96Var.tag() << 3);
            m((j >> 63) ^ (j << 1));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            l((r96Var.tag() << 3) | 1);
            this.a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
        }
    }

    public final void i(h63 h63Var, Object obj, boolean z) {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return;
            }
            l((k(h63Var) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f);
            l(bytes.length);
            this.a.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                i(h63Var, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                j(i, h63Var, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            b(h63Var, ((Double) obj).doubleValue(), z);
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z && fFloatValue == 0.0f) {
                return;
            }
            l((k(h63Var) << 3) | 5);
            this.a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            return;
        }
        if (obj instanceof Number) {
            h(h63Var, ((Number) obj).longValue(), z);
            return;
        }
        if (obj instanceof Boolean) {
            c(h63Var, ((Boolean) obj).booleanValue() ? 1 : 0, z);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z && bArr.length == 0) {
                return;
            }
            l((k(h63Var) << 3) | 2);
            l(bArr.length);
            this.a.write(bArr);
            return;
        }
        fr5 fr5Var = (fr5) this.b.get(obj.getClass());
        if (fr5Var != null) {
            j(fr5Var, h63Var, obj, z);
            return;
        }
        yi8 yi8Var = (yi8) this.c.get(obj.getClass());
        if (yi8Var != null) {
            x96 x96Var = this.e;
            x96Var.a = false;
            x96Var.c = h63Var;
            x96Var.b = z;
            yi8Var.a(obj, x96Var);
            return;
        }
        if (obj instanceof c15) {
            c(h63Var, ((c15) obj).a, true);
        } else if (obj instanceof Enum) {
            c(h63Var, ((Enum) obj).ordinal(), true);
        } else {
            j(this.d, h63Var, obj, z);
        }
    }

    public final void j(fr5 fr5Var, h63 h63Var, Object obj, boolean z) throws IOException {
        it4 it4Var = new it4();
        it4Var.a = 0L;
        try {
            OutputStream outputStream = this.a;
            this.a = it4Var;
            try {
                fr5Var.a(obj, this);
                this.a = outputStream;
                long j = it4Var.a;
                it4Var.close();
                if (z && j == 0) {
                    return;
                }
                l((k(h63Var) << 3) | 2);
                m(j);
                fr5Var.a(obj, this);
            } catch (Throwable th) {
                this.a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                it4Var.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void l(int i2) throws IOException {
        while (true) {
            long j = i2 & (-128);
            OutputStream outputStream = this.a;
            if (j == 0) {
                outputStream.write(i2 & 127);
                return;
            } else {
                outputStream.write((i2 & 127) | 128);
                i2 >>>= 7;
            }
        }
    }

    public final void m(long j) throws IOException {
        while (true) {
            long j2 = (-128) & j;
            OutputStream outputStream = this.a;
            if (j2 == 0) {
                outputStream.write(((int) j) & 127);
                return;
            } else {
                outputStream.write((((int) j) & 127) | 128);
                j >>>= 7;
            }
        }
    }
}
