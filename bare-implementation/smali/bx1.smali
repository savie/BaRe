.class public final Lbx1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lp75;


# virtual methods
.method public final a(Lbs2;Lon5;)V
    .locals 3

    .line 1
    check-cast p2, Llv4;

    .line 2
    .line 3
    invoke-virtual {p1}, Lbs2;->g()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {p1, p2}, Lbs2;->j(Lon5;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p2, Llv4;->f:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v1, Llg7;->e:Lq86;

    .line 13
    .line 14
    iget-object v2, p1, Lbs2;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ldi4;

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, p0}, Lbs2;->h(Lon5;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
