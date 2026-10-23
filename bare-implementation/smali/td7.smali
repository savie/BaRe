.class public final Ltd7;
.super Lwd7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:J


# direct methods
.method public constructor <init>(Lkr7;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "blockdev --getsize64 "

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lwd7;-><init>(Lkr7;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lkr7;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    filled-new-array {p1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget p2, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 25
    .line 26
    invoke-static {}, Lk55;->j()Lzd7;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2, p1}, Lcom/topjohnwu/superuser/ShellUtils;->fastCmd(Lcom/topjohnwu/superuser/Shell;[Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    const-wide p1, 0x7fffffffffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :goto_0
    iput-wide p1, p0, Ltd7;->e:J

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a([BIIII)I
    .locals 6

    .line 1
    mul-int v0, p4, p5

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    iget-wide v2, p0, Ltd7;->e:J

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lwd7;->c:Z

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :cond_0
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move v4, p4

    .line 20
    move v5, p5

    .line 21
    invoke-super/range {v0 .. v5}, Lwd7;->a([BIIII)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ltd7;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final write([BII)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lwd7;->d:J

    .line 2
    .line 3
    int-to-long v2, p3

    .line 4
    add-long/2addr v0, v2

    .line 5
    iget-wide v2, p0, Ltd7;->e:J

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Lwd7;->write([BII)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "Cannot write pass block size"

    .line 16
    .line 17
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
