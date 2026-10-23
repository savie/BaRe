.class public final synthetic Lcz6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lh07;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lrt3;

.field public final synthetic d:Lkh6;

.field public final synthetic e:Lkh6;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;Lrt3;Lkh6;Lkh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcz6;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lcz6;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p4, p0, Lcz6;->c:Lrt3;

    .line 9
    .line 10
    iput-object p5, p0, Lcz6;->d:Lkh6;

    .line 11
    .line 12
    iput-object p6, p0, Lcz6;->e:Lkh6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lf07;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v6, v0, Lcz6;->a:J

    .line 6
    .line 7
    iget-object v8, v0, Lcz6;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v9, v0, Lcz6;->c:Lrt3;

    .line 10
    .line 11
    iget-object v10, v0, Lcz6;->d:Lkh6;

    .line 12
    .line 13
    iget-object v0, v0, Lcz6;->e:Lkh6;

    .line 14
    .line 15
    iget-object v2, v1, Lf07;->a:Li07;

    .line 16
    .line 17
    sget-object v3, Li07;->Extract:Li07;

    .line 18
    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, v1, Lf07;->d:Lm07;

    .line 23
    .line 24
    sget-object v11, Lm07;->Progress:Lm07;

    .line 25
    .line 26
    if-eq v2, v11, :cond_1

    .line 27
    .line 28
    sget-object v3, Lm07;->Completed:Lm07;

    .line 29
    .line 30
    if-eq v2, v3, :cond_1

    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v12

    .line 37
    iget-wide v2, v1, Lf07;->f:J

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    invoke-static/range {v2 .. v7}, Ll73;->i(JJJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    monitor-enter v8

    .line 46
    :try_start_0
    iget-wide v4, v10, Lkh6;->a:J

    .line 47
    .line 48
    sub-long v14, v12, v4

    .line 49
    .line 50
    iget-object v1, v1, Lf07;->d:Lm07;

    .line 51
    .line 52
    const-wide/16 v16, 0x0

    .line 53
    .line 54
    if-ne v1, v11, :cond_3

    .line 55
    .line 56
    cmp-long v1, v4, v16

    .line 57
    .line 58
    if-lez v1, :cond_3

    .line 59
    .line 60
    cmp-long v1, v14, v16

    .line 61
    .line 62
    if-lez v1, :cond_3

    .line 63
    .line 64
    iget-wide v4, v0, Lkh6;->a:J

    .line 65
    .line 66
    sub-long v4, v2, v4

    .line 67
    .line 68
    cmp-long v1, v4, v16

    .line 69
    .line 70
    if-gez v1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-wide/from16 v16, v4

    .line 74
    .line 75
    :goto_1
    const-wide/16 v4, 0x3e8

    .line 76
    .line 77
    mul-long v16, v16, v4

    .line 78
    .line 79
    div-long v16, v16, v14

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    :goto_2
    iput-wide v2, v0, Lkh6;->a:J

    .line 85
    .line 86
    iput-wide v12, v10, Lkh6;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    monitor-exit v8

    .line 89
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {v9, v0, v1, v2}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_3
    monitor-exit v8

    .line 106
    throw v0
.end method
