package defpackage;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ap implements hp, DialogInterface.OnClickListener {
    public wa a;
    public bp b;
    public CharSequence c;
    public final /* synthetic */ ip d;

    public ap(ip ipVar) {
        this.d = ipVar;
    }

    @Override // defpackage.hp
    public final boolean a() {
        wa waVar = this.a;
        if (waVar != null) {
            return waVar.isShowing();
        }
        return false;
    }

    @Override // defpackage.hp
    public final int c() {
        return 0;
    }

    @Override // defpackage.hp
    public final void dismiss() {
        wa waVar = this.a;
        if (waVar != null) {
            waVar.dismiss();
            this.a = null;
        }
    }

    @Override // defpackage.hp
    public final void e(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.hp
    public final CharSequence f() {
        return this.c;
    }

    @Override // defpackage.hp
    public final Drawable g() {
        return null;
    }

    @Override // defpackage.hp
    public final void h(CharSequence charSequence) {
        this.c = charSequence;
    }

    @Override // defpackage.hp
    public final void i(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.hp
    public final void l(int i) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.hp
    public final void m(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.hp
    public final void n(int i, int i2) {
        if (this.b == null) {
            return;
        }
        ip ipVar = this.d;
        va vaVar = new va(ipVar.getPopupContext());
        ra raVar = (ra) vaVar.b;
        CharSequence charSequence = this.c;
        if (charSequence != null) {
            raVar.d = charSequence;
        }
        bp bpVar = this.b;
        int selectedItemPosition = ipVar.getSelectedItemPosition();
        raVar.q = bpVar;
        raVar.r = this;
        raVar.w = selectedItemPosition;
        raVar.v = true;
        wa waVarC = vaVar.c();
        this.a = waVarC;
        AlertController$RecycleListView alertController$RecycleListView = waVarC.k.f;
        alertController$RecycleListView.setTextDirection(i);
        alertController$RecycleListView.setTextAlignment(i2);
        this.a.show();
    }

    @Override // defpackage.hp
    public final int o() {
        return 0;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        ip ipVar = this.d;
        ipVar.setSelection(i);
        if (ipVar.getOnItemClickListener() != null) {
            ipVar.performItemClick(null, i, this.b.getItemId(i));
        }
        dismiss();
    }

    @Override // defpackage.hp
    public final void p(ListAdapter listAdapter) {
        this.b = (bp) listAdapter;
    }
}
