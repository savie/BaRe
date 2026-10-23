.class public final Lw21;
.super Lqb6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic c:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method public constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw21;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lqb6;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object p0, p0, Lw21;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 2
    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sub-int/2addr v0, p0

    .line 10
    return v0
.end method

.method public final b()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget-object p0, p0, Lw21;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 2
    .line 3
    iget p0, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 4
    .line 5
    return p0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object p0, p0, Lw21;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->S0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p0, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final e()I
    .locals 0

    .line 1
    iget-object p0, p0, Lw21;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingTop()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
