package defpackage;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.listitem.ListItemLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class kx4 extends fh6 {
    public final ListItemLayout u;

    public kx4(View view) {
        ListItemLayout listItemLayout;
        super(view);
        if (!(view instanceof ListItemLayout)) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt instanceof ListItemLayout) {
                        listItemLayout = (ListItemLayout) childAt;
                    }
                }
            }
            l0.e("Didn't find ListItemLayout in root itemView or among itemView's children.");
            throw null;
        }
        listItemLayout = (ListItemLayout) view;
        this.u = listItemLayout;
    }

    public void r(int i, int i2) {
        if (i == -1 || i2 == 0) {
            return;
        }
        ListItemLayout listItemLayout = this.u;
        listItemLayout.getClass();
        if (i < 0 || i2 < 0) {
            listItemLayout.a = null;
        } else if (i2 == 1) {
            listItemLayout.a = ListItemLayout.J;
        } else if (i == 0) {
            listItemLayout.a = ListItemLayout.G;
        } else if (i == i2 - 1) {
            listItemLayout.a = ListItemLayout.I;
        } else {
            listItemLayout.a = ListItemLayout.H;
        }
        listItemLayout.refreshDrawableState();
    }
}
