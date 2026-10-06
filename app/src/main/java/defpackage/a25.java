package defpackage;

import android.content.Context;
import com.airbnb.lottie.LottieAnimationView;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a25 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ LottieAnimationView b;

    public a25(LottieAnimationView lottieAnimationView, int i) {
        this.b = lottieAnimationView;
        this.a = i;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        LottieAnimationView lottieAnimationView = this.b;
        boolean z = lottieAnimationView.I;
        int i = this.a;
        if (!z) {
            return n25.e(i, lottieAnimationView.getContext(), null);
        }
        Context context = lottieAnimationView.getContext();
        return n25.e(i, context, n25.h(context, i));
    }
}
