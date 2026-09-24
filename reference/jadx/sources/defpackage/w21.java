package defpackage;

import com.google.android.material.carousel.CarouselLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w21 extends qb6 {
    public final /* synthetic */ CarouselLayoutManager c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w21(CarouselLayoutManager carouselLayoutManager) {
        super(0);
        this.c = carouselLayoutManager;
    }

    @Override // defpackage.qb6
    public final int a() {
        CarouselLayoutManager carouselLayoutManager = this.c;
        return carouselLayoutManager.G - carouselLayoutManager.getPaddingBottom();
    }

    @Override // defpackage.qb6
    public final int b() {
        return 0;
    }

    @Override // defpackage.qb6
    public final int c() {
        return this.c.y;
    }

    @Override // defpackage.qb6
    public final int d() {
        CarouselLayoutManager carouselLayoutManager = this.c;
        if (carouselLayoutManager.S0()) {
            return carouselLayoutManager.y;
        }
        return 0;
    }

    @Override // defpackage.qb6
    public final int e() {
        return this.c.getPaddingTop();
    }
}
