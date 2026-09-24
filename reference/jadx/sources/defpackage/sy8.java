package defpackage;

import java.util.Arrays;
import java.util.function.Supplier;
import java.util.zip.ZipException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class sy8 implements oe8 {
    public static final qy8 b;
    public static final /* synthetic */ sy8[] c;
    public final j15 a;

    static {
        j15 j15Var = j15.e;
        qy8 qy8Var = new qy8("BEST_EFFORT", 0, j15Var);
        b = qy8Var;
        sy8 sy8Var = new sy8("STRICT_FOR_KNOW_EXTRA_FIELDS", 1, j15Var);
        j15 j15Var2 = j15.d;
        c = new sy8[]{qy8Var, sy8Var, new ry8("ONLY_PARSEABLE_LENIENT", 2, j15Var2), new sy8("ONLY_PARSEABLE_STRICT", 3, j15Var2), new sy8("DRACONIC", 4, j15.c)};
    }

    public sy8(String str, int i, j15 j15Var) {
        super(str, i);
        this.a = j15Var;
    }

    public static yy8 b(yy8 yy8Var, byte[] bArr, int i, int i2, boolean z) {
        try {
            v13.a(yy8Var, bArr, i, i2, z);
            return yy8Var;
        } catch (ZipException unused) {
            se8 se8Var = new se8();
            se8Var.a = yy8Var.a();
            if (z) {
                se8Var.b = pz8.a(Arrays.copyOfRange(bArr, i, i2 + i));
            } else {
                se8Var.c = pz8.a(Arrays.copyOfRange(bArr, i, i2 + i));
            }
            return se8Var;
        }
    }

    public static sy8 valueOf(String str) {
        return (sy8) Enum.valueOf(sy8.class, str);
    }

    public static sy8[] values() {
        return (sy8[]) c.clone();
    }

    @Override // defpackage.oe8
    public final yy8 a(byte[] bArr, int i, int i2, boolean z, int i3) {
        return this.a.a(bArr, i, i2, z, i3);
    }

    public final yy8 c(nz8 nz8Var) {
        Supplier supplier = (Supplier) v13.a.get(nz8Var);
        yy8 yy8Var = supplier != null ? (yy8) supplier.get() : null;
        if (yy8Var != null) {
            return yy8Var;
        }
        se8 se8Var = new se8();
        se8Var.a = nz8Var;
        return se8Var;
    }

    public yy8 d(yy8 yy8Var, byte[] bArr, int i, int i2, boolean z) {
        v13.a(yy8Var, bArr, i, i2, z);
        return yy8Var;
    }
}
