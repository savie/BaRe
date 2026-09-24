package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public class v40 {
    public static volatile v40 a;

    static {
        v40 v40Var = new v40();
        String property = System.getProperty("org.tukaani.xz.ArrayCache");
        if (property == null) {
            property = "Dummy";
        }
        if (property.equals("Basic")) {
            a = uo0.a;
        } else {
            if (!property.equals("Dummy")) {
                throw new Error(eq3.k("Unsupported value '", property, "' in the system property org.tukaani.xz.ArrayCache. Supported values: Dummy, Basic"));
            }
            a = v40Var;
        }
    }

    public byte[] a(int i) {
        return new byte[i];
    }

    public int[] b(int i, boolean z) {
        return new int[i];
    }

    public void c(byte[] bArr) {
    }

    public void d(int[] iArr) {
    }
}
