package com.swiftapps.sba.internal.tar;

import defpackage.b27;
import defpackage.eq3;
import defpackage.fz5;
import defpackage.pe4;
import defpackage.xs1;
import defpackage.y17;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SbaTarEntryInfo {
    public static final y17 Companion = new y17();
    public static final int TYPE_BLOCK = 7;
    public static final int TYPE_CHARACTER = 6;
    public static final int TYPE_DIRECTORY = 2;
    public static final int TYPE_FIFO = 5;
    public static final int TYPE_FILE = 1;
    public static final int TYPE_HARDLINK = 4;
    public static final int TYPE_OTHER = 99;
    public static final int TYPE_SYMLINK = 3;
    public final String a;
    public final int b;
    public final String c;
    public final int d;
    public final long e;
    public final long f;
    public final long g;
    public final boolean h;
    public final String[] i;

    public SbaTarEntryInfo(String str, int i, String str2, int i2, long j, long j2, long j3, boolean z, String[] strArr) {
        str.getClass();
        strArr.getClass();
        this.a = str;
        this.b = i;
        this.c = str2;
        this.d = i2;
        this.e = j;
        this.f = j2;
        this.g = j3;
        this.h = z;
        this.i = (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SbaTarEntryInfo)) {
            return false;
        }
        SbaTarEntryInfo sbaTarEntryInfo = (SbaTarEntryInfo) obj;
        return this.a.equals(sbaTarEntryInfo.a) && this.b == sbaTarEntryInfo.b && pe4.d(this.c, sbaTarEntryInfo.c) && this.d == sbaTarEntryInfo.d && this.e == sbaTarEntryInfo.e && this.f == sbaTarEntryInfo.f && this.g == sbaTarEntryInfo.g && this.h == sbaTarEntryInfo.h && Arrays.equals(this.i, sbaTarEntryInfo.i);
    }

    public final b27 getEntryType() {
        b27.Companion.getClass();
        switch (this.b) {
            case 1:
                return b27.File;
            case 2:
                return b27.Directory;
            case 3:
                return b27.SymbolicLink;
            case 4:
                return b27.Hardlink;
            case 5:
                return b27.Fifo;
            case 6:
                return b27.CharacterDevice;
            case 7:
                return b27.BlockDevice;
            default:
                return b27.Other;
        }
    }

    public final String getLinkName() {
        return this.c;
    }

    public final int getMode() {
        return this.d;
    }

    public final long getMtimeMs() {
        return this.g;
    }

    public final String getName() {
        return this.a;
    }

    public final long getRealSize() {
        return this.f;
    }

    public final long getSize() {
        return this.e;
    }

    public final boolean getSparse() {
        return this.h;
    }

    public final int getType() {
        return this.b;
    }

    public final String[] getXattrNames() {
        String[] strArr = this.i;
        return (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public int hashCode() {
        int iHashCode = ((this.a.hashCode() * 31) + this.b) * 31;
        String str = this.c;
        return fz5.h(xs1.f(this.g, xs1.f(this.f, xs1.f(this.e, (((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.d) * 31, 31), 31), 31), 31, this.h) + Arrays.hashCode(this.i);
    }

    public final boolean isDirectory() {
        return this.b == 2;
    }

    public final boolean isFile() {
        return this.b == 1;
    }

    public final boolean isHardlink() {
        return this.b == 4;
    }

    public final boolean isSymbolicLink() {
        return this.b == 3;
    }

    public String toString() {
        b27 entryType = getEntryType();
        String string = Arrays.toString(this.i);
        string.getClass();
        StringBuilder sb = new StringBuilder("SbaTarEntryInfo(name=");
        sb.append(this.a);
        sb.append(", type=");
        sb.append(this.b);
        sb.append(", entryType=");
        sb.append(entryType);
        sb.append(", linkName=");
        sb.append(this.c);
        sb.append(", mode=");
        sb.append(this.d);
        sb.append(", size=");
        sb.append(this.e);
        fz5.r(sb, ", realSize=", this.f, ", mtimeMs=");
        sb.append(this.g);
        sb.append(", sparse=");
        sb.append(this.h);
        return eq3.n(sb, ", xattrNames=", string, ")");
    }
}
