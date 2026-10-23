.class public final Lkm7;
.super Lj5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lji3;
.implements Ldu3;
.implements Lli3;


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:J


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lkm7;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    const-string v2, "_state$volatile"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lkm7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    sget-object v1, Loh6;->a:Lsun/misc/Unsafe;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sput-wide v0, Lkm7;->f:J

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkm7;->_state$volatile:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Llm7;
    .locals 0

    .line 1
    new-instance p0, Llm7;

    .line 2
    .line 3
    invoke-direct {p0}, Llm7;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final b()[Llm7;
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    new-array p0, p0, [Llm7;

    .line 3
    .line 4
    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lly8;->c:Ldu9;

    .line 4
    .line 5
    :cond_0
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2, p1}, Lkm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    sget-object p0, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    return-object p0
.end method

.method public final d()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lly8;->c:Ldu9;

    .line 2
    .line 3
    sget-object v1, Lkm7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Loh6;->a:Lsun/misc/Unsafe;

    .line 9
    .line 10
    sget-wide v2, Lkm7;->f:J

    .line 11
    .line 12
    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    :cond_0
    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lkm7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {v1, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return v2

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return v1

    .line 31
    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lkm7;->d:I

    .line 35
    .line 36
    and-int/lit8 p2, p1, 0x1

    .line 37
    .line 38
    if-nez p2, :cond_b

    .line 39
    .line 40
    add-int/2addr p1, v1

    .line 41
    iput p1, p0, Lkm7;->d:I

    .line 42
    .line 43
    iget-object p2, p0, Lj5;->a:[Llm7;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    :goto_0
    check-cast p2, [Llm7;

    .line 47
    .line 48
    if-eqz p2, :cond_9

    .line 49
    .line 50
    array-length v0, p2

    .line 51
    move v3, v2

    .line 52
    :goto_1
    if-ge v3, v0, :cond_9

    .line 53
    .line 54
    aget-object v4, p2, v3

    .line 55
    .line 56
    if-eqz v4, :cond_8

    .line 57
    .line 58
    iget-object v4, v4, Llm7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .line 60
    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-nez v5, :cond_2

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    sget-object v6, Lwx3;->d:Ldu9;

    .line 68
    .line 69
    if-ne v5, v6, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    sget-object v7, Lwx3;->c:Ldu9;

    .line 73
    .line 74
    if-ne v5, v7, :cond_6

    .line 75
    .line 76
    :cond_4
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_5

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    if-eq v7, v5, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_7

    .line 95
    .line 96
    check-cast v5, Lo21;

    .line 97
    .line 98
    sget-object v4, Lbe8;->a:Lbe8;

    .line 99
    .line 100
    invoke-virtual {v5, v4}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_7
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    if-eq v6, v5, :cond_6

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_9
    monitor-enter p0

    .line 115
    :try_start_3
    iget p2, p0, Lkm7;->d:I

    .line 116
    .line 117
    if-ne p2, p1, :cond_a

    .line 118
    .line 119
    add-int/2addr p1, v1

    .line 120
    iput p1, p0, Lkm7;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    .line 122
    monitor-exit p0

    .line 123
    return v1

    .line 124
    :catchall_1
    move-exception p1

    .line 125
    goto :goto_4

    .line 126
    :cond_a
    :try_start_4
    iget-object p1, p0, Lj5;->a:[Llm7;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    .line 128
    monitor-exit p0

    .line 129
    move v8, p2

    .line 130
    move-object p2, p1

    .line 131
    move p1, v8

    .line 132
    goto :goto_0

    .line 133
    :goto_4
    monitor-exit p0

    .line 134
    throw p1

    .line 135
    :cond_b
    add-int/lit8 p1, p1, 0x2

    .line 136
    .line 137
    :try_start_5
    iput p1, p0, Lkm7;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    .line 139
    monitor-exit p0

    .line 140
    return v1

    .line 141
    :goto_5
    monitor-exit p0

    .line 142
    throw p1
.end method

.method public final j(Lox1;ILpw0;)Lji3;
    .locals 1

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ge p2, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, -0x2

    .line 8
    if-ne p2, v0, :cond_1

    .line 9
    .line 10
    :goto_0
    sget-object v0, Lpw0;->b:Lpw0;

    .line 11
    .line 12
    if-ne p3, v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    if-eqz p2, :cond_2

    .line 16
    .line 17
    const/4 v0, -0x3

    .line 18
    if-ne p2, v0, :cond_3

    .line 19
    .line 20
    :cond_2
    sget-object v0, Lpw0;->a:Lpw0;

    .line 21
    .line 22
    if-ne p3, v0, :cond_3

    .line 23
    .line 24
    :goto_1
    return-object p0

    .line 25
    :cond_3
    new-instance v0, Lp41;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1, p2, p3}, Lp41;-><init>(Lji3;Lox1;ILpw0;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final t(Lli3;Lkv1;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    sget-object v2, Lyx1;->a:Lyx1;

    .line 6
    .line 7
    instance-of v3, v0, Ljm7;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Ljm7;

    .line 13
    .line 14
    iget v4, v3, Ljm7;->n:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Ljm7;->n:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Ljm7;

    .line 27
    .line 28
    invoke-direct {v3, v1, v0}, Ljm7;-><init>(Lkm7;Lkv1;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v3, Ljm7;->f:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Ljm7;->n:I

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x3

    .line 37
    const/4 v7, 0x2

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    if-eq v4, v8, :cond_3

    .line 43
    .line 44
    if-eq v4, v7, :cond_2

    .line 45
    .line 46
    if-ne v4, v6, :cond_1

    .line 47
    .line 48
    iget-object v4, v3, Ljm7;->d:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v10, v3, Ljm7;->c:Loh4;

    .line 51
    .line 52
    iget-object v11, v3, Ljm7;->b:Llm7;

    .line 53
    .line 54
    iget-object v12, v3, Ljm7;->a:Lli3;

    .line 55
    .line 56
    :try_start_0
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    move-object v0, v4

    .line 60
    goto/16 :goto_b

    .line 61
    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto/16 :goto_c

    .line 64
    .line 65
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v9

    .line 71
    :cond_2
    iget-object v4, v3, Ljm7;->e:Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v10, v3, Ljm7;->c:Loh4;

    .line 74
    .line 75
    iget-object v11, v3, Ljm7;->b:Llm7;

    .line 76
    .line 77
    iget-object v12, v3, Ljm7;->a:Lli3;

    .line 78
    .line 79
    :try_start_1
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :cond_3
    iget-object v11, v3, Ljm7;->b:Llm7;

    .line 85
    .line 86
    iget-object v4, v3, Ljm7;->a:Lli3;

    .line 87
    .line 88
    :try_start_2
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    monitor-enter p0

    .line 96
    :try_start_3
    iget-object v0, v1, Lj5;->a:[Llm7;

    .line 97
    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    invoke-virtual {v1}, Lj5;->b()[Llm7;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, v1, Lj5;->a:[Llm7;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    goto/16 :goto_10

    .line 109
    .line 110
    :cond_5
    iget v4, v1, Lj5;->b:I

    .line 111
    .line 112
    array-length v10, v0

    .line 113
    if-lt v4, v10, :cond_6

    .line 114
    .line 115
    array-length v4, v0

    .line 116
    mul-int/2addr v4, v7

    .line 117
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object v4, v0

    .line 122
    check-cast v4, [Llm7;

    .line 123
    .line 124
    iput-object v4, v1, Lj5;->a:[Llm7;

    .line 125
    .line 126
    check-cast v0, [Llm7;

    .line 127
    .line 128
    :cond_6
    :goto_1
    iget v4, v1, Lj5;->c:I

    .line 129
    .line 130
    :cond_7
    aget-object v10, v0, v4

    .line 131
    .line 132
    if-nez v10, :cond_8

    .line 133
    .line 134
    invoke-virtual {v1}, Lj5;->a()Llm7;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    aput-object v10, v0, v4

    .line 139
    .line 140
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 141
    .line 142
    array-length v11, v0

    .line 143
    if-lt v4, v11, :cond_9

    .line 144
    .line 145
    move v4, v5

    .line 146
    :cond_9
    iget-object v11, v10, Llm7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 147
    .line 148
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    if-eqz v12, :cond_a

    .line 153
    .line 154
    move v11, v5

    .line 155
    goto :goto_2

    .line 156
    :cond_a
    sget-object v12, Lwx3;->c:Ldu9;

    .line 157
    .line 158
    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    move v11, v8

    .line 162
    :goto_2
    if-eqz v11, :cond_7

    .line 163
    .line 164
    iput v4, v1, Lj5;->c:I

    .line 165
    .line 166
    iget v0, v1, Lj5;->b:I

    .line 167
    .line 168
    add-int/2addr v0, v8

    .line 169
    iput v0, v1, Lj5;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    .line 171
    monitor-exit p0

    .line 172
    move-object/from16 v4, p1

    .line 173
    .line 174
    move-object v11, v10

    .line 175
    :goto_3
    :try_start_4
    invoke-interface {v3}, Ljv1;->getContext()Lox1;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sget-object v10, Lnh4;->b:Lnh4;

    .line 180
    .line 181
    invoke-interface {v0, v10}, Lox1;->get(Lnx1;)Lmx1;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Loh4;

    .line 186
    .line 187
    move-object v10, v0

    .line 188
    move-object v12, v4

    .line 189
    move-object v0, v9

    .line 190
    :goto_4
    sget-object v4, Lkm7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 191
    .line 192
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    if-eqz v10, :cond_c

    .line 197
    .line 198
    invoke-interface {v10}, Loh4;->isActive()Z

    .line 199
    .line 200
    .line 201
    move-result v13

    .line 202
    if-eqz v13, :cond_b

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_b
    invoke-interface {v10}, Loh4;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    throw v0

    .line 210
    :cond_c
    :goto_5
    if-eqz v0, :cond_d

    .line 211
    .line 212
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v13

    .line 216
    if-nez v13, :cond_10

    .line 217
    .line 218
    :cond_d
    sget-object v0, Lly8;->c:Ldu9;

    .line 219
    .line 220
    if-ne v4, v0, :cond_e

    .line 221
    .line 222
    move-object v0, v9

    .line 223
    goto :goto_6

    .line 224
    :cond_e
    move-object v0, v4

    .line 225
    :goto_6
    iput-object v12, v3, Ljm7;->a:Lli3;

    .line 226
    .line 227
    iput-object v11, v3, Ljm7;->b:Llm7;

    .line 228
    .line 229
    iput-object v10, v3, Ljm7;->c:Loh4;

    .line 230
    .line 231
    iput-object v9, v3, Ljm7;->d:Ljava/lang/Object;

    .line 232
    .line 233
    iput-object v4, v3, Ljm7;->e:Ljava/lang/Object;

    .line 234
    .line 235
    iput v7, v3, Ljm7;->n:I

    .line 236
    .line 237
    invoke-interface {v12, v0, v3}, Lli3;->c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-ne v0, v2, :cond_f

    .line 242
    .line 243
    goto :goto_a

    .line 244
    :cond_f
    :goto_7
    move-object v0, v4

    .line 245
    :cond_10
    iget-object v4, v11, Llm7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 246
    .line 247
    sget-object v13, Lwx3;->c:Ldu9;

    .line 248
    .line 249
    invoke-virtual {v4, v13}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    sget-object v14, Lwx3;->d:Ldu9;

    .line 257
    .line 258
    if-ne v4, v14, :cond_11

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_11
    iput-object v12, v3, Ljm7;->a:Lli3;

    .line 262
    .line 263
    iput-object v11, v3, Ljm7;->b:Llm7;

    .line 264
    .line 265
    iput-object v10, v3, Ljm7;->c:Loh4;

    .line 266
    .line 267
    iput-object v0, v3, Ljm7;->d:Ljava/lang/Object;

    .line 268
    .line 269
    iput-object v9, v3, Ljm7;->e:Ljava/lang/Object;

    .line 270
    .line 271
    iput v6, v3, Ljm7;->n:I

    .line 272
    .line 273
    sget-object v4, Lbe8;->a:Lbe8;

    .line 274
    .line 275
    new-instance v14, Lo21;

    .line 276
    .line 277
    invoke-static {v3}, Lnc8;->D(Ljv1;)Ljv1;

    .line 278
    .line 279
    .line 280
    move-result-object v15

    .line 281
    invoke-direct {v14, v8, v15}, Lo21;-><init>(ILjv1;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v14}, Lo21;->u()V

    .line 285
    .line 286
    .line 287
    iget-object v15, v11, Llm7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 288
    .line 289
    :goto_8
    invoke-virtual {v15, v13, v14}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v16

    .line 293
    if-eqz v16, :cond_12

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_12
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    if-eq v6, v13, :cond_15

    .line 301
    .line 302
    invoke-virtual {v14, v4}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    :goto_9
    invoke-virtual {v14}, Lo21;->s()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 309
    if-ne v6, v2, :cond_13

    .line 310
    .line 311
    move-object v4, v6

    .line 312
    :cond_13
    if-ne v4, v2, :cond_14

    .line 313
    .line 314
    :goto_a
    return-object v2

    .line 315
    :cond_14
    :goto_b
    const/4 v6, 0x3

    .line 316
    goto :goto_4

    .line 317
    :cond_15
    const/4 v6, 0x3

    .line 318
    goto :goto_8

    .line 319
    :goto_c
    monitor-enter p0

    .line 320
    :try_start_5
    iget v2, v1, Lj5;->b:I

    .line 321
    .line 322
    add-int/lit8 v2, v2, -0x1

    .line 323
    .line 324
    iput v2, v1, Lj5;->b:I

    .line 325
    .line 326
    if-nez v2, :cond_16

    .line 327
    .line 328
    iput v5, v1, Lj5;->c:I

    .line 329
    .line 330
    goto :goto_d

    .line 331
    :catchall_2
    move-exception v0

    .line 332
    goto :goto_f

    .line 333
    :cond_16
    :goto_d
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    iget-object v2, v11, Llm7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 337
    .line 338
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    sget-object v2, Lxh8;->d:[Ljv1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 342
    .line 343
    monitor-exit p0

    .line 344
    array-length v1, v2

    .line 345
    :goto_e
    if-ge v5, v1, :cond_18

    .line 346
    .line 347
    aget-object v3, v2, v5

    .line 348
    .line 349
    if-eqz v3, :cond_17

    .line 350
    .line 351
    sget-object v4, Lbe8;->a:Lbe8;

    .line 352
    .line 353
    invoke-interface {v3, v4}, Ljv1;->resumeWith(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    :cond_17
    add-int/lit8 v5, v5, 0x1

    .line 357
    .line 358
    goto :goto_e

    .line 359
    :cond_18
    throw v0

    .line 360
    :goto_f
    monitor-exit p0

    .line 361
    throw v0

    .line 362
    :goto_10
    monitor-exit p0

    .line 363
    throw v0
.end method
