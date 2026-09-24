.class public final Li83;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ls73;
.implements Lr73;


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/16 p0, 0x13

    .line 2
    .line 3
    return p0
.end method

.method public final b(Lm93;Lzu6;)V
    .locals 0

    .line 1
    check-cast p1, Lv63;

    .line 2
    .line 3
    iget-wide p0, p1, Lv63;->a:J

    .line 4
    .line 5
    invoke-virtual {p2, p0, p1}, Low0;->g(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(Low0;)Lt73;
    .locals 1

    .line 1
    iget-object p0, p1, Low0;->b:Lvw2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvw2;->a(Low0;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    new-instance v0, Lv63;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-wide p0, v0, Lv63;->a:J

    .line 13
    .line 14
    return-object v0
.end method
