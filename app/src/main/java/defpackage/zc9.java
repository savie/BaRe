package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class zc9 {
    public static /* synthetic */ boolean a(Unsafe unsafe, uc9 uc9Var, long j, Object obj, Object obj2) {
        while (!xc9.a(unsafe, uc9Var, j, obj, obj2)) {
            if (unsafe.getObject(uc9Var, j) != obj) {
                return false;
            }
        }
        return true;
    }
}
