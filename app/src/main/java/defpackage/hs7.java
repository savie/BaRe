package defpackage;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import androidx.fragment.app.h;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class hs7 extends h {
    public Dialog I;
    public DialogInterface.OnCancelListener J;
    public AlertDialog K;

    @Override // androidx.fragment.app.h
    public final Dialog j() {
        Dialog dialog = this.I;
        if (dialog != null) {
            return dialog;
        }
        this.n = false;
        if (this.K == null) {
            Context context = getContext();
            ly8.h(context);
            this.K = new AlertDialog.Builder(context).create();
        }
        return this.K;
    }

    @Override // androidx.fragment.app.h, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.J;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }
}
