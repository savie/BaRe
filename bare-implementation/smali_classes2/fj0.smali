.class public final Lfj0;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final h(Lfh6;I)V
    .locals 0

    .line 1
    check-cast p1, Lej0;

    .line 2
    .line 3
    iget-object p0, p0, Lr35;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/ClassCastException;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public final k(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0043

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final l(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p0, Lej0;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lfh6;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
