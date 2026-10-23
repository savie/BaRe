.class public final Lts6;
.super Lst6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final d()Lst6;
    .locals 1

    .line 1
    iget-object v0, p0, Lev6;->a:Ldv6;

    .line 2
    .line 3
    check-cast v0, Lut6;

    .line 4
    .line 5
    iget v0, v0, Lut6;->l:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lts6;

    .line 10
    .line 11
    iget-object p0, p0, Lev6;->b:Lzu6;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lst6;-><init>(Lzu6;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method
