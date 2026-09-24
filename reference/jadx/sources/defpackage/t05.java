package defpackage;

import android.content.DialogInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class t05 {
    public static void a(final sa1 sa1Var, Set set, mt3 mt3Var) {
        sa1Var.getClass();
        String string = q05.DEVICE.toString();
        SwiftApp.Companion companion = SwiftApp.d;
        final Map mapR0 = x65.r0(new pw5(string, SwiftApp.Companion.c().getString(R.string.device)), new pw5(q05.CLOUD.toString(), SwiftApp.Companion.c().getString(R.string.cloud)));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : mapR0.entrySet()) {
            if (set.contains(entry.getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        s35 s35Var = new s35(sa1Var, R.style.M3AlertDialogTheme, new hv1(sa1Var, R.style.M3AlertDialogTheme), null);
        s35Var.v(R.string.select_backup_locations);
        CharSequence[] charSequenceArr = (CharSequence[]) mapR0.values().toArray(new String[0]);
        Set setKeySet = mapR0.keySet();
        ArrayList arrayList = new ArrayList(hl1.G0(setKeySet, 10));
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            arrayList.add(Boolean.valueOf(set.contains((String) it.next())));
        }
        s35Var.o(charSequenceArr, el1.r1(arrayList), new DialogInterface.OnMultiChoiceClickListener() { // from class: s05
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
                dialogInterface.getClass();
                Map map = mapR0;
                String str = (String) el1.v1(map.keySet()).get(i);
                String str2 = (String) map.get(str);
                if (z && pe4.d(str, q05.CLOUD.toString())) {
                    tb1 tb1Var = tb1.a;
                    if (!qb1.m()) {
                        sa1.R(sa1Var, null, null, 3);
                        dialogInterface.dismiss();
                        return;
                    }
                }
                LinkedHashMap linkedHashMap3 = linkedHashMap2;
                if (!z) {
                } else if (str2 != null) {
                }
                ((wa) dialogInterface).f(-1).setEnabled(!linkedHashMap3.isEmpty());
            }
        });
        s35Var.s(R.string.ok, new wm3(1, mt3Var, linkedHashMap2));
        s35Var.q(R.string.cancel, null);
        s35Var.m();
    }
}
