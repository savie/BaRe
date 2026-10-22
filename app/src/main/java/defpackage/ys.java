package defpackage;

import android.content.DialogInterface;
import android.content.SharedPreferences;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ys implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;

    public /* synthetic */ ys(int i) {
        this.a = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.a) {
            case 0:
                iy iyVar = iy.a;
                iy.f = true;
                iy.d(sx.Name);
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putBoolean("app_sort_ascending", true).apply();
                iy.b.l(tx.a);
                return;
            default:
                return;
        }
    }

    private final void a(DialogInterface dialogInterface, int i) {
    }
}
