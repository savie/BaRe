package defpackage;

import android.content.DialogInterface;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ii5 implements DialogInterface.OnMultiChoiceClickListener {
    public final /* synthetic */ ji5 a;

    public ii5(ji5 ji5Var) {
        this.a = ji5Var;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
        ji5 ji5Var = this.a;
        HashSet hashSet = ji5Var.Q;
        boolean z2 = ji5Var.R;
        if (z) {
            ji5Var.R = hashSet.add(ji5Var.T[i].toString()) | z2;
        } else {
            ji5Var.R = hashSet.remove(ji5Var.T[i].toString()) | z2;
        }
    }
}
