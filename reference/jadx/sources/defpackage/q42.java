package defpackage;

import com.google.android.material.textfield.TextInputEditText;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class q42 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ CsActivity b;

    public /* synthetic */ q42(CsActivity csActivity, int i) {
        this.a = i;
        this.b = csActivity;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        CsActivity csActivity = this.b;
        switch (i) {
            case 0:
                int i2 = CsActivity.P0;
                return csActivity.k0().f;
            case 1:
                int i3 = CsActivity.P0;
                return (TextInputEditText) csActivity.k0().L.b;
            default:
                int i4 = CsActivity.P0;
                csActivity.a0().j();
                return be8.a;
        }
    }
}
