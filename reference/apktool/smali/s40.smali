.class public final Ls40;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Ls40;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Ls40;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Ls40;->a:Ljava/util/ArrayList;

    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Lr40;
    .locals 3

    .line 1
    iget-object p0, p0, Ls40;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lr40;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Lha4;-><init>([Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object v0, Lr40;->b:Ljava/util/Comparator;

    .line 32
    .line 33
    :goto_0
    array-length v0, p0

    .line 34
    if-ge v2, v0, :cond_2

    .line 35
    .line 36
    aget-object v0, p0, v2

    .line 37
    .line 38
    check-cast v0, Lzd4;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, v0, Lzd4;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    aput-object v0, p0, v2

    .line 52
    .line 53
    :cond_1
    add-int/lit8 v2, v2, 0x2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Lr40;

    .line 57
    .line 58
    sget-object v1, Lr40;->b:Ljava/util/Comparator;

    .line 59
    .line 60
    invoke-direct {v0, p0, v1}, Lha4;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    :try_start_1
    iget-object v1, p0, Ls40;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lh98;

    .line 37
    .line 38
    iget-object v3, v2, Lh98;->a:Ljava/lang/Class;

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    iget-object v3, v2, Lh98;->b:Ljava/lang/Class;

    .line 47
    .line 48
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v3, 0x0

    .line 57
    :goto_1
    if-eqz v3, :cond_1

    .line 58
    .line 59
    iget-object v3, v2, Lh98;->b:Ljava/lang/Class;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_1

    .line 66
    .line 67
    iget-object v2, v2, Lh98;->b:Ljava/lang/Class;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    monitor-exit p0

    .line 74
    return-object v0

    .line 75
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lzd4;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p1}, Lzd4;-><init>(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Ls40;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lut6;Lzu6;)V
    .locals 11

    .line 1
    iget-object p0, p0, Ls40;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-wide v0, p1, Lut6;->j:J

    .line 4
    .line 5
    const-wide v2, 0xc0000023L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lxs6;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p2, Low0;->b:Lvw2;

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lvw2;->e(Low0;)J

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-wide v2, 0x8000002dL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmp-long p1, v0, v2

    .line 34
    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    new-instance p1, Lzs6;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Low0;->s()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget v1, p2, Low0;->c:I

    .line 47
    .line 48
    add-int/2addr v1, v0

    .line 49
    const/4 v0, 0x4

    .line 50
    invoke-virtual {p2, v0}, Low0;->t(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Low0;->t(I)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x2

    .line 57
    invoke-virtual {p2, v0}, Low0;->t(I)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p2, Low0;->b:Lvw2;

    .line 61
    .line 62
    invoke-virtual {v2, p2}, Lvw2;->d(Low0;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iput v3, p1, Lzs6;->b:I

    .line 67
    .line 68
    invoke-virtual {v2, p2}, Lvw2;->d(Low0;)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v2, p2}, Lvw2;->d(Low0;)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v2, p2}, Lvw2;->d(Low0;)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {v2, p2}, Lvw2;->d(Low0;)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-virtual {v2, p2}, Lvw2;->e(Low0;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    const-wide/16 v9, 0x0

    .line 89
    .line 90
    cmp-long v2, v7, v9

    .line 91
    .line 92
    if-nez v2, :cond_1

    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 v2, 0x0

    .line 97
    :goto_0
    iput-boolean v2, p1, Lzs6;->a:Z

    .line 98
    .line 99
    iget v2, p2, Low0;->c:I

    .line 100
    .line 101
    if-lez v4, :cond_2

    .line 102
    .line 103
    add-int/2addr v3, v2

    .line 104
    iput v3, p2, Low0;->c:I

    .line 105
    .line 106
    sget-object v3, Lh51;->d:Ljava/nio/charset/Charset;

    .line 107
    .line 108
    div-int/2addr v4, v0

    .line 109
    invoke-virtual {p2, v3, v4}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    const/4 v3, 0x0

    .line 115
    :goto_1
    iput v2, p2, Low0;->c:I

    .line 116
    .line 117
    iput-object v3, p1, Lzs6;->c:Ljava/lang/String;

    .line 118
    .line 119
    if-lez v6, :cond_3

    .line 120
    .line 121
    add-int/2addr v2, v5

    .line 122
    iput v2, p2, Low0;->c:I

    .line 123
    .line 124
    sget-object v2, Lh51;->d:Ljava/nio/charset/Charset;

    .line 125
    .line 126
    div-int/2addr v6, v0

    .line 127
    invoke-virtual {p2, v2, v6}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    :cond_3
    iput v1, p2, Low0;->c:I

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_4
    return-void
.end method
