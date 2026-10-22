package defpackage;

import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u61 extends o03 {
    public final /* synthetic */ Chip q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u61(Chip chip, Chip chip2) {
        super(chip2);
        this.q = chip;
    }

    @Override // defpackage.o03
    public final int n(float f, float f2) {
        Rect rect = Chip.O;
        Chip chip = this.q;
        return (chip.d() && chip.getCloseIconTouchBounds().contains(f, f2)) ? 1 : 0;
    }

    @Override // defpackage.o03
    public final void o(ArrayList arrayList) {
        v61 v61Var;
        arrayList.add(0);
        Rect rect = Chip.O;
        Chip chip = this.q;
        if (!chip.d() || (v61Var = chip.e) == null || !v61Var.m0 || chip.n == null) {
            return;
        }
        arrayList.add(1);
    }

    @Override // defpackage.o03
    public final boolean r(int i, int i2, Bundle bundle) {
        boolean z = false;
        if (i2 == 16) {
            Chip chip = this.q;
            if (i == 0) {
                return chip.performClick();
            }
            if (i == 1) {
                chip.playSoundEffect(0);
                View.OnClickListener onClickListener = chip.n;
                if (onClickListener != null) {
                    onClickListener.onClick(chip);
                    z = true;
                }
                if (chip.K) {
                    chip.J.w(1, 1);
                }
            }
        }
        return z;
    }

    @Override // defpackage.o03
    public final void s(m6 m6Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
        Chip chip = this.q;
        v61 v61Var = chip.e;
        accessibilityNodeInfo.setCheckable(v61Var != null && v61Var.s0);
        accessibilityNodeInfo.setClickable(chip.isClickable());
        m6Var.i(chip.getAccessibilityClassName());
        m6Var.p(chip.getText());
    }

    @Override // defpackage.o03
    public final void t(int i, m6 m6Var) {
        if (i != 1) {
            m6Var.k("");
            m6Var.h(Chip.O);
            return;
        }
        Chip chip = this.q;
        CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
        if (closeIconContentDescription != null) {
            m6Var.k(closeIconContentDescription);
        } else {
            CharSequence text = chip.getText();
            m6Var.k(chip.getContext().getString(R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
        }
        m6Var.h(chip.getCloseIconTouchBoundsInt());
        m6Var.b(g6.g);
        m6Var.a.setEnabled(chip.isEnabled());
        m6Var.i(Button.class.getName());
    }

    @Override // defpackage.o03
    public final void u(int i, boolean z) {
        Chip chip = this.q;
        if (i == 1) {
            chip.x = z;
        }
        v61 v61Var = chip.e;
        boolean z2 = chip.x;
        boolean zD0 = false;
        if (v61Var.n0 != null) {
            zD0 = v61Var.d0(z2 ? new int[]{android.R.attr.state_pressed, android.R.attr.state_enabled} : v61.h1);
        }
        if (zD0) {
            chip.refreshDrawableState();
        }
    }
}
