package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import com.google.android.material.timepicker.TimePickerView;
import defpackage.j95;
import defpackage.lb;
import defpackage.m38;
import defpackage.r85;
import defpackage.x38;
import defpackage.y38;
import defpackage.z38;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class TimePickerView extends ConstraintLayout {
    public static final /* synthetic */ int Q = 0;
    public final Chip I;
    public final Chip J;
    public final ClockHandView K;
    public final ClockFaceView L;
    public final MaterialButtonToggleGroup M;
    public m38 N;
    public m38 O;
    public j95 P;

    public TimePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        x38 x38Var = new x38(this);
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        ClockFaceView clockFaceView = (ClockFaceView) findViewById(R.id.material_clock_face);
        this.L = clockFaceView;
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        this.M = materialButtonToggleGroup;
        materialButtonToggleGroup.M.add(new r85() { // from class: w38
            @Override // defpackage.r85
            public final void a(int i2, boolean z) {
                if (!z) {
                    int i3 = TimePickerView.Q;
                    return;
                }
                m38 m38Var = this.a.N;
                if (m38Var != null) {
                    m38Var.b.m(i2 == R.id.material_clock_period_pm_button ? 1 : 0);
                }
            }
        });
        Chip chip = (Chip) findViewById(R.id.material_minute_tv);
        this.I = chip;
        Chip chip2 = (Chip) findViewById(R.id.material_hour_tv);
        this.J = chip2;
        this.K = (ClockHandView) findViewById(R.id.material_clock_hand);
        clockFaceView.d0 = new lb(this);
        z38 z38Var = new z38(new GestureDetector(getContext(), new y38(this)));
        chip.setOnTouchListener(z38Var);
        chip2.setOnTouchListener(z38Var);
        chip.setTag(R.id.selection_type, 12);
        chip2.setTag(R.id.selection_type, 10);
        chip.setOnClickListener(x38Var);
        chip2.setOnClickListener(x38Var);
        chip.setAccessibilityClassName("android.view.View");
        chip2.setAccessibilityClassName("android.view.View");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            this.J.sendAccessibilityEvent(8);
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context) {
        this(context, null);
    }
}
