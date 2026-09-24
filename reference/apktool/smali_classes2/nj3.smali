.class public final Lnj3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lww4;Lpj3;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 10

    .line 1
    invoke-static {p3}, Lio4;->h(Ljava/lang/Long;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p4}, Lio4;->h(Ljava/lang/Long;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    cmp-long v1, v4, v2

    .line 28
    .line 29
    if-lez v1, :cond_1

    .line 30
    .line 31
    move-object v6, p2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v6, v0

    .line 34
    :goto_0
    if-eqz p3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    cmp-long p2, v4, v2

    .line 41
    .line 42
    if-lez p2, :cond_2

    .line 43
    .line 44
    move-object v7, p3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v7, v0

    .line 47
    :goto_1
    if-eqz p4, :cond_3

    .line 48
    .line 49
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide p2

    .line 53
    cmp-long p2, p2, v2

    .line 54
    .line 55
    if-lez p2, :cond_3

    .line 56
    .line 57
    move-object v8, p4

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move-object v8, v0

    .line 60
    :goto_2
    if-eqz p5, :cond_4

    .line 61
    .line 62
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-lez p2, :cond_4

    .line 67
    .line 68
    move-object v9, p5

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    move-object v9, v0

    .line 71
    :goto_3
    new-instance v4, Loj3;

    .line 72
    .line 73
    move-object v5, p1

    .line 74
    invoke-direct/range {v4 .. v9}, Loj3;-><init>(Lpj3;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v4}, Lww4;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static b(Lvm3;)Ljava/lang/Long;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lvm3;->getDate()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    new-instance v0, Lbn6;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    move-object p0, v0

    .line 17
    :goto_0
    nop

    .line 18
    instance-of v0, p0, Lbn6;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    move-object p0, v1

    .line 24
    :cond_0
    check-cast p0, Ljava/lang/Long;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    cmp-long v0, v2, v4

    .line 35
    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    move-object v1, p0

    .line 39
    :cond_1
    return-object v1
.end method

.method public static c(Ljava/util/ArrayList;)Ljava/lang/Long;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    move-wide v2, v0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Ljava/lang/Long;

    .line 19
    .line 20
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    cmp-long v5, v5, v0

    .line 25
    .line 26
    if-gtz v5, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    add-long/2addr v2, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
