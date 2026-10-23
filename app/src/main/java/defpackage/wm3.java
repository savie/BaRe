package defpackage;

import android.content.DialogInterface;
import android.text.Editable;
import com.google.android.material.textfield.TextInputEditText;
import java.util.LinkedHashMap;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class wm3 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ wm3(TextInputEditText textInputEditText, k3 k3Var) {
        this.a = 2;
        this.c = textInputEditText;
        this.b = k3Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.b;
        Object obj2 = this.c;
        switch (i2) {
            case 0:
                int i3 = FolderPickerActivity.Q;
                in3 in3VarO = ((FolderPickerActivity) obj).O();
                Editable text = ((TextInputEditText) obj2).getText();
                String string = text != null ? text.toString() : null;
                if (string == null) {
                    string = "";
                }
                zn4 zn4Var = zn4.a;
                zn4.c(new w01(11, string, in3VarO));
                break;
            case 1:
                ((mt3) obj).invoke(((LinkedHashMap) obj2).keySet());
                break;
            default:
                int i4 = MegaSignInActivity.S;
                Editable text2 = ((TextInputEditText) obj2).getText();
                text2.getClass();
                ((k3) obj).invoke(nq7.H0(text2).toString());
                break;
        }
    }

    public /* synthetic */ wm3(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
