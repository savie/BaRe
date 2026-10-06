package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.h;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j95 extends h {
    public TimePickerView M;
    public ViewStub N;
    public m38 O;
    public v38 P;
    public n38 Q;
    public int R;
    public int S;
    public CharSequence U;
    public CharSequence W;
    public CharSequence Y;
    public MaterialButton Z;
    public Button a0;
    public Button b0;
    public j38 d0;
    public final LinkedHashSet I = new LinkedHashSet();
    public final LinkedHashSet J = new LinkedHashSet();
    public final LinkedHashSet K = new LinkedHashSet();
    public final LinkedHashSet L = new LinkedHashSet();
    public int T = 0;
    public int V = 0;
    public int X = 0;
    public int c0 = 0;
    public int e0 = 0;

    @Override // androidx.fragment.app.h
    public final Dialog j() {
        Context contextRequireContext = requireContext();
        int i = this.e0;
        if (i == 0) {
            TypedValue typedValueP = jm1.P(requireContext().getTheme(), R.attr.materialTimePickerTheme);
            i = typedValueP == null ? 0 : typedValueP.data;
        }
        Dialog dialog = new Dialog(contextRequireContext, i);
        Context context = dialog.getContext();
        c95 c95Var = new c95(context, null, R.attr.materialTimePickerStyle, R.style.Widget_MaterialComponents_TimePicker);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, td6.I, R.attr.materialTimePickerStyle, R.style.Widget_MaterialComponents_TimePicker);
        this.S = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        this.R = typedArrayObtainStyledAttributes.getResourceId(2, 0);
        int color = typedArrayObtainStyledAttributes.getColor(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        c95Var.p(context);
        c95Var.t(ColorStateList.valueOf(color));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(c95Var);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        c95Var.s(window.getDecorView().getElevation());
        return dialog;
    }

    public final void l(MaterialButton materialButton) {
        n38 n38Var;
        i95 i95Var;
        m38 m38Var;
        if (materialButton == null || this.M == null || this.N == null) {
            return;
        }
        n38 n38Var2 = this.Q;
        if (n38Var2 != null) {
            n38Var2.c();
        }
        int i = this.c0;
        TimePickerView timePickerView = this.M;
        ViewStub viewStub = this.N;
        if (i == 0) {
            m38 m38Var2 = this.O;
            if (m38Var2 == null) {
                m38Var = m38Var2;
                m38Var = new m38(timePickerView, this.d0);
            }
            m38Var = m38Var2;
            this.O = m38Var;
            n38Var = m38Var;
        } else {
            if (this.P == null) {
                this.P = new v38((LinearLayout) viewStub.inflate(), this.d0);
            }
            v38 v38Var = this.P;
            v38Var.e();
            v38Var.d();
            v38 v38Var2 = this.P;
            v38Var2.e.setChecked(false);
            v38Var2.f.setChecked(false);
            n38Var = this.P;
        }
        this.Q = n38Var;
        n38Var.b();
        this.Q.invalidate();
        int i2 = this.c0;
        if (i2 == 0) {
            i95Var = new i95(this.R, R.string.material_timepicker_text_input_mode_description, R.string.material_timepicker_text_input_mode_tooltip);
        } else {
            if (i2 != 1) {
                c6.f(fz5.j(i2, "no button data for mode: "));
                return;
            }
            i95Var = new i95(this.S, R.string.material_timepicker_clock_mode_description, R.string.material_timepicker_clock_mode_tooltip);
        }
        materialButton.setIconResource(i95Var.a);
        materialButton.setContentDescription(getResources().getString(i95Var.b));
        s88.a(materialButton, getResources().getString(i95Var.c));
        materialButton.sendAccessibilityEvent(4);
    }

    @Override // androidx.fragment.app.h, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.K.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.h, androidx.fragment.app.o
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        if (bundle == null) {
            return;
        }
        j38 j38Var = (j38) bundle.getParcelable("TIME_PICKER_TIME_MODEL");
        this.d0 = j38Var;
        if (j38Var == null) {
            this.d0 = new j38(0);
        }
        int i = 1;
        if (!getResources().getBoolean(R.bool.timepicker_force_input_mode_keyboard) && this.d0.a != 1) {
            i = 0;
        }
        this.c0 = bundle.getInt("TIME_PICKER_INPUT_MODE", i);
        this.T = bundle.getInt("TIME_PICKER_TITLE_RES", 0);
        this.U = bundle.getCharSequence("TIME_PICKER_TITLE_TEXT");
        this.V = bundle.getInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", 0);
        this.W = bundle.getCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT");
        this.X = bundle.getInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", 0);
        this.Y = bundle.getCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT");
        this.e0 = bundle.getInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", 0);
    }

    @Override // androidx.fragment.app.o
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(R.id.material_timepicker_view);
        this.M = timePickerView;
        timePickerView.P = this;
        this.N = (ViewStub) viewGroup2.findViewById(R.id.material_textinput_timepicker);
        this.Z = (MaterialButton) viewGroup2.findViewById(R.id.material_timepicker_mode_button);
        this.a0 = (Button) viewGroup2.findViewById(R.id.material_timepicker_ok_button);
        this.b0 = (Button) viewGroup2.findViewById(R.id.material_timepicker_cancel_button);
        TextView textView = (TextView) viewGroup2.findViewById(R.id.header_title);
        int i = this.T;
        if (i != 0) {
            textView.setText(i);
        } else if (!TextUtils.isEmpty(this.U)) {
            textView.setText(this.U);
        }
        l(this.Z);
        this.a0.setOnClickListener(new i10(6, this, viewGroup2));
        int i2 = this.V;
        if (i2 != 0) {
            this.a0.setText(i2);
        } else if (!TextUtils.isEmpty(this.W)) {
            this.a0.setText(this.W);
        }
        this.b0.setOnClickListener(new es(this, 10));
        int i3 = this.X;
        if (i3 != 0) {
            this.b0.setText(i3);
        } else if (!TextUtils.isEmpty(this.Y)) {
            this.b0.setText(this.Y);
        }
        Button button = this.b0;
        int i4 = 8;
        if (button != null) {
            button.setVisibility(this.k ? 0 : 8);
        }
        this.Z.setOnClickListener(new xd1(this, i4));
        return viewGroup2;
    }

    @Override // androidx.fragment.app.h, androidx.fragment.app.o
    public final void onDestroyView() {
        super.onDestroyView();
        this.Q = null;
        this.O = null;
        this.P = null;
        TimePickerView timePickerView = this.M;
        if (timePickerView != null) {
            timePickerView.P = null;
            this.M = null;
        }
    }

    @Override // androidx.fragment.app.h, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.L.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.h, androidx.fragment.app.o
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("TIME_PICKER_TIME_MODEL", this.d0);
        bundle.putInt("TIME_PICKER_INPUT_MODE", this.c0);
        bundle.putInt("TIME_PICKER_TITLE_RES", this.T);
        bundle.putCharSequence("TIME_PICKER_TITLE_TEXT", this.U);
        bundle.putInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", this.V);
        bundle.putCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT", this.W);
        bundle.putInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", this.X);
        bundle.putCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT", this.Y);
        bundle.putInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", this.e0);
    }

    @Override // androidx.fragment.app.o
    public final void onViewCreated(View view, Bundle bundle) {
        if (this.Q instanceof v38) {
            view.postDelayed(new yc(this, 4), 100L);
        }
    }
}
