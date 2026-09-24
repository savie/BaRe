package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import com.google.android.material.slider.Slider;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ln0 extends o03 {
    public final Slider q;
    public final Rect r;

    public ln0(Slider slider) {
        super(slider);
        this.r = new Rect();
        this.q = slider;
    }

    @Override // defpackage.o03
    public final int n(float f, float f2) {
        int i = 0;
        while (true) {
            Slider slider = this.q;
            if (i >= slider.getValues().size()) {
                return -1;
            }
            Rect rect = this.r;
            slider.D(i, rect);
            if (rect.contains((int) f, (int) f2)) {
                return i;
            }
            i++;
        }
    }

    @Override // defpackage.o03
    public final void o(ArrayList arrayList) {
        for (int i = 0; i < this.q.getValues().size(); i++) {
            arrayList.add(Integer.valueOf(i));
        }
    }

    @Override // defpackage.o03
    public final boolean r(int i, int i2, Bundle bundle) {
        Slider slider = this.q;
        if (!slider.isEnabled()) {
            return false;
        }
        if (i2 != 4096 && i2 != 8192) {
            if (i2 != 16908349 || bundle == null || !bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE") || !slider.B(i, bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"))) {
                return false;
            }
            slider.E();
            slider.postInvalidate();
            return true;
        }
        float fRound = slider.M0;
        if (fRound == 0.0f) {
            fRound = 1.0f;
        }
        float f = (slider.I0 - slider.H0) / fRound;
        if (f > 20.0f) {
            fRound *= Math.round(f / 20.0f);
        }
        if (i2 == 8192) {
            fRound = -fRound;
        }
        if (slider.s()) {
            fRound = -fRound;
        }
        if (!slider.B(i, iz1.c(slider.getValues().get(i).floatValue() + fRound, slider.getValueFrom(), slider.getValueTo()))) {
            return false;
        }
        slider.setActiveThumbIndex(i);
        in0 in0Var = slider.v1;
        slider.removeCallbacks(in0Var);
        slider.postDelayed(in0Var, slider.s1);
        slider.E();
        slider.postInvalidate();
        return true;
    }

    @Override // defpackage.o03
    public final void t(int i, m6 m6Var) {
        Object tag;
        String string;
        AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
        m6Var.b(g6.o);
        Slider slider = this.q;
        List<Float> values = slider.getValues();
        Float f = values.get(i);
        float fFloatValue = f.floatValue();
        float valueFrom = slider.getValueFrom();
        float valueTo = slider.getValueTo();
        if (slider.isEnabled()) {
            if (fFloatValue > valueFrom) {
                m6Var.a(8192);
            }
            if (fFloatValue < valueTo) {
                m6Var.a(4096);
            }
        }
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMaximumFractionDigits(2);
        try {
            valueFrom = numberInstance.parse(numberInstance.format(valueFrom)).floatValue();
            valueTo = numberInstance.parse(numberInstance.format(valueTo)).floatValue();
            fFloatValue = numberInstance.parse(numberInstance.format(fFloatValue)).floatValue();
        } catch (ParseException unused) {
            int i2 = on0.x1;
            Log.w("on0", "Error parsing value(" + f + "), valueFrom(" + valueFrom + "), and valueTo(" + valueTo + ") into a float.");
        }
        accessibilityNodeInfo.setRangeInfo(AccessibilityNodeInfo.RangeInfo.obtain(1, valueFrom, valueTo, fFloatValue));
        m6Var.i(SeekBar.class.getName());
        StringBuilder sb = new StringBuilder();
        if (slider.getContentDescription() != null) {
            sb.append(slider.getContentDescription());
            sb.append(",");
        }
        String str = String.format(((float) ((int) fFloatValue)) == fFloatValue ? "%.0f" : "%.2f", Float.valueOf(fFloatValue));
        String string2 = slider.getContext().getString(R.string.material_slider_value);
        if (values.size() > 1) {
            if (i == slider.getValues().size() - 1) {
                string = slider.getContext().getString(R.string.material_slider_range_end);
            } else {
                string = i == 0 ? slider.getContext().getString(R.string.material_slider_range_start) : "";
            }
            string2 = string;
        }
        WeakHashMap weakHashMap = dl8.a;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 30) {
            tag = al8.b(slider);
        } else {
            tag = slider.getTag(R.id.tag_state_description);
            if (!CharSequence.class.isInstance(tag)) {
                tag = null;
            }
        }
        CharSequence charSequence = (CharSequence) tag;
        if (TextUtils.isEmpty(charSequence)) {
            Locale.getDefault();
            sb.append(string2 + ", " + str);
        } else if (i3 >= 30) {
            h6.h(accessibilityNodeInfo, charSequence);
        } else {
            accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
        m6Var.k(sb.toString());
        Rect rect = this.r;
        slider.D(i, rect);
        m6Var.h(rect);
    }
}
