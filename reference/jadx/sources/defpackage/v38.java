package defpackage;

import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.timepicker.ChipTextInputComboView;
import java.util.Locale;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v38 implements n38 {
    public final String G;
    public final MaterialButtonToggleGroup H;
    public final LinearLayout a;
    public final j38 b;
    public final q38 c;
    public final r38 d;
    public final ChipTextInputComboView e;
    public final ChipTextInputComboView f;
    public final EditText k;
    public final EditText n;
    public final TextView p;
    public final TextView q;
    public final String r;
    public final String t;
    public final String x;
    public final String y;

    public v38(LinearLayout linearLayout, j38 j38Var) {
        q38 q38Var = new q38(this);
        this.c = q38Var;
        r38 r38Var = new r38(this);
        this.d = r38Var;
        this.a = linearLayout;
        this.b = j38Var;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_minute_text_input);
        this.e = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_hour_text_input);
        this.f = chipTextInputComboView2;
        View viewFindViewById = chipTextInputComboView.findViewById(R.id.material_label);
        TextInputLayout textInputLayout = chipTextInputComboView.b;
        TextView textView = (TextView) viewFindViewById;
        this.p = textView;
        View viewFindViewById2 = chipTextInputComboView2.findViewById(R.id.material_label);
        TextInputLayout textInputLayout2 = chipTextInputComboView2.b;
        TextView textView2 = (TextView) viewFindViewById2;
        this.q = textView2;
        textView.setText(resources.getString(R.string.material_timepicker_minute));
        textView.setImportantForAccessibility(2);
        textView2.setText(resources.getString(R.string.material_timepicker_hour));
        textView2.setImportantForAccessibility(2);
        this.r = resources.getString(R.string.material_timepicker_minute);
        this.t = resources.getString(R.string.material_timepicker_hour);
        this.x = resources.getString(R.string.material_timepicker_minute_error);
        this.y = resources.getString(R.string.material_timepicker_hour_error);
        this.G = resources.getString(R.string.material_timepicker_hour_error_24h);
        chipTextInputComboView.setTag(R.id.selection_type, 12);
        chipTextInputComboView2.setTag(R.id.selection_type, 10);
        if (j38Var.a == 0) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) linearLayout.findViewById(R.id.material_clock_period_toggle);
            this.H = materialButtonToggleGroup;
            materialButtonToggleGroup.M.add(new r85() { // from class: p38
                @Override // defpackage.r85
                public final void a(int i, boolean z) {
                    if (z) {
                        this.a.b.m(i == R.id.material_clock_period_pm_button ? 1 : 0);
                    }
                }
            });
            this.H.setVisibility(0);
            MaterialButtonToggleGroup materialButtonToggleGroup2 = this.H;
            if (materialButtonToggleGroup2 != null) {
                materialButtonToggleGroup2.n(j38Var.e == 0 ? R.id.material_clock_period_am_button : R.id.material_clock_period_pm_button, true);
            }
        }
        i00 i00Var = new i00(this, 14);
        chipTextInputComboView2.setOnClickListener(i00Var);
        chipTextInputComboView.setOnClickListener(i00Var);
        EditText editText = textInputLayout2.getEditText();
        this.n = editText;
        editText.setAccessibilityDelegate(new u38(linearLayout.getResources(), R.string.material_timepicker_hour));
        EditText editText2 = textInputLayout.getEditText();
        this.k = editText2;
        editText2.setAccessibilityDelegate(new u38(linearLayout.getResources(), R.string.material_timepicker_minute));
        o38 o38Var = new o38(chipTextInputComboView2, chipTextInputComboView, j38Var);
        dl8.n(chipTextInputComboView2.a, new s38(linearLayout.getContext(), resources, j38Var));
        dl8.n(chipTextInputComboView.a, new t38(linearLayout.getContext(), resources, j38Var));
        editText.addTextChangedListener(r38Var);
        editText2.addTextChangedListener(q38Var);
        h(j38Var);
        EditText editText3 = textInputLayout2.getEditText();
        EditText editText4 = textInputLayout.getEditText();
        editText3.setImeOptions(268435461);
        editText4.setImeOptions(268435462);
        editText3.setOnEditorActionListener(o38Var);
        editText3.setOnKeyListener(o38Var);
        editText4.setOnKeyListener(o38Var);
    }

    public static void a(v38 v38Var) {
        v38Var.f.a(true);
        TextView textView = v38Var.q;
        textView.setText(v38Var.b.a == 1 ? v38Var.G : v38Var.y);
        textView.announceForAccessibility(textView.getText());
        i(textView);
    }

    public static void i(View view) {
        AudioManager audioManager;
        WeakHashMap weakHashMap = dl8.a;
        int i = Build.VERSION.SDK_INT;
        int i2 = i < 30 ? 0 : 17;
        if (i < 27 && (i2 == 7 || i2 == 8 || i2 == 9)) {
            i2 = -1;
        }
        if (i2 != -1) {
            view.performHapticFeedback(i2);
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if ((accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) && (audioManager = (AudioManager) view.getContext().getSystemService("audio")) != null) {
            audioManager.playSoundEffect(9);
        }
    }

    @Override // defpackage.n38
    public final void b() {
        this.a.setVisibility(0);
        f(this.b.d);
    }

    @Override // defpackage.n38
    public final void c() {
        InputMethodManager inputMethodManager;
        LinearLayout linearLayout = this.a;
        View focusedChild = linearLayout.getFocusedChild();
        if (focusedChild != null && (inputMethodManager = (InputMethodManager) focusedChild.getContext().getSystemService(InputMethodManager.class)) != null) {
            inputMethodManager.hideSoftInputFromWindow(focusedChild.getWindowToken(), 0);
        }
        linearLayout.setVisibility(8);
    }

    public final void d() {
        this.f.a(false);
        this.q.setText(this.t);
    }

    public final void e() {
        this.e.a(false);
        this.p.setText(this.r);
    }

    public final void f(int i) {
        j38 j38Var = this.b;
        j38Var.d = i;
        this.e.setChecked(i == 12);
        this.f.setChecked(i == 10);
        MaterialButtonToggleGroup materialButtonToggleGroup = this.H;
        if (materialButtonToggleGroup == null) {
            return;
        }
        materialButtonToggleGroup.n(j38Var.e == 0 ? R.id.material_clock_period_am_button : R.id.material_clock_period_pm_button, true);
    }

    public final void g() {
        j38 j38Var = this.b;
        this.e.setChecked(j38Var.d == 12);
        this.f.setChecked(j38Var.d == 10);
    }

    public final void h(j38 j38Var) {
        EditText editText = this.n;
        r38 r38Var = this.d;
        editText.removeTextChangedListener(r38Var);
        EditText editText2 = this.k;
        q38 q38Var = this.c;
        editText2.removeTextChangedListener(q38Var);
        Locale locale = this.a.getResources().getConfiguration().locale;
        String str = String.format(locale, "%02d", Integer.valueOf(j38Var.c));
        String str2 = String.format(locale, "%02d", Integer.valueOf(j38Var.e()));
        this.e.b(str);
        this.f.b(str2);
        editText.addTextChangedListener(r38Var);
        editText2.addTextChangedListener(q38Var);
        f(j38Var.d);
    }

    @Override // defpackage.n38
    public final void invalidate() {
        h(this.b);
    }
}
