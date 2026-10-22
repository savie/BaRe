package defpackage;

import java.util.Locale;
import java.util.Objects;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wj8 implements Comparable {
    public final byte a;
    public final byte b;
    public final byte c;

    static {
        Pattern.compile("\\b(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\b");
    }

    public wj8(byte b, byte b2, byte b3) {
        this.a = b;
        this.b = b2;
        this.c = b3;
    }

    public static byte a(int i) {
        if (i >= 0 && i <= 127) {
            return (byte) i;
        }
        c6.f("Version component out of supported range (0-127)");
        return (byte) 0;
    }

    public final int b(int i, int i2, int i3) {
        return Integer.compare(this.c | (this.a << 16) | (this.b << 8), (i << 16) | (i2 << 8) | i3);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        wj8 wj8Var = (wj8) obj;
        return b(wj8Var.a, wj8Var.b, wj8Var.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && wj8.class == obj.getClass()) {
            wj8 wj8Var = (wj8) obj;
            if (this.a == wj8Var.a && this.b == wj8Var.b && this.c == wj8Var.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Byte.valueOf(this.a), Byte.valueOf(this.b), Byte.valueOf(this.c));
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        return (this.a & 255) + "." + (this.b & 255) + "." + (this.c & 255);
    }
}
