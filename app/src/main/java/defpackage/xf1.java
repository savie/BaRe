package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.warkiz.widget.IndicatorSeekBar;
import com.warkiz.widget.IndicatorStayLayout;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xf1 implements jk8 {
    public final /* synthetic */ int a = 2;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;
    public Object k;

    public xf1(ConstraintLayout constraintLayout, View view, IndicatorSeekBar indicatorSeekBar, IndicatorStayLayout indicatorStayLayout, MaterialRadioButton materialRadioButton, TextView textView) {
        this.c = constraintLayout;
        this.d = view;
        this.e = indicatorSeekBar;
        this.f = indicatorStayLayout;
        this.k = materialRadioButton;
        this.b = textView;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 0:
                return (SwiftSegmentedCardGroup) this.c;
            default:
                return (ConstraintLayout) this.c;
        }
    }

    public /* synthetic */ xf1() {
    }

    public xf1(SwiftSegmentedCardGroup swiftSegmentedCardGroup, MaterialButton materialButton, ImageView imageView, ca2 ca2Var, TextView textView, TextView textView2) {
        this.c = swiftSegmentedCardGroup;
        this.d = materialButton;
        this.e = imageView;
        this.f = ca2Var;
        this.b = textView;
        this.k = textView2;
    }
}
