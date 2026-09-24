package defpackage;

import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ir9 extends mo9 {
    public static final WeakReference d = new WeakReference(null);
    public WeakReference c;

    public ir9(byte[] bArr) {
        super(bArr);
        this.c = d;
    }

    @Override // defpackage.mo9
    public final byte[] q() {
        byte[] bArrS;
        synchronized (this) {
            try {
                bArrS = (byte[]) this.c.get();
                if (bArrS == null) {
                    bArrS = s();
                    this.c = new WeakReference(bArrS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrS;
    }

    public abstract byte[] s();
}
