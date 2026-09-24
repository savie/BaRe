.class public final Lj83;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ls73;
.implements Lr73;


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public final b(Lm93;Lzu6;)V
    .locals 0

    .line 1
    check-cast p1, La73;

    .line 2
    .line 3
    iget-object p0, p1, La73;->a:Lga3;

    .line 4
    .line 5
    invoke-static {p0, p2}, Lms8;->E(Lga3;Low0;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p1, La73;->b:Lga3;

    .line 9
    .line 10
    invoke-static {p0, p2}, Lms8;->E(Lga3;Low0;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p1, La73;->c:Lga3;

    .line 14
    .line 15
    invoke-static {p0, p2}, Lms8;->E(Lga3;Low0;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p1, La73;->d:Lga3;

    .line 19
    .line 20
    invoke-static {p0, p2}, Lms8;->E(Lga3;Low0;)V

    .line 21
    .line 22
    .line 23
    iget-wide p0, p1, La73;->e:J

    .line 24
    .line 25
    invoke-virtual {p2, p0, p1}, Low0;->l(J)V

    .line 26
    .line 27
    .line 28
    const-wide/16 p0, 0x0

    .line 29
    .line 30
    invoke-virtual {p2, p0, p1}, Low0;->l(J)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final c(Low0;)Lt73;
    .locals 7

    .line 1
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object p0, p1, Low0;->b:Lvw2;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    const/4 p0, 0x4

    .line 24
    invoke-virtual {p1, p0}, Low0;->t(I)V

    .line 25
    .line 26
    .line 27
    new-instance v0, La73;

    .line 28
    .line 29
    invoke-direct/range {v0 .. v6}, La73;-><init>(Lga3;Lga3;Lga3;Lga3;J)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
