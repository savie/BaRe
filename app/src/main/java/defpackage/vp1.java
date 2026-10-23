package defpackage;

import android.content.DialogInterface;
import androidx.fragment.app.u;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vp1 {
    public static void a(u uVar, xp1 xp1Var, final mt3 mt3Var) {
        int i;
        xp1Var.getClass();
        xp1.Companion.getClass();
        final xp1[] xp1VarArrA = wp1.a();
        ArrayList arrayList = new ArrayList(2);
        for (int i2 = 0; i2 < 2; i2++) {
            xp1 xp1Var2 = xp1VarArrA[i2];
            StringBuilder sb = new StringBuilder();
            xp1Var2.getClass();
            switch (up1.a[xp1Var2.ordinal()]) {
                case 1:
                    i = R.string.compression_level_type_store;
                    break;
                case 2:
                    i = R.string.compression_level_type_fastest;
                    break;
                case 3:
                    i = R.string.compression_level_type_fast;
                    break;
                case 4:
                    i = R.string.compression_level_type_normal;
                    break;
                case 5:
                    i = R.string.compression_level_type_maximum;
                    break;
                case 6:
                    i = R.string.compression_level_type_ultra;
                    break;
                default:
                    q.j();
                    return;
            }
            SwiftApp.Companion companion = SwiftApp.d;
            String string = SwiftApp.Companion.c().getString(i);
            string.getClass();
            sb.append(string);
            xp1.Companion.getClass();
            if (xp1Var2 == xp1.DEFAULT) {
                sb.append(" (" + uVar.getString(R.string.default_word) + ")");
            }
            arrayList.add(sb.toString());
        }
        CharSequence[] charSequenceArr = (CharSequence[]) arrayList.toArray(new CharSequence[0]);
        final int iR0 = x50.r0(xp1VarArrA, xp1Var);
        s35 s35Var = new s35(uVar, R.style.M3AlertDialogTheme, new hv1(uVar, R.style.M3AlertDialogTheme), null);
        s35Var.v(R.string.compression_level);
        s35Var.u(charSequenceArr, iR0, new DialogInterface.OnClickListener() { // from class: tp1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                if (i3 != iR0) {
                    mt3Var.invoke(xp1VarArrA[i3]);
                }
                dialogInterface.dismiss();
            }
        });
        s35Var.m();
    }
}
