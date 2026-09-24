.class public final Lgx1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lp75;


# virtual methods
.method public final a(Lbs2;Lon5;)V
    .locals 4

    .line 1
    check-cast p2, Lyj1;

    .line 2
    .line 3
    invoke-virtual {p1}, Lbs2;->g()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    iget-object v0, p1, Lbs2;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lwj7;

    .line 10
    .line 11
    iget-object v1, v0, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v2, 0xa0

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v3, p2, Lyj1;->f:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lwj7;->a(C)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, p0}, Lbs2;->h(Lon5;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
