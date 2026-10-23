package defpackage;

import android.content.DialogInterface;
import android.text.InputFilter;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.material.textfield.TextInputEditText;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.cloud.CloudBackupTag;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kb1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kb1(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i2) {
            case 0:
                il0 il0Var = (il0) obj2;
                mt3 mt3Var = (mt3) obj;
                CloudBackupTag.Companion.getClass();
                View viewInflate = View.inflate(il0Var, R.layout.create_active_tag_dialog, null);
                TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewInflate, R.id.et);
                if (textInputEditText == null) {
                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(R.id.et)));
                } else {
                    int i3 = 0;
                    textInputEditText.setFilters(new InputFilter[]{new lb1()});
                    s35 s35Var = new s35(il0Var, R.style.M3AlertDialogTheme, new hv1(il0Var, R.style.M3AlertDialogTheme), null);
                    s35Var.v(R.string.new_tag);
                    s35Var.s(R.string.create, new mb1(i3, textInputEditText, il0Var, mt3Var));
                    s35Var.q(R.string.cancel, null);
                    ((ra) s35Var.b).s = (FrameLayout) viewInflate;
                    wa waVarM = s35Var.m();
                    waVarM.getClass();
                    Button buttonF = waVarM.f(-1);
                    buttonF.setEnabled(false);
                    textInputEditText.addTextChangedListener(new nb1(buttonF, i3));
                    dialogInterface.dismiss();
                }
                break;
            default:
                zn4 zn4Var = zn4.a;
                zn4.c(new kg(9, (qo0) obj2, (ArrayList) obj));
                break;
        }
    }
}
