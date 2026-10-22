package defpackage;

import android.content.DialogInterface;
import android.text.Editable;
import com.google.android.material.textfield.TextInputEditText;
import java.util.List;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mb1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ mb1(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i2) {
            case 0:
                mt3 mt3Var = (mt3) obj;
                Editable text = ((TextInputEditText) obj3).getText();
                text.getClass();
                CharSequence charSequenceH0 = nq7.H0(text);
                if (Const.d((il0) obj2)) {
                    mt3Var.invoke(charSequenceH0.toString());
                }
                break;
            default:
                dialogInterface.getClass();
                ScheduleItem scheduleItem = (ScheduleItem) ((y47) obj2).invoke(((Config) ((List) obj3).get(i)).getItemId());
                u10 u10Var = ((j57) obj).o;
                if (u10Var != null) {
                    u10Var.invoke(scheduleItem);
                }
                dialogInterface.dismiss();
                break;
        }
    }
}
