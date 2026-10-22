package defpackage;

import android.view.View;
import com.google.android.gms.common.api.Scope;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y09 implements Comparator {
    public static final /* synthetic */ y09 b = new y09(0);
    public final /* synthetic */ int a;

    public /* synthetic */ y09(int i) {
        this.a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return ((Scope) obj).b.compareTo(((Scope) obj2).b);
            case 1:
                return ms8.n(((q63) obj).p(), ((q63) obj2).p());
            case 2:
                return ms8.n(Integer.valueOf(((bj1) obj).a), Integer.valueOf(((bj1) obj2).a));
            default:
                return ((View) obj).getTop() - ((View) obj2).getTop();
        }
    }
}
