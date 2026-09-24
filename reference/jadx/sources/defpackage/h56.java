package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.premium.PremiumActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h56 extends fh6 {
    public final il0 u;
    public final r14 v;
    public final r14 w;
    public final r14 x;
    public final r14 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h56(View view, PremiumActivity premiumActivity) {
        super(view);
        premiumActivity.getClass();
        this.u = premiumActivity;
        View viewFindViewById = view.findViewById(R.id.ll_cloud_drives_group);
        viewFindViewById.getClass();
        View viewFindViewById2 = view.findViewById(R.id.tv_cloud_drives_title);
        viewFindViewById2.getClass();
        View viewFindViewById3 = view.findViewById(R.id.ll_cloud_drives_icons);
        viewFindViewById3.getClass();
        this.v = new r14((LinearLayout) viewFindViewById, (TextView) viewFindViewById2, (LinearLayout) viewFindViewById3);
        View viewFindViewById4 = view.findViewById(R.id.ll_s3_group);
        viewFindViewById4.getClass();
        View viewFindViewById5 = view.findViewById(R.id.tv_s3_title);
        viewFindViewById5.getClass();
        View viewFindViewById6 = view.findViewById(R.id.ll_s3_icons);
        viewFindViewById6.getClass();
        this.w = new r14((LinearLayout) viewFindViewById4, (TextView) viewFindViewById5, (LinearLayout) viewFindViewById6);
        View viewFindViewById7 = view.findViewById(R.id.ll_webdav_group);
        viewFindViewById7.getClass();
        View viewFindViewById8 = view.findViewById(R.id.tv_webdav_title);
        viewFindViewById8.getClass();
        View viewFindViewById9 = view.findViewById(R.id.ll_webdav_icons);
        viewFindViewById9.getClass();
        this.x = new r14((LinearLayout) viewFindViewById7, (TextView) viewFindViewById8, (LinearLayout) viewFindViewById9);
        View viewFindViewById10 = view.findViewById(R.id.ll_protocols_group);
        viewFindViewById10.getClass();
        View viewFindViewById11 = view.findViewById(R.id.tv_protocols_title);
        viewFindViewById11.getClass();
        View viewFindViewById12 = view.findViewById(R.id.ll_protocols_icons);
        viewFindViewById12.getClass();
        this.y = new r14((LinearLayout) viewFindViewById10, (TextView) viewFindViewById11, (LinearLayout) viewFindViewById12);
    }
}
