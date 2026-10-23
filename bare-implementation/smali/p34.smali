.class public final Lp34;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsj7;


# virtual methods
.method public final a(Lj75;Ldi4;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p0, Lo34;

    .line 2
    .line 3
    iget-object p1, p1, Lj75;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lo75;

    .line 6
    .line 7
    sget-object v0, Llg7;->d:Lq86;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lq86;->a(Ldi4;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-direct {p0, p1, p2}, Lo34;-><init>(Lo75;I)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method
