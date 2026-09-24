package defpackage;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import androidx.fragment.app.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wu {
    public static yu a() {
        int id = yu.Granted.getId();
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                id = sharedPreferences.getInt("restore_runtime_permissions", id);
                return b(Integer.valueOf(id));
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
        }
    }

    public static yu b(Integer num) {
        Object next;
        if (num != null) {
            int iIntValue = num.intValue();
            yu.Companion.getClass();
            Iterator it = ((z3) yu.getEntries()).iterator();
            do {
                w3 w3Var = (w3) it;
                if (!w3Var.hasNext()) {
                    next = null;
                    break;
                }
                next = w3Var.next();
            } while (((yu) next).getId() != iIntValue);
            yu yuVar = (yu) next;
            if (yuVar != null) {
                return yuVar;
            }
        }
        return yu.Granted;
    }

    public static void c(u uVar, yu yuVar, final mt3 mt3Var) {
        yuVar.getClass();
        List entries = yu.getEntries();
        ArrayList arrayList = new ArrayList(hl1.G0(entries, 10));
        w3 w3Var = new w3((z3) entries);
        while (w3Var.hasNext()) {
            arrayList.add(((yu) w3Var.next()).asDisplayString());
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        final kx2 kx2Var = (kx2) entries;
        final int iIndexOf = kx2Var.indexOf(yuVar);
        s35 s35Var = new s35(uVar, R.style.M3AlertDialogTheme, new hv1(uVar, R.style.M3AlertDialogTheme), null);
        s35Var.v(R.string.restore_runtime_permissions);
        s35Var.u(strArr, iIndexOf, new DialogInterface.OnClickListener() { // from class: vu
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (i != iIndexOf) {
                    mt3Var.invoke((yu) kx2Var.get(i));
                }
                dialogInterface.dismiss();
            }
        });
        s35Var.m();
    }
}
