package defpackage;
import android.view.View;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;
public final class nt7 implements View.OnLayoutChangeListener {
    public final SwiftSegmentedCardGroup a; public final View b; public final MaterialCardView c; public final View d;
    public nt7(SwiftSegmentedCardGroup a, View b, MaterialCardView c, View d){this.a=a;this.b=b;this.c=c;this.d=d;}
    @Override public final void onLayoutChange(View v,int l,int t,int r,int b,int oldL,int oldT,int oldR,int oldB){SwiftSegmentedCardGroup.c(this.a,this.b,this.c,this.d);}
}