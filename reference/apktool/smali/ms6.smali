.class public final Lms6;
.super Lmt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public b:Ljava/util/ArrayList;


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
    const/4 v1, 0x2

    .line 8
    invoke-virtual {p1, v1}, Low0;->t(I)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {p1, v1}, Low0;->t(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p1, Low0;->b:Lvw2;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lvw2;->d(Low0;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-long v3, v2

    .line 25
    const-class v5, Ltu6;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-static {v3, v4, v5, v6}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ltu6;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lms6;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "Unknown SMB3CompressionAlgorithm with value \'%d\'"

    .line 55
    .line 56
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_1
    return-void
.end method

.method public final d(Lzu6;)I
    .locals 3

    .line 1
    iget-object p0, p0, Lms6;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Low0;->k(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lzu6;->v()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lzu6;->w()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Ltu6;

    .line 33
    .line 34
    iget-wide v1, v1, Ltu6;->a:J

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
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    mul-int/lit8 p0, p0, 0x2

    .line 46
    .line 47
    add-int/lit8 p0, p0, 0x8

    .line 48
    .line 49
    return p0

    .line 50
    :cond_1
    const-string p0, "Cannot write a null compressionAlgorithms array"

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
