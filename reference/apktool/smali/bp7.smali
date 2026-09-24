.class public final Lbp7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lql6;


# instance fields
.field public final a:Luo2;

.field public final b:Lm35;


# direct methods
.method public constructor <init>(Luo2;Lm35;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbp7;->a:Luo2;

    .line 5
    .line 6
    iput-object p2, p0, Lbp7;->b:Lm35;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lou5;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lll6;
    .locals 11

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    instance-of v0, p1, Leg6;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Leg6;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Leg6;

    .line 13
    .line 14
    iget-object v1, p0, Lbp7;->b:Lm35;

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Leg6;-><init>(Ljava/io/InputStream;Lm35;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    move v1, p1

    .line 21
    move-object p1, v0

    .line 22
    :goto_0
    sget-object v2, Liz2;->c:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Liz2;

    .line 30
    .line 31
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Liz2;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    .line 37
    .line 38
    .line 39
    :cond_1
    move-object v3, v0

    .line 40
    iput-object p1, v3, Liz2;->a:Leg6;

    .line 41
    .line 42
    new-instance v0, Ly65;

    .line 43
    .line 44
    invoke-direct {v0, v3}, Ly65;-><init>(Liz2;)V

    .line 45
    .line 46
    .line 47
    new-instance v9, Lro;

    .line 48
    .line 49
    const/16 v4, 0xf

    .line 50
    .line 51
    invoke-direct {v9, v4, p1, v3}, Lro;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 v10, 0x0

    .line 55
    :try_start_1
    iget-object v4, p0, Lbp7;->a:Luo2;

    .line 56
    .line 57
    new-instance v5, Lu00;

    .line 58
    .line 59
    iget-object p0, v4, Luo2;->d:Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v6, v4, Luo2;->c:Lm35;

    .line 62
    .line 63
    invoke-direct {v5, v0, p0, v6}, Lu00;-><init>(Ly65;Ljava/util/ArrayList;Lm35;)V

    .line 64
    .line 65
    .line 66
    move v6, p2

    .line 67
    move v7, p3

    .line 68
    move-object v8, p4

    .line 69
    invoke-virtual/range {v4 .. v9}, Luo2;->a(Lba4;IILou5;Lto2;)Lor0;

    .line 70
    .line 71
    .line 72
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    iput-object v10, v3, Liz2;->b:Ljava/io/IOException;

    .line 74
    .line 75
    iput-object v10, v3, Liz2;->a:Leg6;

    .line 76
    .line 77
    monitor-enter v2

    .line 78
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1}, Leg6;->b()V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-object p0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    move-object p0, v0

    .line 90
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    throw p0

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    move-object p0, v0

    .line 94
    iput-object v10, v3, Liz2;->b:Ljava/io/IOException;

    .line 95
    .line 96
    iput-object v10, v3, Liz2;->a:Leg6;

    .line 97
    .line 98
    sget-object p2, Liz2;->c:Ljava/util/ArrayDeque;

    .line 99
    .line 100
    monitor-enter p2

    .line 101
    :try_start_4
    invoke-virtual {p2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p1}, Leg6;->b()V

    .line 108
    .line 109
    .line 110
    :cond_3
    throw p0

    .line 111
    :catchall_2
    move-exception v0

    .line 112
    move-object p0, v0

    .line 113
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 114
    throw p0

    .line 115
    :catchall_3
    move-exception v0

    .line 116
    move-object p0, v0

    .line 117
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 118
    throw p0
.end method
