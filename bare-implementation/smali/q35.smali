.class public final Lq35;
.super Lf62;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public d:Lzw2;


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lll6;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-interface {p1}, Lll6;->c()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljo4;

    .line 2
    .line 3
    check-cast p2, Lll6;

    .line 4
    .line 5
    iget-object p0, p0, Lq35;->d:Lzw2;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lzw2;->e:Lbe;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p2, p1}, Lbe;->f(Lll6;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
