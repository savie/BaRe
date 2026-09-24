.class public final synthetic Leo8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lyn8;

.field public final synthetic b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkh6;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lfo8;Lyn8;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lkh6;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Leo8;->a:Lyn8;

    .line 5
    .line 6
    iput-object p3, p0, Leo8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    iput-object p4, p0, Leo8;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Leo8;->d:Lkh6;

    .line 11
    .line 12
    iput-wide p6, p0, Leo8;->e:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v0, Le08;

    .line 2
    .line 3
    iget-object v1, p0, Leo8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    iget-object v2, p0, Leo8;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Leo8;->d:Lkh6;

    .line 8
    .line 9
    iget-wide v4, p0, Leo8;->e:J

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Le08;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lkh6;J)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Leo8;->a:Lyn8;

    .line 15
    .line 16
    iget-wide v1, p0, Lyn8;->c:J

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lp93;->a:Lp93;

    .line 23
    .line 24
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Wall size = "

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "WallDownloadHelper"

    .line 43
    .line 44
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lyn8;->e:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-wide v1, p0, Lyn8;->c:J

    .line 53
    .line 54
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-object v8, p0, Lyn8;->a:Lq63;

    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const-wide/16 v5, 0x0

    .line 64
    .line 65
    cmp-long p0, v1, v5

    .line 66
    .line 67
    if-lez p0, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 v3, 0x0

    .line 71
    :goto_0
    if-eqz v3, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    :goto_1
    move-wide v6, v5

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    const-wide/16 v5, -0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :goto_2
    new-instance v3, Lfo2;

    .line 83
    .line 84
    const/16 v5, 0x16

    .line 85
    .line 86
    invoke-direct/range {v3 .. v8}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 87
    .line 88
    .line 89
    sget-object p0, Ltb1;->a:Ltb1;

    .line 90
    .line 91
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0, v3}, Ltb1;->c(Lfo2;)Lno2;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :try_start_0
    new-instance v3, Lpx;

    .line 100
    .line 101
    const/16 v4, 0x12

    .line 102
    .line 103
    invoke-direct {v3, v0, v4}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 104
    .line 105
    .line 106
    iput-object v3, p0, Lno2;->f:Lmt3;

    .line 107
    .line 108
    invoke-virtual {p0}, Lno2;->b()Lke;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Le08;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lke;->e()Z

    .line 120
    .line 121
    .line 122
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    move-object v1, v0

    .line 133
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :catchall_1
    move-exception v0

    .line 135
    invoke-static {p0, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw v0
.end method
