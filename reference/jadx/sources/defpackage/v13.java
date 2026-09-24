package defpackage;

import java.util.ArrayList;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Supplier;
import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class v13 {
    public static final ConcurrentHashMap a;
    public static final yy8[] b;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        a = concurrentHashMap;
        int i = 0;
        concurrentHashMap.put(f60.k, new i13(i));
        concurrentHashMap.put(cx8.n, new r13());
        concurrentHashMap.put(dx8.d, new s13());
        concurrentHashMap.put(eh4.a, new t13());
        concurrentHashMap.put(zd8.d, new u13(0));
        concurrentHashMap.put(yd8.d, new i13(1));
        concurrentHashMap.put(py8.f, new j13(0));
        concurrentHashMap.put(sw8.d, new k13(0));
        concurrentHashMap.put(tw8.d, new Supplier() { // from class: l13
            public final /* synthetic */ int a = 0;

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (this.a) {
                    case 0:
                        return new tw8(tw8.d);
                    default:
                        return (Random) xe6.c.get();
                }
            }
        });
        concurrentHashMap.put(uw8.d, new m13(i));
        concurrentHashMap.put(vw8.d, new n13());
        concurrentHashMap.put(ww8.e, new o13());
        concurrentHashMap.put(xw8.d, new p13());
        concurrentHashMap.put(ml6.d, new q13());
        b = new yy8[0];
    }

    public static void a(yy8 yy8Var, byte[] bArr, int i, int i2, boolean z) throws ZipException {
        try {
            if (z) {
                yy8Var.c(bArr, i, i2);
            } else {
                yy8Var.h(bArr, i, i2);
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            String str = "Failed to parse corrupt ZIP extra field of type " + Integer.toHexString(yy8Var.a().a);
            int i3 = pz8.b;
            throw ((ZipException) new ZipException(str).initCause(e));
        }
    }

    public static yy8[] b(byte[] bArr, boolean z, sy8 sy8Var) throws ZipException {
        ArrayList arrayList = new ArrayList();
        int length = bArr.length;
        int i = 0;
        while (i <= length - 4) {
            nz8 nz8Var = new nz8(bArr, i);
            int i2 = i + 4;
            int i3 = new nz8(bArr, i + 2).a;
            if (i2 + i3 > length) {
                yy8 yy8VarA = sy8Var.a(bArr, i, length - i, z, i3);
                if (yy8VarA == null) {
                    break;
                }
                arrayList.add(yy8VarA);
                break;
            }
            byte[] bArr2 = bArr;
            boolean z2 = z;
            sy8 sy8Var2 = sy8Var;
            try {
                yy8 yy8VarC = sy8Var2.c(nz8Var);
                Objects.requireNonNull(yy8VarC, "createExtraField must not return null");
                yy8 yy8VarD = sy8Var2.d(yy8VarC, bArr2, i2, i3, z2);
                Objects.requireNonNull(yy8VarD, "fill must not return null");
                arrayList.add(yy8VarD);
                i += i3 + 4;
                sy8Var = sy8Var2;
                bArr = bArr2;
                z = z2;
            } catch (IllegalAccessException | InstantiationException e) {
                String message = e.getMessage();
                int i4 = pz8.b;
                throw ((ZipException) new ZipException(message).initCause(e));
            }
        }
        return (yy8[]) arrayList.toArray(b);
    }
}
