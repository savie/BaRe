package defpackage;

import java.util.Arrays;
import java.util.List;
import org.swiftapps.rootservice.ShellHelper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum ip6 {
    SH,
    SU,
    SHIZUKU,
    ANY;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final List<String> runCommands(String[] strArr) {
        List listA;
        strArr.getClass();
        mp6 mp6Var = mp6.a;
        if (mp6.g || this == SU) {
            listA = ShellHelper.INSTANCE.su((String[]) Arrays.copyOf(strArr, strArr.length)).b().a();
            listA.getClass();
        } else if (mp6.g() && this == SHIZUKU) {
            gv7 gv7Var = qe7.a;
            listA = qe7.c((String[]) Arrays.copyOf(strArr, strArr.length)).a;
        } else {
            listA = mp6.l((String[]) Arrays.copyOf(strArr, strArr.length));
        }
        return el1.Q0(listA);
    }
}
