.class public final Lxx9;
.super Lks9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    sget-object p1, Lks9;->f:Lzh8;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lks9;->k:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p1, p0, v0, v1}, Lzh8;->S(Lks9;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lks9;->b(Lks9;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method
