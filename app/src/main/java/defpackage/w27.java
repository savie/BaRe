package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.warkiz.widget.IndicatorSeekBar;
import com.warkiz.widget.IndicatorStayLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class w27 extends gm7 {
    public hq0 l;

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        final v27 v27Var = (v27) fh6Var;
        final x27 x27Var = (x27) m(i);
        IndicatorSeekBar indicatorSeekBar = v27Var.x;
        x27Var.getClass();
        int i2 = x27Var.b;
        final w27 w27Var = v27Var.z;
        boolean zQ = w27Var.q(x27Var);
        MaterialRadioButton materialRadioButton = v27Var.u;
        materialRadioButton.setClickable(false);
        materialRadioButton.setChecked(zQ);
        ScheduleData.a aVar = x27Var.a;
        boolean z = aVar == ScheduleData.a.MINIMUM_PERCENT;
        TextView textView = v27Var.v;
        sz8.d0(textView, !z);
        if (sz8.I(textView)) {
            textView.setText(aVar.toDisplayString(i2));
        }
        IndicatorStayLayout indicatorStayLayout = v27Var.w;
        sz8.d0(indicatorStayLayout, z);
        sz8.d0(v27Var.y, z);
        if (sz8.I(indicatorStayLayout)) {
            indicatorSeekBar.setEnabled(zQ);
            indicatorSeekBar.setAlpha(zQ ? 1.0f : 0.5f);
            indicatorSeekBar.setIndicatorTextFormat("${PROGRESS}%");
            if (indicatorSeekBar.getProgress() != i2) {
                indicatorSeekBar.setProgress(i2);
            }
            indicatorSeekBar.setOnSeekChangeListener(new s79(w27Var, 7));
        }
        v27Var.a.setOnClickListener(new View.OnClickListener() { // from class: u27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                qt3 qt3Var = this.a.j;
                if (qt3Var != null) {
                    qt3Var.invoke(x27Var, Integer.valueOf(v27Var.b()));
                }
            }
        });
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.schedule_battery_req_dialog_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.divider;
        View viewU = ms8.u(view, R.id.divider);
        if (viewU != null) {
            i2 = R.id.isb;
            IndicatorSeekBar indicatorSeekBar = (IndicatorSeekBar) ms8.u(view, R.id.isb);
            if (indicatorSeekBar != null) {
                i2 = R.id.isl;
                IndicatorStayLayout indicatorStayLayout = (IndicatorStayLayout) ms8.u(view, R.id.isl);
                if (indicatorStayLayout != null) {
                    i2 = R.id.rb;
                    MaterialRadioButton materialRadioButton = (MaterialRadioButton) ms8.u(view, R.id.rb);
                    if (materialRadioButton != null) {
                        i2 = R.id.tv_title;
                        TextView textView = (TextView) ms8.u(view, R.id.tv_title);
                        if (textView != null) {
                            return new v27(this, new xf1((ConstraintLayout) view, viewU, indicatorSeekBar, indicatorStayLayout, materialRadioButton, textView));
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
