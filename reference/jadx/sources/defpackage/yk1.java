package defpackage;

import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yk1 implements pi4 {
    @Override // defpackage.pi4
    public final qi4 a(Type type, Set set, nh5 nh5Var) {
        Class clsL = wx3.l(type);
        if (set.isEmpty()) {
            if (clsL == List.class || clsL == Collection.class) {
                return new zk1(nh5Var.b(wx3.e(type), yh8.a, null)).c();
            }
            if (clsL == Set.class) {
                return new al1(nh5Var.b(wx3.e(type), yh8.a, null)).c();
            }
        }
        return null;
    }
}
