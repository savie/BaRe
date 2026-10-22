package defpackage;

import java.math.MathContext;
import java.nio.file.attribute.FileTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ez8 extends ZipEntry {
    public int a;
    public long b;
    public int c;
    public int d;
    public long e;
    public yy8[] f;
    public pe8 k;
    public String n;
    public vu3 p;
    public long q;
    public long r;
    public long t;
    public boolean x;
    public long y;

    static {
        new LinkedList();
    }

    public final boolean a(Object obj) {
        byte[] bArr = wx3.a;
        if (this == obj) {
            return true;
        }
        if (obj == null || ez8.class != obj.getClass()) {
            return false;
        }
        ez8 ez8Var = (ez8) obj;
        if (!Objects.equals(getName(), ez8Var.getName())) {
            return false;
        }
        String comment = getComment();
        String comment2 = ez8Var.getComment();
        if (comment == null) {
            comment = "";
        }
        if (comment2 == null) {
            comment2 = "";
        }
        if (!Objects.equals(getLastModifiedTime(), ez8Var.getLastModifiedTime()) || !Objects.equals(getLastAccessTime(), ez8Var.getLastAccessTime()) || !Objects.equals(getCreationTime(), ez8Var.getCreationTime()) || !comment.equals(comment2) || this.c != ez8Var.c || this.d != ez8Var.d || this.e != ez8Var.e || this.a != ez8Var.a || this.b != ez8Var.b || getCrc() != ez8Var.getCrc() || getCompressedSize() != ez8Var.getCompressedSize() || !Arrays.equals(c(), ez8Var.c())) {
            return false;
        }
        byte[] extra = getExtra();
        if (extra == null) {
            extra = bArr;
        }
        byte[] extra2 = ez8Var.getExtra();
        if (extra2 != null) {
            bArr = extra2;
        }
        return Arrays.equals(extra, bArr) && this.q == ez8Var.q && this.r == ez8Var.r && this.p.equals(ez8Var.p);
    }

    public final yy8[] b() {
        yy8[] yy8VarArr = this.f;
        pe8 pe8Var = this.k;
        if (yy8VarArr == null) {
            return pe8Var == null ? v13.b : new yy8[]{pe8Var};
        }
        if (pe8Var == null) {
            return yy8VarArr;
        }
        yy8[] yy8VarArr2 = (yy8[]) Arrays.copyOf(yy8VarArr, yy8VarArr.length + 1);
        yy8VarArr2[this.f.length] = this.k;
        return yy8VarArr2;
    }

    public final byte[] c() {
        byte[] bArrE;
        yy8[] yy8VarArrB = b();
        ConcurrentHashMap concurrentHashMap = v13.a;
        int length = yy8VarArrB.length;
        boolean z = length > 0 && (yy8VarArrB[length + (-1)] instanceof pe8);
        int i = z ? length - 1 : length;
        int i2 = i * 4;
        for (yy8 yy8Var : yy8VarArrB) {
            i2 += yy8Var.f().a;
        }
        byte[] bArr = new byte[i2];
        int length2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            System.arraycopy(yy8VarArrB[i3].a().a(), 0, bArr, length2, 2);
            System.arraycopy(yy8VarArrB[i3].f().a(), 0, bArr, length2 + 2, 2);
            length2 += 4;
            byte[] bArrE2 = yy8VarArrB[i3].e();
            if (bArrE2 != null) {
                System.arraycopy(bArrE2, 0, bArr, length2, bArrE2.length);
                length2 += bArrE2.length;
            }
        }
        if (z && (bArrE = yy8VarArrB[length - 1].e()) != null) {
            System.arraycopy(bArrE, 0, bArr, length2, bArrE.length);
        }
        return bArr;
    }

    @Override // java.util.zip.ZipEntry
    public final Object clone() {
        ez8 ez8Var = (ez8) super.clone();
        ez8Var.c = this.c;
        ez8Var.e = this.e;
        ez8Var.k(b());
        return ez8Var;
    }

    public final yy8 d(nz8 nz8Var) {
        yy8[] yy8VarArr = this.f;
        if (yy8VarArr == null) {
            return null;
        }
        for (yy8 yy8Var : yy8VarArr) {
            if (nz8Var.equals(yy8Var.a())) {
                return yy8Var;
            }
        }
        return null;
    }

    public final int e() {
        return getName().hashCode();
    }

    public final boolean equals(Object obj) {
        if (a(obj)) {
            ez8 ez8Var = (ez8) obj;
            if (this.q == ez8Var.q && this.r == ez8Var.r && this.t == ez8Var.t) {
                return true;
            }
        }
        return false;
    }

    public final void f(yy8 yy8Var) {
        if (yy8Var instanceof pe8) {
            this.k = (pe8) yy8Var;
            return;
        }
        if (this.f == null) {
            this.f = new yy8[]{yy8Var};
            return;
        }
        if (d(yy8Var.a()) != null) {
            h(yy8Var.a());
        }
        yy8[] yy8VarArr = this.f;
        yy8[] yy8VarArr2 = (yy8[]) Arrays.copyOf(yy8VarArr, yy8VarArr.length + 1);
        yy8VarArr2[yy8VarArr2.length - 1] = yy8Var;
        this.f = yy8VarArr2;
    }

    @Override // java.util.zip.ZipEntry
    public final int getMethod() {
        return this.a;
    }

    @Override // java.util.zip.ZipEntry
    public final String getName() {
        String str = this.n;
        return str == null ? super.getName() : str;
    }

    @Override // java.util.zip.ZipEntry
    public final long getSize() {
        return this.b;
    }

    @Override // java.util.zip.ZipEntry
    public final long getTime() {
        if (this.x) {
            return getLastModifiedTime().toMillis();
        }
        long j = this.y;
        return j != -1 ? j : super.getTime();
    }

    public final void h(nz8 nz8Var) {
        if (this.f == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (yy8 yy8Var : this.f) {
            if (!nz8Var.equals(yy8Var.a())) {
                arrayList.add(yy8Var);
            }
        }
        if (this.f.length == arrayList.size()) {
            return;
        }
        this.f = (yy8[]) arrayList.toArray(v13.b);
    }

    @Override // java.util.zip.ZipEntry
    public final int hashCode() {
        int iE = e() * 3;
        long j = this.q;
        return iE + ((int) j) + ((int) (j >> 32));
    }

    public final void i(yy8[] yy8VarArr, boolean z) {
        if (this.f == null) {
            k(yy8VarArr);
            return;
        }
        for (yy8 yy8Var : yy8VarArr) {
            yy8 yy8VarD = yy8Var instanceof pe8 ? this.k : d(yy8Var.a());
            if (yy8VarD == null) {
                f(yy8Var);
            } else {
                byte[] bArrD = z ? yy8Var.d() : yy8Var.e();
                if (z) {
                    try {
                        yy8VarD.c(bArrD, 0, bArrD.length);
                    } catch (ZipException unused) {
                        se8 se8Var = new se8();
                        se8Var.a = yy8VarD.a();
                        if (z) {
                            se8Var.b = pz8.a(bArrD);
                            se8Var.c = pz8.a(yy8VarD.e());
                        } else {
                            se8Var.b = pz8.a(yy8VarD.d());
                            se8Var.c = pz8.a(bArrD);
                        }
                        h(yy8VarD.a());
                        f(se8Var);
                    }
                } else {
                    yy8VarD.h(bArrD, 0, bArrD.length);
                }
            }
        }
        j();
    }

    @Override // java.util.zip.ZipEntry
    public final boolean isDirectory() {
        return getName().endsWith("/");
    }

    public final void j() {
        FileTime fileTimeFrom;
        FileTime fileTimeFrom2;
        byte[] bArrD;
        yy8[] yy8VarArrB = b();
        ConcurrentHashMap concurrentHashMap = v13.a;
        int length = yy8VarArrB.length;
        boolean z = length > 0 && (yy8VarArrB[length + (-1)] instanceof pe8);
        int i = z ? length - 1 : length;
        int i2 = i * 4;
        for (yy8 yy8Var : yy8VarArrB) {
            i2 += yy8Var.b().a;
        }
        byte[] bArr = new byte[i2];
        int length2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            System.arraycopy(yy8VarArrB[i3].a().a(), 0, bArr, length2, 2);
            System.arraycopy(yy8VarArrB[i3].b().a(), 0, bArr, length2 + 2, 2);
            length2 += 4;
            byte[] bArrD2 = yy8VarArrB[i3].d();
            if (bArrD2 != null) {
                System.arraycopy(bArrD2, 0, bArr, length2, bArrD2.length);
                length2 += bArrD2.length;
            }
        }
        if (z && (bArrD = yy8VarArrB[length - 1].d()) != null) {
            System.arraycopy(bArrD, 0, bArr, length2, bArrD.length);
        }
        super.setExtra(bArr);
        yy8 yy8VarD = d(cx8.n);
        if (yy8VarD instanceof cx8) {
            cx8 cx8Var = (cx8) yy8VarD;
            boolean z2 = cx8Var.b;
            FileTime fileTimeFrom3 = null;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            if (z2) {
                lz8 lz8Var = cx8Var.e;
                if (lz8Var != null) {
                    long j = (int) lz8Var.a;
                    MathContext mathContext = ha3.a;
                    fileTimeFrom2 = FileTime.from(j, timeUnit);
                } else {
                    fileTimeFrom2 = null;
                }
                if (fileTimeFrom2 != null) {
                    super.setLastModifiedTime(fileTimeFrom2);
                    this.y = fileTimeFrom2.toMillis();
                    this.x = true;
                }
            }
            if (cx8Var.c) {
                lz8 lz8Var2 = cx8Var.f;
                if (lz8Var2 != null) {
                    long j2 = (int) lz8Var2.a;
                    MathContext mathContext2 = ha3.a;
                    fileTimeFrom = FileTime.from(j2, timeUnit);
                } else {
                    fileTimeFrom = null;
                }
                if (fileTimeFrom != null) {
                    super.setLastAccessTime(fileTimeFrom);
                }
            }
            if (cx8Var.d) {
                lz8 lz8Var3 = cx8Var.k;
                if (lz8Var3 != null) {
                    long j3 = (int) lz8Var3.a;
                    MathContext mathContext3 = ha3.a;
                    fileTimeFrom3 = FileTime.from(j3, timeUnit);
                }
                if (fileTimeFrom3 != null) {
                    super.setCreationTime(fileTimeFrom3);
                }
            }
        }
        yy8 yy8VarD2 = d(sw8.d);
        if (yy8VarD2 instanceof sw8) {
            sw8 sw8Var = (sw8) yy8VarD2;
            FileTime fileTimeG = sw8.g(sw8Var.a);
            if (fileTimeG != null) {
                super.setLastModifiedTime(fileTimeG);
                this.y = fileTimeG.toMillis();
                this.x = true;
            }
            FileTime fileTimeG2 = sw8.g(sw8Var.b);
            if (fileTimeG2 != null) {
                super.setLastAccessTime(fileTimeG2);
            }
            FileTime fileTimeG3 = sw8.g(sw8Var.c);
            if (fileTimeG3 != null) {
                super.setCreationTime(fileTimeG3);
            }
        }
    }

    public final void k(yy8[] yy8VarArr) {
        this.k = null;
        ArrayList arrayList = new ArrayList();
        if (yy8VarArr != null) {
            for (yy8 yy8Var : yy8VarArr) {
                if (yy8Var instanceof pe8) {
                    this.k = (pe8) yy8Var;
                } else {
                    arrayList.add(yy8Var);
                }
            }
        }
        this.f = (yy8[]) arrayList.toArray(v13.b);
        j();
    }

    public final void l() {
        nz8 nz8Var = cx8.n;
        if (d(nz8Var) != null) {
            h(nz8Var);
        }
        nz8 nz8Var2 = sw8.d;
        if (d(nz8Var2) != null) {
            h(nz8Var2);
        }
        if ((getLastAccessTime() == null && getCreationTime() == null) ? this.x : true) {
            FileTime lastModifiedTime = getLastModifiedTime();
            FileTime lastAccessTime = getLastAccessTime();
            FileTime creationTime = getCreationTime();
            MathContext mathContext = ha3.a;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            long j = lastModifiedTime != null ? lastModifiedTime.to(timeUnit) : 0L;
            if (-2147483648L <= j && j <= 2147483647L) {
                long j2 = lastAccessTime != null ? lastAccessTime.to(timeUnit) : 0L;
                if (-2147483648L <= j2 && j2 <= 2147483647L) {
                    long j3 = creationTime != null ? creationTime.to(timeUnit) : 0L;
                    if (-2147483648L <= j3 && j3 <= 2147483647L) {
                        cx8 cx8Var = new cx8();
                        if (lastModifiedTime != null) {
                            lz8 lz8VarI = cx8.i(lastModifiedTime);
                            cx8Var.b = true;
                            cx8Var.a = (byte) (cx8Var.a | 1);
                            cx8Var.e = lz8VarI;
                        }
                        if (lastAccessTime != null) {
                            lz8 lz8VarI2 = cx8.i(lastAccessTime);
                            cx8Var.c = true;
                            cx8Var.a = (byte) (cx8Var.a | 2);
                            cx8Var.f = lz8VarI2;
                        }
                        if (creationTime != null) {
                            lz8 lz8VarI3 = cx8.i(creationTime);
                            cx8Var.d = true;
                            cx8Var.a = (byte) (cx8Var.a | 4);
                            cx8Var.k = lz8VarI3;
                        }
                        f(cx8Var);
                    }
                }
            }
            sw8 sw8Var = new sw8();
            if (lastModifiedTime != null) {
                sw8Var.a = new uy8(ha3.b(lastModifiedTime));
            }
            if (lastAccessTime != null) {
                sw8Var.b = new uy8(ha3.b(lastAccessTime));
            }
            if (creationTime != null) {
                sw8Var.c = new uy8(ha3.b(creationTime));
            }
            f(sw8Var);
        }
        j();
    }

    public final void m(String str) {
        if (str != null && this.d == 0 && !str.contains("/")) {
            str = str.replace('\\', '/');
        }
        this.n = str;
    }

    @Override // java.util.zip.ZipEntry
    public final ZipEntry setCreationTime(FileTime fileTime) {
        super.setCreationTime(fileTime);
        l();
        return this;
    }

    @Override // java.util.zip.ZipEntry
    public final void setExtra(byte[] bArr) {
        try {
            i(v13.b(bArr, true, sy8.b), true);
        } catch (ZipException e) {
            l0.g("Error parsing extra fields for entry: ", getName(), " - ", e.getMessage(), e);
        }
    }

    @Override // java.util.zip.ZipEntry
    public final ZipEntry setLastAccessTime(FileTime fileTime) {
        super.setLastAccessTime(fileTime);
        l();
        return this;
    }

    @Override // java.util.zip.ZipEntry
    public final ZipEntry setLastModifiedTime(FileTime fileTime) {
        super.setLastModifiedTime(fileTime);
        this.y = fileTime.toMillis();
        this.x = true;
        l();
        return this;
    }

    @Override // java.util.zip.ZipEntry
    public final void setMethod(int i) {
        if (i >= 0) {
            this.a = i;
        } else {
            c6.f(fz5.j(i, "ZIP compression method cannot be negative: "));
        }
    }

    @Override // java.util.zip.ZipEntry
    public final void setSize(long j) {
        if (j >= 0) {
            this.b = j;
        } else {
            c6.f("Invalid entry size");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005b, code lost:
    
        if (r0 != 2162688) goto L12;
     */
    @Override // java.util.zip.ZipEntry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setTime(long r7) {
        /*
            r6 = this;
            r0 = 4036608000000(0x3abd8960000, double:1.994349338528E-311)
            int r0 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r0 > 0) goto L69
            long r0 = defpackage.pz8.a
            int r0 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r0 == 0) goto L5d
            java.time.Instant r0 = java.time.Instant.ofEpochMilli(r7)
            java.time.ZoneId r1 = java.time.ZoneId.systemDefault()
            java.time.LocalDateTime r0 = java.time.LocalDateTime.ofInstant(r0, r1)
            int r1 = r0.getYear()
            r2 = 2162688(0x210000, double:1.06851E-317)
            r4 = 1980(0x7bc, float:2.775E-42)
            if (r1 >= r4) goto L28
            r0 = r2
            goto L59
        L28:
            int r1 = r0.getYear()
            int r1 = r1 - r4
            int r1 = r1 << 25
            int r4 = r0.getMonthValue()
            int r4 = r4 << 21
            r1 = r1 | r4
            int r4 = r0.getDayOfMonth()
            int r4 = r4 << 16
            r1 = r1 | r4
            int r4 = r0.getHour()
            int r4 = r4 << 11
            r1 = r1 | r4
            int r4 = r0.getMinute()
            int r4 = r4 << 5
            r1 = r1 | r4
            int r0 = r0.getSecond()
            int r0 = r0 >> 1
            r0 = r0 | r1
            long r0 = (long) r0
            r4 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r4
        L59:
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto L6b
        L5d:
            super.setTime(r7)
            r6.y = r7
            r7 = 0
            r6.x = r7
            r6.l()
            return
        L69:
            int r0 = defpackage.pz8.b
        L6b:
            java.nio.file.attribute.FileTime r7 = java.nio.file.attribute.FileTime.fromMillis(r7)
            r6.setLastModifiedTime(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ez8.setTime(long):void");
    }
}
