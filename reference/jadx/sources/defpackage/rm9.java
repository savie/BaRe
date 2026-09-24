package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rm9 implements Comparable {
    public static int c(byte b) {
        return (b >> 5) & 7;
    }

    public static rm9 d(byte... bArr) {
        bArr.getClass();
        vm9 vm9Var = new vm9(new ByteArrayInputStream(Arrays.copyOf(bArr, bArr.length)));
        try {
            return tu0.H(vm9Var);
        } finally {
            try {
                vm9Var.close();
            } catch (IOException unused) {
            }
        }
    }

    public int a() {
        return 0;
    }

    public final rm9 b(Class cls) throws qm9 {
        if (cls.isInstance(this)) {
            return (rm9) cls.cast(this);
        }
        throw new qm9(dj7.l("Expected a ", cls.getName(), " value, but got ", getClass().getName()));
    }

    public abstract int zza();
}
