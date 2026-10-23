.class public final Lvm5;
.super Lh58;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p2, p0}, Lfk4;->b0(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    sget-object p0, Lmm4;->k:Lmm4;

    .line 4
    .line 5
    invoke-virtual {p4, p1, p0}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-class p3, Ljava/nio/file/Path;

    .line 10
    .line 11
    iput-object p3, p0, Lnw8;->b:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {p4, p2, p0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Lfk4;->b0(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p2, p0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 29
    .line 30
    .line 31
    return-void
.end method
