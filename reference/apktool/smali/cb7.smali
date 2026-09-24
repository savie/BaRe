.class public final Lcb7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:I

.field public g:Ljava/util/BitSet;

.field public h:I

.field public i:I


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcb7;->i:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lcb7;->f:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "archive with entries but no folders"

    .line 11
    .line 12
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    :goto_0
    int-to-long v0, v0

    .line 17
    iget-wide v2, p0, Lcb7;->e:J

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-gtz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Lcb7;->b()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, 0x400

    .line 28
    .line 29
    div-long/2addr v0, v2

    .line 30
    int-to-long v2, p1

    .line 31
    cmp-long p0, v2, v0

    .line 32
    .line 33
    if-ltz p0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    new-instance p0, Lzb5;

    .line 37
    .line 38
    invoke-direct {p0, p1, v0, v1}, Lzb5;-><init>(IJ)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_3
    const-string p0, "archive doesn\'t contain enough substreams for entries"

    .line 43
    .line 44
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final b()J
    .locals 10

    .line 1
    iget v0, p0, Lcb7;->a:I

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    const-wide/16 v3, 0x10

    .line 5
    .line 6
    mul-long/2addr v1, v3

    .line 7
    div-int/lit8 v5, v0, 0x8

    .line 8
    .line 9
    int-to-long v5, v5

    .line 10
    add-long/2addr v1, v5

    .line 11
    iget v5, p0, Lcb7;->f:I

    .line 12
    .line 13
    int-to-long v6, v5

    .line 14
    const-wide/16 v8, 0x1e

    .line 15
    .line 16
    mul-long/2addr v6, v8

    .line 17
    add-long/2addr v6, v1

    .line 18
    iget-wide v1, p0, Lcb7;->b:J

    .line 19
    .line 20
    const-wide/16 v8, 0x16

    .line 21
    .line 22
    mul-long/2addr v1, v8

    .line 23
    add-long/2addr v1, v6

    .line 24
    iget-wide v6, p0, Lcb7;->c:J

    .line 25
    .line 26
    int-to-long v8, v5

    .line 27
    sub-long v8, v6, v8

    .line 28
    .line 29
    mul-long/2addr v8, v3

    .line 30
    add-long/2addr v8, v1

    .line 31
    iget-wide v1, p0, Lcb7;->d:J

    .line 32
    .line 33
    sub-long/2addr v1, v6

    .line 34
    int-to-long v3, v5

    .line 35
    add-long/2addr v1, v3

    .line 36
    const-wide/16 v3, 0x8

    .line 37
    .line 38
    mul-long/2addr v1, v3

    .line 39
    add-long/2addr v1, v8

    .line 40
    mul-long/2addr v6, v3

    .line 41
    add-long/2addr v6, v1

    .line 42
    iget p0, p0, Lcb7;->h:I

    .line 43
    .line 44
    int-to-long v1, p0

    .line 45
    const-wide/16 v3, 0x64

    .line 46
    .line 47
    mul-long/2addr v1, v3

    .line 48
    add-long/2addr v1, v6

    .line 49
    mul-int/lit8 v5, v5, 0x8

    .line 50
    .line 51
    mul-int/lit8 v0, v0, 0x8

    .line 52
    .line 53
    add-int/2addr v0, v5

    .line 54
    mul-int/lit8 p0, p0, 0x4

    .line 55
    .line 56
    add-int/2addr p0, v0

    .line 57
    int-to-long v3, p0

    .line 58
    add-long/2addr v1, v3

    .line 59
    const-wide/16 v3, 0x2

    .line 60
    .line 61
    mul-long/2addr v1, v3

    .line 62
    return-wide v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcb7;->h:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcb7;->f:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcb7;->b()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x400

    .line 18
    .line 19
    div-long/2addr v2, v4

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "Archive with %,d entries in %,d folders, estimated size %,d KiB."

    .line 29
    .line 30
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
