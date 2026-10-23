.class public final Lqv4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsj7;


# virtual methods
.method public final a(Lj75;Ldi4;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p0, Lpv4;

    .line 2
    .line 3
    iget-object v0, p1, Lj75;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lo75;

    .line 6
    .line 7
    sget-object v1, Llg7;->e:Lq86;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Lq86;->a(Ldi4;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lj75;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lhx0;

    .line 18
    .line 19
    invoke-direct {p0, v0, p2, p1}, Lpv4;-><init>(Lo75;Ljava/lang/String;Lhx0;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method
