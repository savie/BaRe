package defpackage;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.util.Arrays;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.model.StorageInfoLocal;
import org.swiftapps.swiftbackup.notice.NoticeViewActivity;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class w92 implements es5, zt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ w92(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.zt3
    public final yt3 a() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return new cu3(1, (x92) obj, x92.class, "onLocalStorageInfoUI", "onLocalStorageInfoUI(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;)V", 0);
            case 1:
                return (d05) obj;
            default:
                return new cu3(1, (NoticeViewActivity) obj, NoticeViewActivity.class, "render", "render(Ljava/lang/String;)V", 0);
        }
    }

    @Override // defpackage.es5
    public final void b(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                StorageInfoLocal storageInfoLocal = (StorageInfoLocal) obj;
                x92 x92Var = (x92) obj2;
                zn7 zn7VarD = zn7.q.d();
                jk8 jk8Var = x92Var.b;
                jk8Var.getClass();
                ca2 ca2Var = (ca2) ((y92) jk8Var).f.e;
                TextView textView = (TextView) ca2Var.e;
                LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) ca2Var.c;
                TextView textView2 = (TextView) ca2Var.f;
                HomeActivity homeActivityL = x92Var.l();
                int[] indicatorColor = linearProgressIndicator.getIndicatorColor();
                indicatorColor.getClass();
                int[] iArrCopyOf = Arrays.copyOf(indicatorColor, indicatorColor.length);
                int trackColor = linearProgressIndicator.getTrackColor();
                jk8 jk8Var2 = x92Var.b;
                jk8Var2.getClass();
                ((SwiftSegmentedCardGroup) ((y92) jk8Var2).f.a).b((ConstraintLayout) ca2Var.a, new mf(x92Var, 5));
                String str = (String) zn7VarD.f.getValue();
                str.getClass();
                ImageView imageView = (ImageView) ca2Var.b;
                int iV = tu0.v(32.0f * homeActivityL.getResources().getDisplayMetrics().density);
                ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                layoutParams.width = iV;
                layoutParams.height = iV;
                imageView.setLayoutParams(layoutParams);
                imageView.setImageResource(R.drawable.ic_chevron_right);
                imageView.setContentDescription(null);
                Drawable drawable = homeActivityL.getDrawable(R.drawable.circle_action_icon_ripple);
                drawable.getClass();
                imageView.setBackground(drawable);
                imageView.setImageTintList(ColorStateList.valueOf(sz8.x(homeActivityL)));
                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                imageView.setAdjustViewBounds(false);
                int iV2 = tu0.v(6.0f * homeActivityL.getResources().getDisplayMetrics().density);
                imageView.setPadding(iV2, iV2, iV2, iV2);
                ((TextView) ca2Var.d).setText(str);
                if (pe4.d(storageInfoLocal, StorageInfoLocal.c.INSTANCE)) {
                    textView2.setVisibility(8);
                    linearProgressIndicator.setVisibility(8);
                    linearProgressIndicator.setIndeterminate(true);
                    linearProgressIndicator.setVisibility(0);
                } else if (storageInfoLocal instanceof StorageInfoLocal.Success) {
                    linearProgressIndicator.setIndeterminate(false);
                    linearProgressIndicator.setIndicatorColor(Arrays.copyOf(iArrCopyOf, iArrCopyOf.length));
                    linearProgressIndicator.setTrackColor(trackColor);
                    linearProgressIndicator.setVisibility(0);
                    StorageInfoLocal.Success success = (StorageInfoLocal.Success) storageInfoLocal;
                    sz8.Z(linearProgressIndicator, success.getUsedPercent(), true, true, true);
                    String freeMemoryString = success.getFreeMemoryString();
                    String totalMemoryString = success.getTotalMemoryString();
                    int iX = sz8.x(homeActivityL);
                    int iA = sz8.A(homeActivityL);
                    freeMemoryString.getClass();
                    totalMemoryString.getClass();
                    String string = homeActivityL.getString(R.string.free_storage_of_total_text, freeMemoryString, totalMemoryString);
                    string.getClass();
                    textView.setText(nc8.A(string, iX, iA, freeMemoryString));
                    textView2.setVisibility(0);
                    textView2.setText(iz1.j(homeActivityL, success.getUsedPercentExact()));
                } else if (!pe4.d(storageInfoLocal, StorageInfoLocal.b.INSTANCE)) {
                    g84.i(storageInfoLocal, "Unhandled StorageInfoLocal status: ");
                } else {
                    linearProgressIndicator.setIndeterminate(false);
                    linearProgressIndicator.setIndicatorColor(Arrays.copyOf(iArrCopyOf, iArrCopyOf.length));
                    linearProgressIndicator.setTrackColor(trackColor);
                    linearProgressIndicator.setVisibility(0);
                    sz8.Z(linearProgressIndicator, 0, true, true, true);
                    textView.setText("???");
                    textView2.setVisibility(8);
                }
                if (storageInfoLocal instanceof StorageInfoLocal.Success) {
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new u92(storageInfoLocal, null));
                }
                if (x92Var.e) {
                    x92Var.e = false;
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation.setDuration(500L);
                    textView.startAnimation(alphaAnimation);
                }
                break;
            case 1:
                ((d05) obj2).invoke(obj);
                break;
            default:
                String str2 = (String) obj;
                str2.getClass();
                NoticeViewActivity noticeViewActivity = (NoticeViewActivity) obj2;
                ((f75) noticeViewActivity.M.getValue()).e.c((TextView) noticeViewActivity.N.getValue(), str2);
                break;
        }
    }

    public final boolean equals(Object obj) {
        switch (this.a) {
            case 0:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
            case 1:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
            default:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
        }
    }

    public final int hashCode() {
        switch (this.a) {
            case 0:
                break;
            case 1:
                break;
        }
        return a().hashCode();
    }
}
