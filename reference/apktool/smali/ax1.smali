.class public final Lax1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lp75;


# virtual methods
.method public final a(Lbs2;Lon5;)V
    .locals 4

    .line 1
    check-cast p2, Lrw5;

    .line 2
    .line 3
    iget-object p0, p2, Lon5;->a:Lon5;

    .line 4
    .line 5
    check-cast p0, Lws0;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lon5;->a:Lon5;

    .line 10
    .line 11
    check-cast p0, Lws0;

    .line 12
    .line 13
    instance-of v0, p0, Llw4;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p0, Llw4;

    .line 18
    .line 19
    iget-boolean p0, p0, Llw4;->f:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    if-nez p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lbs2;->b()V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lbs2;->g()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, p2}, Lbs2;->j(Lon5;)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Llg7;->f:Lq86;

    .line 36
    .line 37
    iget-object v2, p1, Lbs2;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Ldi4;

    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v2, v3}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Lbs2;->h(Lon5;I)V

    .line 49
    .line 50
    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lbs2;->a(Lon5;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method
