package defpackage;

import android.content.Context;
import com.airbnb.lottie.LottieAnimationView;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b25 implements Callable {
    public final /* synthetic */ String a;
    public final /* synthetic */ LottieAnimationView b;

    public b25(LottieAnimationView lottieAnimationView, String str) {
        this.b = lottieAnimationView;
        this.a = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        LottieAnimationView lottieAnimationView = this.b;
        boolean z = lottieAnimationView.I;
        String str = this.a;
        if (!z) {
            return n25.b(lottieAnimationView.getContext(), str, null);
        }
        Context context = lottieAnimationView.getContext();
        HashMap map = n25.a;
        return n25.b(context, str, "asset_" + str);
    }
}
