package defpackage;

import com.microsoft.identity.deviceregistration.java.api.IDeviceRegistrationRecord;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j26 implements pi4 {
    public final List a;
    public final List b;

    public j26(List list, List list2) {
        this.a = list;
        this.b = list2;
    }

    @Override // defpackage.pi4
    public final qi4 a(Type type, Set set, nh5 nh5Var) {
        if (wx3.l(type) != IDeviceRegistrationRecord.class || !set.isEmpty()) {
            return null;
        }
        List list = this.b;
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(nh5Var.b((Type) list.get(i), yh8.a, null));
        }
        return new i26(this.a, list, arrayList).c();
    }
}
