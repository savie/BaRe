.class public final Lec7;
.super Lam0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Liu1;

.field public final B:Lhp1;


# direct methods
.method public constructor <init>(Lc35;Ljs4;Lhp1;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lam0;-><init>(Lc35;Ljs4;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lec7;->B:Lhp1;

    .line 5
    .line 6
    new-instance p3, Lbc7;

    .line 7
    .line 8
    iget-object p2, p2, Ljs4;->a:Ljava/util/List;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const-string v1, "__container"

    .line 12
    .line 13
    invoke-direct {p3, v1, p2, v0}, Lbc7;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Liu1;

    .line 17
    .line 18
    invoke-direct {p2, p1, p0, p3}, Liu1;-><init>(Lc35;Lam0;Lbc7;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lec7;->A:Liu1;

    .line 22
    .line 23
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {p2, p0, p0}, Liu1;->c(Ljava/util/List;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lam0;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lec7;->A:Liu1;

    .line 5
    .line 6
    iget-object p0, p0, Lam0;->l:Landroid/graphics/Matrix;

    .line 7
    .line 8
    invoke-virtual {p2, p1, p0, p3}, Liu1;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lec7;->A:Liu1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Liu1;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l()Lz28;
    .locals 1

    .line 1
    iget-object v0, p0, Lam0;->n:Ljs4;

    .line 2
    .line 3
    iget-object v0, v0, Ljs4;->w:Lz28;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object p0, p0, Lec7;->B:Lhp1;

    .line 9
    .line 10
    iget-object p0, p0, Lam0;->n:Ljs4;

    .line 11
    .line 12
    iget-object p0, p0, Ljs4;->w:Lz28;

    .line 13
    .line 14
    return-object p0
.end method

.method public final m()Lnz4;
    .locals 1

    .line 1
    iget-object v0, p0, Lam0;->n:Ljs4;

    .line 2
    .line 3
    iget-object v0, v0, Ljs4;->x:Lnz4;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object p0, p0, Lec7;->B:Lhp1;

    .line 9
    .line 10
    iget-object p0, p0, Lam0;->n:Ljs4;

    .line 11
    .line 12
    iget-object p0, p0, Ljs4;->x:Lnz4;

    .line 13
    .line 14
    return-object p0
.end method

.method public final q(Lpo4;ILjava/util/ArrayList;Lpo4;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lec7;->A:Liu1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Liu1;->d(Lpo4;ILjava/util/ArrayList;Lpo4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
