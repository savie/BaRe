package defpackage;

import androidx.appcompat.widget.SwitchCompat;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fu7 extends hu2 {
    public final WeakReference a;

    public fu7(SwitchCompat switchCompat) {
        this.a = new WeakReference(switchCompat);
    }

    @Override // defpackage.hu2
    public final void a() {
        SwitchCompat switchCompat = (SwitchCompat) this.a.get();
        if (switchCompat != null) {
            switchCompat.c();
        }
    }

    @Override // defpackage.hu2
    public final void b() {
        SwitchCompat switchCompat = (SwitchCompat) this.a.get();
        if (switchCompat != null) {
            switchCompat.c();
        }
    }
}
