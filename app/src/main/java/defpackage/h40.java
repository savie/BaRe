package defpackage;

import java.util.BitSet;
import java.util.function.Supplier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h40 extends op1 {
    public static void a(BitSet bitSet, Supplier supplier) {
        if (bitSet == null) {
            try {
                h40.class.getConstructor(String.class).newInstance(supplier.get());
            } catch (ReflectiveOperationException | SecurityException e) {
                new op1((String) supplier.get(), e);
            }
        }
    }
}
