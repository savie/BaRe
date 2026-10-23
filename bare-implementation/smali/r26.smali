.class public final Lr26;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:Lbt3;

.field public final c:Ljava/util/concurrent/locks/ReentrantLock;

.field public d:I

.field public e:Z

.field public final f:[Lns1;

.field public final g:Lz67;

.field public final h:Lw40;


# direct methods
.method public constructor <init>(ILbt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lr26;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lr26;->b:Lbt3;

    .line 7
    .line 8
    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lr26;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    .line 15
    new-array p2, p1, [Lns1;

    .line 16
    .line 17
    iput-object p2, p0, Lr26;->f:[Lns1;

    .line 18
    .line 19
    sget p2, La77;->a:I

    .line 20
    .line 21
    new-instance p2, Lz67;

    .line 22
    .line 23
    invoke-direct {p2, p1}, Ly67;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lr26;->g:Lz67;

    .line 27
    .line 28
    new-instance p2, Lw40;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Lw40;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lr26;->h:Lw40;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lkv1;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lr26;->h:Lw40;

    .line 2
    .line 3
    instance-of v1, p1, Lo26;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lo26;

    .line 9
    .line 10
    iget v2, v1, Lo26;->c:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lo26;->c:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lo26;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lo26;-><init>(Lr26;Lkv1;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v1, Lo26;->a:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lo26;->c:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    iget-object v4, p0, Lr26;->g:Lz67;

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v5, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput v5, v1, Lo26;->c:I

    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ly67;->c(Lkv1;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object v1, Lyx1;->a:Lyx1;

    .line 59
    .line 60
    if-ne p1, v1, :cond_3

    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_3
    :goto_1
    :try_start_0
    iget-object p1, p0, Lr26;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :try_start_1
    iget-boolean v1, p0, Lr26;->e:Z

    .line 69
    .line 70
    if-nez v1, :cond_6

    .line 71
    .line 72
    invoke-virtual {v0}, Lw40;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    iget v1, p0, Lr26;->d:I

    .line 79
    .line 80
    iget v2, p0, Lr26;->a:I

    .line 81
    .line 82
    if-lt v1, v2, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    new-instance v1, Lns1;

    .line 86
    .line 87
    iget-object v2, p0, Lr26;->b:Lbt3;

    .line 88
    .line 89
    invoke-interface {v2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lfw6;

    .line 94
    .line 95
    invoke-direct {v1, v2}, Lns1;-><init>(Lfw6;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lr26;->f:[Lns1;

    .line 99
    .line 100
    iget v3, p0, Lr26;->d:I

    .line 101
    .line 102
    add-int/lit8 v5, v3, 0x1

    .line 103
    .line 104
    iput v5, p0, Lr26;->d:I

    .line 105
    .line 106
    aput-object v1, v2, v3

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lw40;->addLast(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lw40;->removeLast()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lns1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .line 117
    :try_start_2
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .line 119
    .line 120
    return-object p0

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_4

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    goto :goto_3

    .line 125
    :cond_6
    :try_start_3
    const-string p0, "Connection pool is closed"

    .line 126
    .line 127
    const/16 v0, 0x15

    .line 128
    .line 129
    invoke-static {v0, p0}, Lly8;->P(ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    .line 135
    .line 136
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    :goto_4
    invoke-virtual {v4}, Ly67;->e()V

    .line 138
    .line 139
    .line 140
    throw p0
.end method

.method public final b(JLds1;Lkv1;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p4, Lp26;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lp26;

    .line 7
    .line 8
    iget v1, v0, Lp26;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lp26;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lp26;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lp26;-><init>(Lr26;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lp26;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lp26;->f:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-wide p1, v0, Lp26;->a:J

    .line 36
    .line 37
    iget-object p3, v0, Lp26;->c:Llh6;

    .line 38
    .line 39
    iget-object v1, v0, Lp26;->b:Lbt3;

    .line 40
    .line 41
    :try_start_0
    invoke-static {p4}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_4

    .line 45
    :catchall_0
    move-exception p4

    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v3

    .line 54
    :cond_2
    invoke-static {p4}, Llg7;->H(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    new-instance p4, Llh6;

    .line 58
    .line 59
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    :try_start_1
    new-instance v1, Lq26;

    .line 63
    .line 64
    invoke-direct {v1, p4, p0, v3}, Lq26;-><init>(Llh6;Lr26;Ljv1;)V

    .line 65
    .line 66
    .line 67
    iput-object p3, v0, Lp26;->b:Lbt3;

    .line 68
    .line 69
    iput-object p4, v0, Lp26;->c:Llh6;

    .line 70
    .line 71
    iput-wide p1, v0, Lp26;->a:J

    .line 72
    .line 73
    iput v2, v0, Lp26;->f:I

    .line 74
    .line 75
    sget-object v4, Lmr2;->b:Lma2;

    .line 76
    .line 77
    const-wide/16 v4, 0x0

    .line 78
    .line 79
    cmp-long v6, p1, v4

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    if-lez v6, :cond_3

    .line 83
    .line 84
    move v6, v2

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    move v6, v7

    .line 87
    :goto_2
    if-ne v6, v2, :cond_6

    .line 88
    .line 89
    sget-object v4, Lor2;->b:Lor2;

    .line 90
    .line 91
    const-wide/32 v5, 0xf423f

    .line 92
    .line 93
    .line 94
    invoke-static {v5, v6, v4}, Lpe4;->H(JLor2;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    invoke-static {p1, p2, v4, v5}, Lmr2;->e(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    long-to-int v6, v4

    .line 103
    and-int/2addr v6, v2

    .line 104
    if-ne v6, v2, :cond_4

    .line 105
    .line 106
    move v7, v2

    .line 107
    :cond_4
    if-eqz v7, :cond_5

    .line 108
    .line 109
    invoke-static {v4, v5}, Lmr2;->d(J)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_5

    .line 114
    .line 115
    shr-long/2addr v4, v2

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    sget-object v6, Lor2;->c:Lor2;

    .line 118
    .line 119
    invoke-static {v4, v5, v6}, Lmr2;->f(JLor2;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    if-nez v6, :cond_8

    .line 125
    .line 126
    :goto_3
    invoke-static {v4, v5, v1, v0}, Ltu0;->D(JLqt3;Lkv1;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    sget-object v4, Lyx1;->a:Lyx1;

    .line 131
    .line 132
    if-ne v1, v4, :cond_7

    .line 133
    .line 134
    return-object v4

    .line 135
    :cond_7
    move-object v1, p3

    .line 136
    move-object p3, p4

    .line 137
    :goto_4
    move-object p4, p3

    .line 138
    move-object p3, v1

    .line 139
    move-object v1, v0

    .line 140
    move-object v0, v3

    .line 141
    goto :goto_7

    .line 142
    :cond_8
    :try_start_2
    new-instance v1, Lmn5;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 145
    .line 146
    .line 147
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    :goto_5
    move-object v8, v1

    .line 149
    move-object v1, p3

    .line 150
    move-object p3, p4

    .line 151
    move-object p4, v8

    .line 152
    goto :goto_6

    .line 153
    :catchall_1
    move-exception v1

    .line 154
    goto :goto_5

    .line 155
    :goto_6
    move-object v8, p4

    .line 156
    move-object p4, p3

    .line 157
    move-object p3, v1

    .line 158
    move-object v1, v0

    .line 159
    move-object v0, v8

    .line 160
    :goto_7
    :try_start_3
    instance-of v4, v0, Lg48;

    .line 161
    .line 162
    if-eqz v4, :cond_9

    .line 163
    .line 164
    invoke-interface {p3}, Lbt3;->invoke()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    goto :goto_8

    .line 168
    :catchall_2
    move-exception p1

    .line 169
    goto :goto_9

    .line 170
    :cond_9
    if-nez v0, :cond_b

    .line 171
    .line 172
    iget-object p4, p4, Llh6;->a:Ljava/lang/Object;

    .line 173
    .line 174
    if-eqz p4, :cond_a

    .line 175
    .line 176
    return-object p4

    .line 177
    :cond_a
    :goto_8
    move-object v0, v1

    .line 178
    goto :goto_1

    .line 179
    :cond_b
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 180
    :goto_9
    iget-object p2, p4, Llh6;->a:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p2, Lns1;

    .line 183
    .line 184
    if-eqz p2, :cond_c

    .line 185
    .line 186
    invoke-virtual {p0, p2}, Lr26;->e(Lns1;)V

    .line 187
    .line 188
    .line 189
    :cond_c
    throw p1
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr26;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lr26;->e:Z

    .line 8
    .line 9
    iget-object p0, p0, Lr26;->f:[Lns1;

    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Lns1;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final d(Ljava/lang/StringBuilder;)V
    .locals 12

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    iget-object v1, p0, Lr26;->h:Lw40;

    .line 4
    .line 5
    iget-object v2, p0, Lr26;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Lnc8;->p()Lww4;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget v4, v1, Lw40;->c:I

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    move v6, v5

    .line 18
    :goto_0
    if-ge v6, v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, v6}, Lw40;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-virtual {v3, v7}, Lww4;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v6, v6, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    move-object p0, v0

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    invoke-static {v3}, Lnc8;->h(Lww4;)Lww4;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const/16 v3, 0x9

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, " ("

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "capacity="

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v3, p0, Lr26;->a:I

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "permits="

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Lr26;->g:Lz67;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-object v4, Ly67;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 108
    .line 109
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v1, "queue=(size="

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lw4;->d()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ")["

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const/4 v10, 0x0

    .line 153
    const/16 v11, 0x3f

    .line 154
    .line 155
    const/4 v7, 0x0

    .line 156
    const/4 v8, 0x0

    .line 157
    const/4 v9, 0x0

    .line 158
    invoke-static/range {v6 .. v11}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const/16 v1, 0x5d

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v0, ")"

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const/16 v0, 0xa

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lr26;->f:[Lns1;

    .line 188
    .line 189
    array-length v1, p0

    .line 190
    move v3, v5

    .line 191
    :goto_1
    if-ge v5, v1, :cond_3

    .line 192
    .line 193
    aget-object v4, p0, v5

    .line 194
    .line 195
    add-int/lit8 v3, v3, 0x1

    .line 196
    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v7, "\t\t["

    .line 203
    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v7, "] - "

    .line 211
    .line 212
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    if-eqz v4, :cond_1

    .line 216
    .line 217
    iget-object v7, v4, Lns1;->a:Lfw6;

    .line 218
    .line 219
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    goto :goto_2

    .line 224
    :cond_1
    const/4 v7, 0x0

    .line 225
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    if-eqz v4, :cond_2

    .line 239
    .line 240
    invoke-virtual {v4, p1}, Lns1;->g(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .line 242
    .line 243
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 251
    .line 252
    .line 253
    throw p0
.end method

.method public final e(Lns1;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lr26;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lr26;->h:Lw40;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lw40;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lr26;->g:Lz67;

    .line 18
    .line 19
    invoke-virtual {p0}, Ly67;->e()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    .line 26
    .line 27
    throw p0
.end method
