package defpackage;

import android.app.Dialog;
import android.content.DialogInterface;
import androidx.fragment.app.h;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vk2 implements DialogInterface.OnCancelListener {
    public final /* synthetic */ h a;

    public vk2(h hVar) {
        this.a = hVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        h hVar = this.a;
        Dialog dialog = hVar.t;
        if (dialog != null) {
            hVar.onCancel(dialog);
        }
    }
}
