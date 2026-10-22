package defpackage;

import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class o42 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ CsActivity b;

    public /* synthetic */ o42(CsActivity csActivity, int i) {
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
                return (TextInputLayout) csActivity.k0().K.d;
            case 1:
                int i3 = CsActivity.P0;
                return (TextInputEditText) csActivity.k0().Q.c;
            case 2:
                int i4 = CsActivity.P0;
                return csActivity.k0().N;
            case 3:
                int i5 = CsActivity.P0;
                return (nc1) el1.S0(csActivity.d0().getAuthTypes());
            default:
                int i6 = CsActivity.P0;
                return (fd1) el1.S0(csActivity.d0().getProtocols());
        }
    }
}
