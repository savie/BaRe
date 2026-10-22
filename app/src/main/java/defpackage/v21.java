package defpackage;

import com.google.android.material.carousel.CarouselLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v21 extends qb6 {
    public final /* synthetic */ CarouselLayoutManager c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v21(CarouselLayoutManager carouselLayoutManager) {
        super(1);
        this.c = carouselLayoutManager;
    }

    @Override // defpackage.qb6
    public final int a() {
        return this.c.G;
    }

    @Override // defpackage.qb6
    public final int b() {
        return this.c.getPaddingLeft();
    }

    @Override // defpackage.qb6
    public final int c() {
        CarouselLayoutManager carouselLayoutManager = this.c;
        return carouselLayoutManager.y - carouselLayoutManager.getPaddingRight();
    }

    @Override // defpackage.qb6
    public final int d() {
        return 0;
    }

    @Override // defpackage.qb6
    public final int e() {
        return 0;
    }
}
