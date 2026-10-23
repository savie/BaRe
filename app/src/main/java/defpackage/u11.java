package defpackage;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class u11 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ jh6 b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ u11(w20 w20Var, List list, jh6 jh6Var) {
        this.c = w20Var;
        this.d = list;
        this.b = jh6Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        jh6 jh6Var = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i2) {
            case 0:
                v11 v11Var = (v11) obj;
                Integer num = ((Integer[]) obj2)[jh6Var.a];
                int iIntValue = num != null ? num.intValue() : -1;
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putInt("max_call_backups", iIntValue).apply();
                v11Var.r();
                return;
            default:
                ((w20) obj2).invoke(((List) obj).get(jh6Var.a));
                return;
        }
    }

    public /* synthetic */ u11(Integer[] numArr, jh6 jh6Var, v11 v11Var) {
        this.c = numArr;
        this.b = jh6Var;
        this.d = v11Var;
    }
}
