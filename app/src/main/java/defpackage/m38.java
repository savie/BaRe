package defpackage;

import android.text.TextUtils;
import com.google.android.material.chip.Chip;
import com.google.android.material.timepicker.ClockFaceView;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m38 implements ga1, n38 {
    public static final String[] f = {"12", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"};
    public static final String[] k = {"00", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"};
    public static final String[] n = {"00", "5", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"};
    public final TimePickerView a;
    public final j38 b;
    public float c;
    public float d;
    public boolean e = false;

    public m38(TimePickerView timePickerView, j38 j38Var) {
        this.a = timePickerView;
        this.b = j38Var;
        if (j38Var.a == 0) {
            timePickerView.M.setVisibility(0);
        }
        timePickerView.K.q.add(this);
        timePickerView.O = this;
        timePickerView.N = this;
        timePickerView.K.J = this;
        f("%d", f);
        f("%d", k);
        f("%02d", n);
        invalidate();
    }

    @Override // defpackage.ga1
    public final void a(float f2, boolean z) {
        if (this.e || z) {
            return;
        }
        j38 j38Var = this.b;
        int i = j38Var.b;
        int i2 = j38Var.c;
        int iRound = Math.round(f2);
        int i3 = j38Var.d;
        TimePickerView timePickerView = this.a;
        if (i3 == 12) {
            j38Var.l((iRound + 3) / 6);
            this.c = (float) Math.floor(j38Var.c * 6);
        } else {
            int i4 = (iRound + 15) / 30;
            if (j38Var.a == 1) {
                i4 %= 12;
                if (timePickerView.L.L.M == 2) {
                    i4 += 12;
                }
            }
            j38Var.g(i4);
            this.d = (j38Var.e() * 30) % 360;
        }
        e();
        if (j38Var.c == i2 && j38Var.b == i) {
            return;
        }
        timePickerView.performHapticFeedback(4);
    }

    @Override // defpackage.n38
    public final void b() {
        this.a.setVisibility(0);
    }

    @Override // defpackage.n38
    public final void c() {
        this.a.setVisibility(8);
    }

    public final void d(int i, boolean z) {
        String[] strArr;
        int i2;
        boolean z2 = i == 12;
        TimePickerView timePickerView = this.a;
        ClockHandView clockHandView = timePickerView.K;
        Chip chip = timePickerView.J;
        Chip chip2 = timePickerView.I;
        ClockFaceView clockFaceView = timePickerView.L;
        clockHandView.d = z2;
        j38 j38Var = this.b;
        j38Var.d = i;
        int i3 = j38Var.a;
        if (z2) {
            strArr = n;
        } else {
            strArr = i3 == 1 ? k : f;
        }
        if (z2) {
            i2 = R.string.material_minute_suffix;
        } else {
            i2 = i3 == 1 ? R.string.material_hour_24h_suffix : R.string.material_hour_suffix;
        }
        clockFaceView.o(i2, strArr);
        int i4 = (j38Var.d == 10 && i3 == 1 && j38Var.b >= 12) ? 2 : 1;
        ClockHandView clockHandView2 = clockFaceView.L;
        clockHandView2.M = i4;
        clockHandView2.invalidate();
        timePickerView.K.b(z2 ? this.c : this.d, z);
        boolean z3 = i == 12;
        chip2.setChecked(z3);
        chip2.setAccessibilityLiveRegion(z3 ? 2 : 0);
        boolean z4 = i == 10;
        chip.setChecked(z4);
        chip.setAccessibilityLiveRegion(z4 ? 2 : 0);
        dl8.n(chip, new k38(this, timePickerView.getContext()));
        dl8.n(chip2, new l38(this, timePickerView.getContext()));
    }

    public final void e() {
        j38 j38Var = this.b;
        int i = j38Var.e;
        int iE = j38Var.e();
        int i2 = j38Var.c;
        TimePickerView timePickerView = this.a;
        Chip chip = timePickerView.J;
        Chip chip2 = timePickerView.I;
        timePickerView.M.n(i == 1 ? R.id.material_clock_period_pm_button : R.id.material_clock_period_am_button, true);
        Locale locale = timePickerView.getResources().getConfiguration().locale;
        String str = String.format(locale, "%02d", Integer.valueOf(i2));
        String str2 = String.format(locale, "%02d", Integer.valueOf(iE));
        if (!TextUtils.equals(chip2.getText(), str)) {
            chip2.setText(str);
        }
        if (TextUtils.equals(chip.getText(), str2)) {
            return;
        }
        chip.setText(str2);
    }

    public final void f(String str, String[] strArr) {
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = j38.c(this.a.getResources(), strArr[i], str);
        }
    }

    @Override // defpackage.n38
    public final void invalidate() {
        j38 j38Var = this.b;
        this.d = (j38Var.e() * 30) % 360;
        this.c = j38Var.c * 6;
        d(j38Var.d, false);
        e();
    }
}
