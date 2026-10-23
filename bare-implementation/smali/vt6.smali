.class public final Lvt6;
.super Lmt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public b:Ljava/util/List;

.field public c:[B


# virtual methods
.method public final c(Lzu6;)V
    .locals 9

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
    iget-object v1, p1, Low0;->b:Lvw2;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lvw2;->d(Low0;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lvw2;->d(Low0;)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    int-to-long v5, v4

    .line 21
    const-class v7, Lxu6;

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    invoke-static {v5, v6, v7, v8}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lxu6;

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    iget-object v4, p0, Lvt6;->b:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "Unknown SMB3HashAlgorithm with value \'%d\'"

    .line 51
    .line 52
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_1
    new-array v0, v2, [B

    .line 61
    .line 62
    invoke-virtual {p1, v0, v2}, Low0;->o([BI)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lvt6;->c:[B

    .line 66
    .line 67
    return-void
.end method

.method public final d(Lzu6;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lvt6;->b:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lvt6;->c:[B

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1, v1}, Low0;->k(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lvt6;->c:[B

    .line 18
    .line 19
    array-length v1, v1

    .line 20
    invoke-virtual {p1, v1}, Low0;->k(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lxu6;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {p1, v2}, Low0;->k(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lvt6;->c:[B

    .line 48
    .line 49
    array-length v2, v1

    .line 50
    invoke-virtual {p1, v1, v2}, Low0;->i([BI)Low0;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    mul-int/lit8 p1, p1, 0x2

    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x4

    .line 60
    .line 61
    iget-object p0, p0, Lvt6;->c:[B

    .line 62
    .line 63
    array-length p0, p0

    .line 64
    add-int/2addr p1, p0

    .line 65
    return p1

    .line 66
    :cond_1
    const-string p0, "A salt should be provided"

    .line 67
    .line 68
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :cond_2
    const-string p0, "There should be at least 1 hash algorithm provided"

    .line 73
    .line 74
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return v1
.end method
