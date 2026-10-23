.class public final Li18;
.super Lxo4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final g(Lwo4;F)Ljava/lang/Object;
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float p0, p2, p0

    .line 4
    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    iget-object p0, p1, Lwo4;->c:Ljava/lang/Object;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast p0, Lrn2;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    :goto_0
    iget-object p0, p1, Lwo4;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lrn2;

    .line 18
    .line 19
    return-object p0
.end method
