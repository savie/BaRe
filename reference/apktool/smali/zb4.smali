.class public final Lzb4;
.super Lh58;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Liv1;


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    const-class v0, Ljava/net/InetAddress;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lh58;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p1, p0, Lzb4;->d:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lc87;Lkp0;)Lem4;
    .locals 1

    .line 1
    iget-object v0, p0, Ltn7;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Ltn7;->k(Lc87;Lkp0;Ljava/lang/Class;)Lbk4;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p1, Lbk4;->b:Lak4;

    .line 10
    .line 11
    invoke-virtual {p1}, Lak4;->a()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    sget-object p2, Lak4;->k:Lak4;

    .line 18
    .line 19
    if-ne p1, p2, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    iget-boolean p2, p0, Lzb4;->d:Z

    .line 25
    .line 26
    if-eq p1, p2, :cond_2

    .line 27
    .line 28
    new-instance p0, Lzb4;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lzb4;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-object p0
.end method

.method public final bridge synthetic e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/net/InetAddress;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lzb4;->p(Ljava/net/InetAddress;Lfk4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/net/InetAddress;

    .line 2
    .line 3
    sget-object p3, Lmm4;->k:Lmm4;

    .line 4
    .line 5
    invoke-virtual {p4, p1, p3}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    const-class v0, Ljava/net/InetAddress;

    .line 10
    .line 11
    iput-object v0, p3, Lnw8;->b:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {p4, p2, p3}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p0, p1, p2}, Lzb4;->p(Ljava/net/InetAddress;Lfk4;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p4, p2, p3}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final p(Ljava/net/InetAddress;Lfk4;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lzb4;->d:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/16 p1, 0x2f

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ltz p1, :cond_2

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_2
    :goto_0
    invoke-virtual {p2, p0}, Lfk4;->b0(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
