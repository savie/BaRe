package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.c6;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.ik4;
import defpackage.km4;
import defpackage.nn4;
import defpackage.ns4;
import defpackage.qj4;
import defpackage.tl4;
import defpackage.u48;
import defpackage.xb8;
import defpackage.zv1;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.Objects;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static final xb8 A;
    public static final xb8 B;
    public static final xb8 C;
    public static final xb8 a = new TypeAdapters$30(Class.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$1
        @Override // com.google.gson.b
        public final Object read(tl4 tl4Var) {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?\nSee ".concat("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("java-lang-class-unsupported")));
        }

        @Override // com.google.gson.b
        public final void write(nn4 nn4Var, Object obj) {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + ((Class) obj).getName() + ". Forgot to register a type adapter?\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("java-lang-class-unsupported"));
        }
    }.nullSafe());
    public static final xb8 b = new TypeAdapters$30(BitSet.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$2
        @Override // com.google.gson.b
        public final Object read(tl4 tl4Var) throws IOException {
            boolean zNextBoolean;
            BitSet bitSet = new BitSet();
            tl4Var.beginArray();
            int iPeek = tl4Var.peek();
            int i2 = 0;
            while (iPeek != 2) {
                int iA = dj7.A(iPeek);
                if (iA == 5 || iA == 6) {
                    int iNextInt = tl4Var.nextInt();
                    if (iNextInt == 0) {
                        zNextBoolean = false;
                    } else {
                        if (iNextInt != 1) {
                            StringBuilder sbR = dj7.r(iNextInt, "Invalid bitset value ", ", expected 0 or 1; at path ");
                            sbR.append(tl4Var.getPreviousPath());
                            throw new km4(sbR.toString());
                        }
                        zNextBoolean = true;
                    }
                } else {
                    if (iA != 7) {
                        throw new km4("Invalid bitset value type: " + eq3.u(iPeek) + "; at path " + tl4Var.getPath());
                    }
                    zNextBoolean = tl4Var.nextBoolean();
                }
                if (zNextBoolean) {
                    bitSet.set(i2);
                }
                i2++;
                iPeek = tl4Var.peek();
            }
            tl4Var.endArray();
            return bitSet;
        }

        @Override // com.google.gson.b
        public final void write(nn4 nn4Var, Object obj) throws IOException {
            BitSet bitSet = (BitSet) obj;
            nn4Var.b();
            int length = bitSet.length();
            for (int i2 = 0; i2 < length; i2++) {
                nn4Var.G(bitSet.get(i2) ? 1L : 0L);
            }
            nn4Var.j();
        }
    }.nullSafe());
    public static final com.google.gson.b c;
    public static final xb8 d;
    public static final xb8 e;
    public static final xb8 f;
    public static final xb8 g;
    public static final xb8 h;
    public static final xb8 i;
    public static final xb8 j;
    public static final com.google.gson.b k;
    public static final com.google.gson.b l;
    public static final com.google.gson.b m;
    public static final xb8 n;
    public static final xb8 o;
    public static final xb8 p;
    public static final xb8 q;
    public static final xb8 r;
    public static final xb8 s;
    public static final xb8 t;
    public static final xb8 u;
    public static final xb8 v;
    public static final xb8 w;
    public static final xb8 x;
    public static final xb8 y;
    public static final xb8 z;

    static {
        com.google.gson.b bVar = new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$3
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                int iPeek = tl4Var.peek();
                if (iPeek != 9) {
                    return iPeek == 6 ? Boolean.valueOf(Boolean.parseBoolean(tl4Var.nextString())) : Boolean.valueOf(tl4Var.nextBoolean());
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                nn4Var.J((Boolean) obj);
            }
        };
        c = new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$4
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() != 9) {
                    return Boolean.valueOf(tl4Var.nextString());
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Boolean bool = (Boolean) obj;
                nn4Var.S(bool == null ? "null" : bool.toString());
            }
        };
        d = new TypeAdapters$31(Boolean.TYPE, Boolean.class, bVar);
        e = new TypeAdapters$31(Byte.TYPE, Byte.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$5
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() == 9) {
                    tl4Var.nextNull();
                    return null;
                }
                try {
                    int iNextInt = tl4Var.nextInt();
                    if (iNextInt <= 255 && iNextInt >= -128) {
                        return Byte.valueOf((byte) iNextInt);
                    }
                    StringBuilder sbR = dj7.r(iNextInt, "Lossy conversion from ", " to byte; at path ");
                    sbR.append(tl4Var.getPreviousPath());
                    throw new km4(sbR.toString());
                } catch (NumberFormatException e2) {
                    throw new km4(e2);
                }
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Number number = (Number) obj;
                if (number == null) {
                    nn4Var.r();
                } else {
                    nn4Var.G(number.byteValue());
                }
            }
        });
        f = new TypeAdapters$31(Short.TYPE, Short.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$6
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() == 9) {
                    tl4Var.nextNull();
                    return null;
                }
                try {
                    int iNextInt = tl4Var.nextInt();
                    if (iNextInt <= 65535 && iNextInt >= -32768) {
                        return Short.valueOf((short) iNextInt);
                    }
                    StringBuilder sbR = dj7.r(iNextInt, "Lossy conversion from ", " to short; at path ");
                    sbR.append(tl4Var.getPreviousPath());
                    throw new km4(sbR.toString());
                } catch (NumberFormatException e2) {
                    throw new km4(e2);
                }
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Number number = (Number) obj;
                if (number == null) {
                    nn4Var.r();
                } else {
                    nn4Var.G(number.shortValue());
                }
            }
        });
        g = new TypeAdapters$31(Integer.TYPE, Integer.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$7
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() == 9) {
                    tl4Var.nextNull();
                    return null;
                }
                try {
                    return Integer.valueOf(tl4Var.nextInt());
                } catch (NumberFormatException e2) {
                    throw new km4(e2);
                }
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Number number = (Number) obj;
                if (number == null) {
                    nn4Var.r();
                } else {
                    nn4Var.G(number.intValue());
                }
            }
        });
        h = new TypeAdapters$30(AtomicInteger.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$8
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) {
                try {
                    return new AtomicInteger(tl4Var.nextInt());
                } catch (NumberFormatException e2) {
                    throw new km4(e2);
                }
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                nn4Var.G(((AtomicInteger) obj).get());
            }
        }.nullSafe());
        i = new TypeAdapters$30(AtomicBoolean.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$10
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) {
                return new AtomicBoolean(tl4Var.nextBoolean());
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                nn4Var.U(((AtomicBoolean) obj).get());
            }
        }.nullSafe());
        j = new TypeAdapters$30(AtomicIntegerArray.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$11
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                ArrayList arrayList = new ArrayList();
                tl4Var.beginArray();
                while (tl4Var.hasNext()) {
                    try {
                        arrayList.add(Integer.valueOf(tl4Var.nextInt()));
                    } catch (NumberFormatException e2) {
                        throw new km4(e2);
                    }
                }
                tl4Var.endArray();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
                nn4Var.b();
                int length = atomicIntegerArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    nn4Var.G(atomicIntegerArray.get(i2));
                }
                nn4Var.j();
            }
        }.nullSafe());
        k = new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$13
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() == 9) {
                    tl4Var.nextNull();
                    return null;
                }
                try {
                    return Long.valueOf(tl4Var.nextLong());
                } catch (NumberFormatException e2) {
                    throw new km4(e2);
                }
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Number number = (Number) obj;
                if (number == null) {
                    nn4Var.r();
                } else {
                    nn4Var.G(number.longValue());
                }
            }
        };
        new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$14
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() != 9) {
                    return Long.valueOf(tl4Var.nextLong());
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Number number = (Number) obj;
                if (number == null) {
                    nn4Var.r();
                } else {
                    nn4Var.S(number.toString());
                }
            }
        };
        final boolean z2 = false;
        new com.google.gson.b(z2) { // from class: com.google.gson.internal.bind.TypeAdapters$FloatAdapter
            public final boolean a;

            {
                this.a = z2;
            }

            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() != 9) {
                    return Float.valueOf((float) tl4Var.nextDouble());
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Number numberValueOf = (Number) obj;
                if (numberValueOf == null) {
                    nn4Var.r();
                    return;
                }
                float fFloatValue = numberValueOf.floatValue();
                if (this.a) {
                    b.a(fFloatValue);
                }
                if (!(numberValueOf instanceof Float)) {
                    numberValueOf = Float.valueOf(fFloatValue);
                }
                nn4Var.O(numberValueOf);
            }
        };
        final boolean z3 = true;
        l = new com.google.gson.b(z3) { // from class: com.google.gson.internal.bind.TypeAdapters$FloatAdapter
            public final boolean a;

            {
                this.a = z3;
            }

            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() != 9) {
                    return Float.valueOf((float) tl4Var.nextDouble());
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Number numberValueOf = (Number) obj;
                if (numberValueOf == null) {
                    nn4Var.r();
                    return;
                }
                float fFloatValue = numberValueOf.floatValue();
                if (this.a) {
                    b.a(fFloatValue);
                }
                if (!(numberValueOf instanceof Float)) {
                    numberValueOf = Float.valueOf(fFloatValue);
                }
                nn4Var.O(numberValueOf);
            }
        };
        new com.google.gson.b(z2) { // from class: com.google.gson.internal.bind.TypeAdapters$DoubleAdapter
            public final boolean a;

            {
                this.a = z2;
            }

            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() != 9) {
                    return Double.valueOf(tl4Var.nextDouble());
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Number number = (Number) obj;
                if (number == null) {
                    nn4Var.r();
                    return;
                }
                double dDoubleValue = number.doubleValue();
                if (this.a) {
                    b.a(dDoubleValue);
                }
                nn4Var.D(dDoubleValue);
            }
        };
        m = new com.google.gson.b(z3) { // from class: com.google.gson.internal.bind.TypeAdapters$DoubleAdapter
            public final boolean a;

            {
                this.a = z3;
            }

            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() != 9) {
                    return Double.valueOf(tl4Var.nextDouble());
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Number number = (Number) obj;
                if (number == null) {
                    nn4Var.r();
                    return;
                }
                double dDoubleValue = number.doubleValue();
                if (this.a) {
                    b.a(dDoubleValue);
                }
                nn4Var.D(dDoubleValue);
            }
        };
        n = new TypeAdapters$31(Character.TYPE, Character.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$15
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() == 9) {
                    tl4Var.nextNull();
                    return null;
                }
                String strNextString = tl4Var.nextString();
                if (strNextString.length() == 1) {
                    return Character.valueOf(strNextString.charAt(0));
                }
                StringBuilder sbU = dj7.u("Expecting character, got: ", strNextString, "; at ");
                sbU.append(tl4Var.getPreviousPath());
                throw new km4(sbU.toString());
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Character ch = (Character) obj;
                nn4Var.S(ch == null ? null : String.valueOf(ch));
            }
        });
        com.google.gson.b bVar2 = new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$16
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                int iPeek = tl4Var.peek();
                if (iPeek != 9) {
                    return iPeek == 8 ? Boolean.toString(tl4Var.nextBoolean()) : tl4Var.nextString();
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                nn4Var.S((String) obj);
            }
        };
        o = new TypeAdapters$30(BigDecimal.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$17
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() == 9) {
                    tl4Var.nextNull();
                    return null;
                }
                String strNextString = tl4Var.nextString();
                try {
                    return zv1.n(strNextString);
                } catch (NumberFormatException e2) {
                    StringBuilder sbU = dj7.u("Failed parsing '", strNextString, "' as BigDecimal; at path ");
                    sbU.append(tl4Var.getPreviousPath());
                    throw new km4(sbU.toString(), e2);
                }
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                nn4Var.O((BigDecimal) obj);
            }
        });
        p = new TypeAdapters$30(BigInteger.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$18
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() == 9) {
                    tl4Var.nextNull();
                    return null;
                }
                String strNextString = tl4Var.nextString();
                try {
                    zv1.b(strNextString);
                    return new BigInteger(strNextString);
                } catch (NumberFormatException e2) {
                    StringBuilder sbU = dj7.u("Failed parsing '", strNextString, "' as BigInteger; at path ");
                    sbU.append(tl4Var.getPreviousPath());
                    throw new km4(sbU.toString(), e2);
                }
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                nn4Var.O((BigInteger) obj);
            }
        });
        q = new TypeAdapters$30(ns4.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$19
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() != 9) {
                    return new ns4(tl4Var.nextString());
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                nn4Var.O((ns4) obj);
            }
        });
        r = new TypeAdapters$30(String.class, bVar2);
        s = new TypeAdapters$30(StringBuilder.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$20
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() != 9) {
                    return new StringBuilder(tl4Var.nextString());
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                StringBuilder sb = (StringBuilder) obj;
                nn4Var.S(sb == null ? null : sb.toString());
            }
        });
        t = new TypeAdapters$30(StringBuffer.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$21
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() != 9) {
                    return new StringBuffer(tl4Var.nextString());
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                StringBuffer stringBuffer = (StringBuffer) obj;
                nn4Var.S(stringBuffer == null ? null : stringBuffer.toString());
            }
        });
        u = new TypeAdapters$30(URL.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$22
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() == 9) {
                    tl4Var.nextNull();
                    return null;
                }
                String strNextString = tl4Var.nextString();
                if (strNextString.equals("null")) {
                    return null;
                }
                return new URL(strNextString);
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                URL url = (URL) obj;
                nn4Var.S(url == null ? null : url.toExternalForm());
            }
        });
        v = new TypeAdapters$30(URI.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$23
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() == 9) {
                    tl4Var.nextNull();
                    return null;
                }
                try {
                    String strNextString = tl4Var.nextString();
                    if (strNextString.equals("null")) {
                        return null;
                    }
                    return new URI(strNextString);
                } catch (URISyntaxException e2) {
                    throw new ik4(e2);
                }
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                URI uri = (URI) obj;
                nn4Var.S(uri == null ? null : uri.toASCIIString());
            }
        });
        final com.google.gson.b bVar3 = new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$24
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() != 9) {
                    return InetAddress.getByName(tl4Var.nextString());
                }
                tl4Var.nextNull();
                return null;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                InetAddress inetAddress = (InetAddress) obj;
                nn4Var.S(inetAddress == null ? null : inetAddress.getHostAddress());
            }
        };
        final Class<InetAddress> cls = InetAddress.class;
        w = new xb8() { // from class: com.google.gson.internal.bind.TypeAdapters$33
            @Override // defpackage.xb8
            public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
                final Class<?> rawType = typeToken.getRawType();
                if (cls.isAssignableFrom(rawType)) {
                    return new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$33.1
                        @Override // com.google.gson.b
                        public final Object read(tl4 tl4Var) {
                            Object obj = bVar3.read(tl4Var);
                            if (obj != null) {
                                Class cls2 = rawType;
                                if (!cls2.isInstance(obj)) {
                                    throw new km4("Expected a " + cls2.getName() + " but was " + obj.getClass().getName() + "; at path " + tl4Var.getPreviousPath());
                                }
                            }
                            return obj;
                        }

                        @Override // com.google.gson.b
                        public final void write(nn4 nn4Var, Object obj) {
                            bVar3.write(nn4Var, obj);
                        }
                    };
                }
                return null;
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + bVar3 + "]";
            }
        };
        x = new TypeAdapters$30(UUID.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$25
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() == 9) {
                    tl4Var.nextNull();
                    return null;
                }
                String strNextString = tl4Var.nextString();
                try {
                    return UUID.fromString(strNextString);
                } catch (IllegalArgumentException e2) {
                    StringBuilder sbU = dj7.u("Failed parsing '", strNextString, "' as UUID; at path ");
                    sbU.append(tl4Var.getPreviousPath());
                    throw new km4(sbU.toString(), e2);
                }
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                UUID uuid = (UUID) obj;
                nn4Var.S(uuid == null ? null : uuid.toString());
            }
        });
        y = new TypeAdapters$30(Currency.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$26
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) {
                String strNextString = tl4Var.nextString();
                try {
                    return Currency.getInstance(strNextString);
                } catch (IllegalArgumentException e2) {
                    StringBuilder sbU = dj7.u("Failed parsing '", strNextString, "' as Currency; at path ");
                    sbU.append(tl4Var.getPreviousPath());
                    throw new km4(sbU.toString(), e2);
                }
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                nn4Var.S(((Currency) obj).getCurrencyCode());
            }
        }.nullSafe());
        final TypeAdapters$27 typeAdapters$27 = new TypeAdapters$27("year", "month", "dayOfMonth", "hourOfDay", "minute", "second");
        z = new xb8() { // from class: com.google.gson.internal.bind.TypeAdapters$32
            @Override // defpackage.xb8
            public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
                Class rawType = typeToken.getRawType();
                if (rawType == Calendar.class || rawType == GregorianCalendar.class) {
                    return typeAdapters$27;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + Calendar.class.getName() + "+" + GregorianCalendar.class.getName() + ",adapter=" + typeAdapters$27 + "]";
            }
        };
        A = new TypeAdapters$30(Locale.class, new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$28
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() == 9) {
                    tl4Var.nextNull();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(tl4Var.nextString(), "_");
                String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (strNextToken2 == null && strNextToken3 == null) {
                    return new Locale(strNextToken);
                }
                return strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                Locale locale = (Locale) obj;
                nn4Var.S(locale == null ? null : locale.toString());
            }
        });
        final JsonElementTypeAdapter jsonElementTypeAdapter = JsonElementTypeAdapter.a;
        final Class<qj4> cls2 = qj4.class;
        B = new xb8() { // from class: com.google.gson.internal.bind.TypeAdapters$33
            @Override // defpackage.xb8
            public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
                final Class rawType = typeToken.getRawType();
                if (cls2.isAssignableFrom(rawType)) {
                    return new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$33.1
                        @Override // com.google.gson.b
                        public final Object read(tl4 tl4Var) {
                            Object obj = jsonElementTypeAdapter.read(tl4Var);
                            if (obj != null) {
                                Class cls3 = rawType;
                                if (!cls3.isInstance(obj)) {
                                    throw new km4("Expected a " + cls3.getName() + " but was " + obj.getClass().getName() + "; at path " + tl4Var.getPreviousPath());
                                }
                            }
                            return obj;
                        }

                        @Override // com.google.gson.b
                        public final void write(nn4 nn4Var, Object obj) {
                            jsonElementTypeAdapter.write(nn4Var, obj);
                        }
                    };
                }
                return null;
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls2.getName() + ",adapter=" + jsonElementTypeAdapter + "]";
            }
        };
        C = EnumTypeAdapter.d;
    }

    public static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public static int b(long j2) {
        int i2 = (int) j2;
        if (i2 == j2) {
            return i2;
        }
        c6.f(u48.l(j2, "Too big for an int: "));
        return 0;
    }

    public static com.google.gson.b c(final com.google.gson.b bVar) {
        Objects.requireNonNull(bVar);
        return new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$9
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) {
                return new AtomicLong(((Number) bVar.read(tl4Var)).longValue());
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) {
                bVar.write(nn4Var, Long.valueOf(((AtomicLong) obj).get()));
            }
        }.nullSafe();
    }

    public static com.google.gson.b d(final com.google.gson.b bVar) {
        return new com.google.gson.b() { // from class: com.google.gson.internal.bind.TypeAdapters$12
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                ArrayList arrayList = new ArrayList();
                tl4Var.beginArray();
                while (tl4Var.hasNext()) {
                    arrayList.add(Long.valueOf(((Number) bVar.read(tl4Var)).longValue()));
                }
                tl4Var.endArray();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicLongArray.set(i2, ((Long) arrayList.get(i2)).longValue());
                }
                return atomicLongArray;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                nn4Var.b();
                int length = atomicLongArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    bVar.write(nn4Var, Long.valueOf(atomicLongArray.get(i2)));
                }
                nn4Var.j();
            }
        }.nullSafe();
    }

    public static xb8 e(final com.google.gson.b bVar, final TypeToken typeToken) {
        return new xb8() { // from class: com.google.gson.internal.bind.TypeAdapters$29
            @Override // defpackage.xb8
            public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken2) {
                if (typeToken2.equals(typeToken)) {
                    return bVar;
                }
                return null;
            }
        };
    }

    public static xb8 f(Class cls, com.google.gson.b bVar) {
        return new TypeAdapters$30(cls, bVar);
    }

    public static xb8 g(Class cls, Class cls2, com.google.gson.b bVar) {
        return new TypeAdapters$31(cls, cls2, bVar);
    }
}
