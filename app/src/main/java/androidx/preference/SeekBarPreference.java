package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.widget.SeekBar;
import android.widget.TextView;
import defpackage.de6;
import defpackage.j67;
import defpackage.k46;
import defpackage.k67;
import defpackage.l67;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SeekBarPreference extends Preference {
    public int f0;
    public int g0;
    public int h0;
    public int i0;
    public boolean j0;
    public SeekBar k0;
    public TextView l0;
    public final boolean m0;
    public final boolean n0;
    public final boolean o0;
    public final j67 p0;
    public final k67 q0;

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarPreferenceStyle, 0);
        this.p0 = new j67(this);
        this.q0 = new k67(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, de6.k, R.attr.seekBarPreferenceStyle, 0);
        this.g0 = typedArrayObtainStyledAttributes.getInt(3, 0);
        int i = typedArrayObtainStyledAttributes.getInt(1, 100);
        int i2 = this.g0;
        i = i < i2 ? i2 : i;
        if (i != this.h0) {
            this.h0 = i;
            h();
        }
        int i3 = typedArrayObtainStyledAttributes.getInt(4, 0);
        if (i3 != this.i0) {
            this.i0 = Math.min(this.h0 - this.g0, Math.abs(i3));
            h();
        }
        this.m0 = typedArrayObtainStyledAttributes.getBoolean(2, true);
        this.n0 = typedArrayObtainStyledAttributes.getBoolean(5, false);
        this.o0 = typedArrayObtainStyledAttributes.getBoolean(6, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void G(int i, boolean z) {
        int i2 = this.g0;
        if (i < i2) {
            i = i2;
        }
        int i3 = this.h0;
        if (i > i3) {
            i = i3;
        }
        if (i != this.f0) {
            this.f0 = i;
            TextView textView = this.l0;
            if (textView != null) {
                textView.setText(String.valueOf(i));
            }
            if (F()) {
                int i4 = ~i;
                boolean zF = F();
                String str = this.t;
                if (zF) {
                    i4 = this.b.b().getInt(str, i4);
                }
                if (i != i4) {
                    SharedPreferences.Editor editorA = this.b.a();
                    editorA.putInt(str, i);
                    if (!this.b.e) {
                        editorA.apply();
                    }
                }
            }
            if (z) {
                h();
            }
        }
    }

    public final void H(SeekBar seekBar) {
        int progress = seekBar.getProgress() + this.g0;
        if (progress != this.f0) {
            if (a(Integer.valueOf(progress))) {
                G(progress, false);
                return;
            }
            seekBar.setProgress(this.f0 - this.g0);
            int i = this.f0;
            TextView textView = this.l0;
            if (textView != null) {
                textView.setText(String.valueOf(i));
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void l(k46 k46Var) {
        super.l(k46Var);
        k46Var.a.setOnKeyListener(this.q0);
        this.k0 = (SeekBar) k46Var.r(R.id.seekbar);
        TextView textView = (TextView) k46Var.r(R.id.seekbar_value);
        this.l0 = textView;
        if (this.n0) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.l0 = null;
        }
        SeekBar seekBar = this.k0;
        if (seekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.p0);
        this.k0.setMax(this.h0 - this.g0);
        int i = this.i0;
        SeekBar seekBar2 = this.k0;
        if (i != 0) {
            seekBar2.setKeyProgressIncrement(i);
        } else {
            this.i0 = seekBar2.getKeyProgressIncrement();
        }
        this.k0.setProgress(this.f0 - this.g0);
        int i2 = this.f0;
        TextView textView2 = this.l0;
        if (textView2 != null) {
            textView2.setText(String.valueOf(i2));
        }
        this.k0.setEnabled(g());
    }

    @Override // androidx.preference.Preference
    public final Object r(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // androidx.preference.Preference
    public final void s(Parcelable parcelable) {
        if (!parcelable.getClass().equals(l67.class)) {
            super.s(parcelable);
            return;
        }
        l67 l67Var = (l67) parcelable;
        super.s(l67Var.getSuperState());
        this.f0 = l67Var.a;
        this.g0 = l67Var.b;
        this.h0 = l67Var.c;
        h();
    }

    @Override // androidx.preference.Preference
    public final Parcelable t() {
        super.t();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.J) {
            return absSavedState;
        }
        l67 l67Var = new l67();
        l67Var.a = this.f0;
        l67Var.b = this.g0;
        l67Var.c = this.h0;
        return l67Var;
    }

    @Override // androidx.preference.Preference
    public final void u(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        int iIntValue = ((Integer) obj).intValue();
        if (F()) {
            iIntValue = this.b.b().getInt(this.t, iIntValue);
        }
        G(iIntValue, true);
    }
}
