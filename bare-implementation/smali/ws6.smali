.class public final Lws6;
.super Lmt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public b:Ljava/util/List;


# virtual methods
.method public final c(Lzu6;)V
    .locals 7

    .line 1
    iget-object v0, p1, Low0;->b:Lvw2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lvw2;->d(Low0;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lws6;->b:Ljava/util/List;

    .line 11
    .line 12
    iget-object v3, p1, Low0;->b:Lvw2;

    .line 13
    .line 14
    invoke-virtual {v3, p1}, Lvw2;->d(Low0;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    int-to-long v3, v3

    .line 19
    const-class v5, Lwu6;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-static {v3, v4, v5, v6}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lwu6;

    .line 27
    .line 28
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final d(Lzu6;)I
    .locals 3

    .line 1
    iget-object p0, p0, Lws6;->b:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Low0;->k(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lwu6;

    .line 33
    .line 34
    iget-wide v1, v1, Lwu6;->a:J

    .line 35
    .line 36
    long-to-int v1, v1

    .line 37
    invoke-virtual {p1, v1}, Low0;->k(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    mul-int/lit8 p0, p0, 0x2

    .line 46
    .line 47
    add-int/lit8 p0, p0, 0x2

    .line 48
    .line 49
    return p0

    .line 50
    :cond_1
    const-string p0, "Cannot serialize an empty or null cipherList"

    .line 51
    .line 52
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return p0
.end method
