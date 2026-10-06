package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tc5 extends bq2 {
    public hc5 G;
    public ic5 H;
    public final int x;
    public final int y;

    public tc5(Context context, boolean z) {
        super(context, z);
        if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
            this.x = 21;
            this.y = 22;
        } else {
            this.x = 22;
            this.y = 21;
        }
    }

    @Override // defpackage.bq2, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        cc5 cc5Var;
        int headersCount;
        int iPointToPosition;
        int i;
        if (this.G != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                headersCount = headerViewListAdapter.getHeadersCount();
                cc5Var = (cc5) headerViewListAdapter.getWrappedAdapter();
            } else {
                cc5Var = (cc5) adapter;
                headersCount = 0;
            }
            ic5 ic5VarB = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i = iPointToPosition - headersCount) < 0 || i >= cc5Var.getCount()) ? null : cc5Var.getItem(i);
            ic5 ic5Var = this.H;
            if (ic5Var != ic5VarB) {
                fc5 fc5Var = cc5Var.a;
                if (ic5Var != null) {
                    this.G.d(fc5Var, ic5Var);
                }
                this.H = ic5VarB;
                if (ic5VarB != null) {
                    this.G.j(fc5Var, ic5VarB);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i == this.x) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i != this.y) {
            return super.onKeyDown(i, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (cc5) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (cc5) adapter).a.c(false);
        return true;
    }

    public void setHoverListener(hc5 hc5Var) {
        this.G = hc5Var;
    }

    @Override // defpackage.bq2, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
