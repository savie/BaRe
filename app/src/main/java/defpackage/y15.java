package defpackage;

import com.airbnb.lottie.LottieAnimationView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y15 implements e35 {
    public final /* synthetic */ LottieAnimationView a;

    public y15(LottieAnimationView lottieAnimationView) {
        this.a = lottieAnimationView;
    }

    @Override // defpackage.e35
    public final void onResult(Object obj) {
        this.a.setComposition((e25) obj);
    }
}
