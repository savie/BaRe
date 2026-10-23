.class public final Lte0;
.super Lqe0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Ljw0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqe0;->a:Lpe0;

    .line 2
    .line 3
    iget-wide v0, v0, Lpe0;->a:J

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    invoke-virtual {p1, v0}, Low0;->k(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-virtual {p1, v0}, Low0;->k(I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lqe0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p1, v0, v1}, Low0;->l(J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
