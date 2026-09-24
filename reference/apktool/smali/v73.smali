.class public final Lv73;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ls73;
.implements Lr73;


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/16 p0, 0x10

    .line 2
    .line 3
    return p0
.end method

.method public final b(Lm93;Lzu6;)V
    .locals 2

    .line 1
    check-cast p1, Lx83;

    .line 2
    .line 3
    iget p0, p1, Lx83;->a:I

    .line 4
    .line 5
    int-to-long p0, p0

    .line 6
    const-wide v0, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr p0, v0

    .line 12
    invoke-virtual {p2, p0, p1}, Low0;->l(J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(Low0;)Lt73;
    .locals 0

    .line 1
    iget-object p0, p1, Low0;->b:Lvw2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    long-to-int p0, p0

    .line 8
    new-instance p1, Lx83;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput p0, p1, Lx83;->a:I

    .line 14
    .line 15
    return-object p1
.end method
