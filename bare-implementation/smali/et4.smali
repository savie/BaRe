.class public final Let4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:Lrt3;

.field public c:J

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(JLrt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Let4;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Let4;->b:Lrt3;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Let4;->d:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Let4;->d:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    iget-wide v4, p0, Let4;->c:J

    .line 10
    .line 11
    iget-wide v6, p0, Let4;->a:J

    .line 12
    .line 13
    cmp-long v8, v4, v6

    .line 14
    .line 15
    if-nez v8, :cond_0

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v8, 0x0

    .line 20
    :goto_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-wide/16 v9, 0x7d0

    .line 23
    .line 24
    cmp-long p1, v2, v9

    .line 25
    .line 26
    if-gez p1, :cond_1

    .line 27
    .line 28
    if-nez v8, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-wide/16 v9, 0x0

    .line 32
    .line 33
    cmp-long p1, v2, v9

    .line 34
    .line 35
    if-lez p1, :cond_2

    .line 36
    .line 37
    if-nez v8, :cond_2

    .line 38
    .line 39
    iget-wide v8, p0, Let4;->e:J

    .line 40
    .line 41
    sub-long/2addr v4, v8

    .line 42
    long-to-double v4, v4

    .line 43
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    mul-double/2addr v4, v8

    .line 49
    long-to-double v2, v2

    .line 50
    div-double/2addr v4, v2

    .line 51
    invoke-static {v4, v5}, Ltu0;->w(D)J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    :cond_2
    iget-object p1, p0, Let4;->b:Lrt3;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-wide v2, p0, Let4;->c:J

    .line 60
    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p1, v2, v3, v4}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_3
    iput-wide v0, p0, Let4;->d:J

    .line 77
    .line 78
    iget-wide v0, p0, Let4;->c:J

    .line 79
    .line 80
    iput-wide v0, p0, Let4;->e:J

    .line 81
    .line 82
    return-void
.end method
