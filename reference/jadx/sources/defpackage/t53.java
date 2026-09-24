package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.appslist.data.FavoriteAppsRepo$FavoritesWrapper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t53 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ List b;

    public /* synthetic */ t53(int i, List list) {
        this.a = i;
        this.b = list;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        List list = this.b;
        switch (i) {
            case 0:
                v53 v53Var = v53.a;
                if (list.isEmpty()) {
                    v53.d().h();
                } else {
                    io4.g(v53.d());
                    gv7 gv7Var = w14.a;
                    w14.g(new FavoriteAppsRepo$FavoritesWrapper(list), v53.d(), false);
                }
                return be8.a;
            default:
                return list;
        }
    }
}
