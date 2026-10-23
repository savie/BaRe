.class public final Lbv6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq84;


# virtual methods
.method public final a(Lcy6;)V
    .locals 1

    .line 1
    iget-object p0, p1, Lcy6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Throwable;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcv6;->b:Ll15;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcy6;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p1, p1, Lcy6;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Throwable;

    .line 16
    .line 17
    invoke-interface {p0, v0, p1}, Ll15;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object p0, Lcv6;->b:Ll15;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcy6;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p0, p1}, Ll15;->d(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
