package defpackage;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum us6 {
    UNKNOWN(0),
    SMB_2_0_2(514),
    SMB_2_1(528),
    SMB_2XX(767),
    SMB_3_0(768),
    SMB_3_0_2(770),
    SMB_3_1_1(785);

    public final int a;

    us6(int i) {
        this.a = i;
    }

    public static boolean b(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (((us6) it.next()).a()) {
                return true;
            }
        }
        return false;
    }

    public final boolean a() {
        return this == SMB_3_0 || this == SMB_3_0_2 || this == SMB_3_1_1;
    }
}
