package defpackage;

import android.view.View;
import com.google.android.material.timepicker.TimePickerView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x38 implements View.OnClickListener {
    public final /* synthetic */ TimePickerView a;

    public x38(TimePickerView timePickerView) {
        this.a = timePickerView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        m38 m38Var = this.a.O;
        if (m38Var != null) {
            m38Var.d(((Integer) view.getTag(R.id.selection_type)).intValue(), true);
        }
    }
}
