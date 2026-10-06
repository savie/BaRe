package defpackage;

import android.widget.CheckBox;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b30 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ b30(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                ji jiVar = (ji) obj;
                CheckBox checkBox = (CheckBox) obj2;
                jiVar.getClass();
                checkBox.getClass();
                checkBox.toggle();
                ((f30) obj3).v(jiVar, checkBox.isChecked(), false);
                break;
            case 1:
                fi1 fi1Var = (fi1) obj;
                ((Integer) obj2).getClass();
                int i2 = CloudOrphanCleanerActivity.S;
                fi1Var.getClass();
                ((CloudOrphanCleanerActivity) obj3).U().s(new qh1(fi1Var.getItemId(), 0));
                break;
            case 2:
                fn3 fn3Var = (fn3) obj;
                ((Integer) obj2).getClass();
                int i3 = FolderPickerActivity.Q;
                fn3Var.getClass();
                in3 in3VarO = ((FolderPickerActivity) obj3).O();
                zn4 zn4Var = zn4.a;
                zn4.c(new o20(10, in3VarO, fn3Var));
                break;
            case 3:
                Long l = (Long) obj;
                l.getClass();
                ((Integer) obj2).getClass();
                ((dz) obj3).invoke(l);
                break;
            default:
                ((Boolean) obj).getClass();
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                MaterialButton materialButton = ((id6) obj3).q;
                materialButton.setEnabled(!zBooleanValue);
                materialButton.setAlpha(materialButton.isEnabled() ? 1.0f : 0.5f);
                break;
        }
        return be8Var;
    }
}
