package defpackage;

import java.util.Date;
import java.util.Objects;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iz3 extends TimeZone {
    public final int a;
    public final String b;

    public iz3(int i, int i2, boolean z) {
        if (i >= 24) {
            x5.f(i, " hours out of range");
            throw null;
        }
        if (i2 >= 60) {
            x5.f(i2, " minutes out of range");
            throw null;
        }
        int i3 = ((i * 60) + i2) * 60000;
        this.a = z ? -i3 : i3;
        StringBuilder sb = new StringBuilder(9);
        sb.append("GMT");
        sb.append(z ? '-' : '+');
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
        sb.append(':');
        sb.append((char) ((i2 / 10) + 48));
        sb.append((char) ((i2 % 10) + 48));
        this.b = sb.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof iz3)) {
            return false;
        }
        iz3 iz3Var = (iz3) obj;
        return this.a == iz3Var.a && Objects.equals(this.b, iz3Var.b);
    }

    @Override // java.util.TimeZone
    public final String getID() {
        return this.b;
    }

    @Override // java.util.TimeZone
    public final int getOffset(int i, int i2, int i3, int i4, int i5, int i6) {
        return this.a;
    }

    @Override // java.util.TimeZone
    public final int getRawOffset() {
        return this.a;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.a), this.b);
    }

    @Override // java.util.TimeZone
    public final boolean inDaylightTime(Date date) {
        return false;
    }

    @Override // java.util.TimeZone
    public final void setRawOffset(int i) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[GmtTimeZone id=\"");
        sb.append(this.b);
        sb.append("\",offset=");
        return eq3.m(sb, this.a, ']');
    }

    @Override // java.util.TimeZone
    public final boolean useDaylightTime() {
        return false;
    }
}
