package defpackage;

import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.util.Arrays;
import org.swiftapps.swiftbackup.home.HomeActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class y54 {
    public final HomeActivity a;
    public final ca2 b;
    public final int[] c;
    public final int d;

    public y54(HomeActivity homeActivity, ca2 ca2Var) {
        this.a = homeActivity;
        this.b = ca2Var;
        LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) ca2Var.c;
        int[] indicatorColor = linearProgressIndicator.getIndicatorColor();
        indicatorColor.getClass();
        this.c = Arrays.copyOf(indicatorColor, indicatorColor.length);
        this.d = linearProgressIndicator.getTrackColor();
    }
}
