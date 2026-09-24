package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.ec5;
import defpackage.fc5;
import defpackage.ic5;
import defpackage.u94;
import defpackage.zc5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements ec5, zc5, AdapterView.OnItemClickListener {
    public static final int[] b = {R.attr.background, R.attr.divider};
    public fc5 a;

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        u94 u94VarE = u94.e(i, 0, context, attributeSet, b);
        TypedArray typedArray = (TypedArray) u94VarE.b;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(u94VarE.b(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(u94VarE.b(1));
        }
        u94VarE.f();
    }

    @Override // defpackage.ec5
    public final boolean a(ic5 ic5Var) {
        return this.a.q(ic5Var, null, 0);
    }

    @Override // defpackage.zc5
    public final void b(fc5 fc5Var) {
        this.a = fc5Var;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        a((ic5) getAdapter().getItem(i));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }
}
