package defpackage;

import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import com.ferfalk.simplesearchview.SimpleSearchView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m85 implements MenuItem.OnMenuItemClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ View b;

    public /* synthetic */ m85(View view, int i) {
        this.a = i;
        this.b = view;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        int i = this.a;
        View view = this.b;
        switch (i) {
            case 0:
                ((Button) view).performClick();
                break;
            default:
                int i2 = SimpleSearchView.O;
                ((SimpleSearchView) view).b(true);
                break;
        }
        return true;
    }
}
