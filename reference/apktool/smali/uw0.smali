.class public Luw0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lh41;


# static fields
.field public static final synthetic G:J

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic r:J

.field public static final synthetic t:J

.field public static final synthetic x:J

.field public static final synthetic y:J


# instance fields
.field private volatile synthetic _closeCause$volatile:Ljava/lang/Object;

.field public final a:I

.field private volatile synthetic bufferEnd$volatile:J

.field private volatile synthetic bufferEndSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic closeHandler$volatile:Ljava/lang/Object;

.field private volatile synthetic completedExpandBuffersAndPauseFlag$volatile:J

.field private volatile synthetic receiveSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic receivers$volatile:J

.field private volatile synthetic sendSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic sendersAndCloseStatus$volatile:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "sendersAndCloseStatus$volatile"

    .line 2
    .line 3
    const-class v1, Luw0;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    const-string v0, "receivers$volatile"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 18
    .line 19
    const-string v0, "bufferEnd$volatile"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Luw0;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 26
    .line 27
    const-string v0, "completedExpandBuffersAndPauseFlag$volatile"

    .line 28
    .line 29
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Luw0;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 34
    .line 35
    const-class v0, Ljava/lang/Object;

    .line 36
    .line 37
    const-string v2, "sendSegment$volatile"

    .line 38
    .line 39
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sput-object v3, Luw0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 44
    .line 45
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    sput-wide v4, Luw0;->G:J

    .line 56
    .line 57
    const-string v2, "receiveSegment$volatile"

    .line 58
    .line 59
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    sput-object v4, Luw0;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    sput-wide v4, Luw0;->y:J

    .line 74
    .line 75
    const-string v2, "bufferEndSegment$volatile"

    .line 76
    .line 77
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    sput-object v4, Luw0;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    sput-wide v4, Luw0;->t:J

    .line 92
    .line 93
    const-string v2, "_closeCause$volatile"

    .line 94
    .line 95
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    sput-object v4, Luw0;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    sput-wide v4, Luw0;->r:J

    .line 110
    .line 111
    const-string v2, "closeHandler$volatile"

    .line 112
    .line 113
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Luw0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    sput-wide v0, Luw0;->x:J

    .line 128
    .line 129
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Luw0;->a:I

    .line 5
    .line 6
    if-ltz p1, :cond_3

    .line 7
    .line 8
    sget-object v0, Lww0;->a:Lt41;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const v0, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    int-to-long v0, p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    :goto_0
    iput-wide v0, p0, Luw0;->bufferEnd$volatile:J

    .line 28
    .line 29
    sget-object p1, Luw0;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Luw0;->completedExpandBuffersAndPauseFlag$volatile:J

    .line 36
    .line 37
    new-instance v2, Lt41;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v7, 0x3

    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    move-object v6, p0

    .line 44
    invoke-direct/range {v2 .. v7}, Lt41;-><init>(JLt41;Luw0;I)V

    .line 45
    .line 46
    .line 47
    iput-object v2, v6, Luw0;->sendSegment$volatile:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object v2, v6, Luw0;->receiveSegment$volatile:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v6}, Luw0;->y()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    sget-object v2, Lww0;->a:Lt41;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    :cond_2
    iput-object v2, v6, Luw0;->bufferEndSegment$volatile:Ljava/lang/Object;

    .line 63
    .line 64
    sget-object p0, Lww0;->s:Ldu9;

    .line 65
    .line 66
    iput-object p0, v6, Luw0;->_closeCause$volatile:Ljava/lang/Object;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    const-string p0, "Invalid channel capacity: "

    .line 70
    .line 71
    const-string v0, ", should be >=0"

    .line 72
    .line 73
    invoke-static {p1, p0, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    throw p0
.end method

.method public static B(Luw0;Lu41;)Ljava/lang/Object;
    .locals 15

    .line 1
    sget-object v6, Luw0;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    if-eqz p0, :cond_11

    .line 8
    .line 9
    sget-object v1, Loh6;->a:Lsun/misc/Unsafe;

    .line 10
    .line 11
    sget-wide v2, Luw0;->y:J

    .line 12
    .line 13
    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lt41;

    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object v8, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 23
    .line 24
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const/4 v9, 0x1

    .line 29
    invoke-virtual {p0, v2, v3, v9}, Luw0;->w(JZ)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_10

    .line 34
    .line 35
    sget-object v10, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 36
    .line 37
    invoke-virtual {v10, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    sget v2, Lww0;->b:I

    .line 42
    .line 43
    int-to-long v11, v2

    .line 44
    div-long v13, v3, v11

    .line 45
    .line 46
    rem-long v11, v3, v11

    .line 47
    .line 48
    long-to-int v2, v11

    .line 49
    iget-wide v11, v1, Ln67;->e:J

    .line 50
    .line 51
    cmp-long v5, v11, v13

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, v13, v14, v1}, Luw0;->m(JLt41;)Lt41;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-nez v5, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v1, v5

    .line 63
    :cond_2
    const/4 v5, 0x0

    .line 64
    move-object v0, p0

    .line 65
    invoke-virtual/range {v0 .. v5}, Luw0;->H(Lt41;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    sget-object v11, Lww0;->m:Ldu9;

    .line 70
    .line 71
    const-string v12, "unexpected"

    .line 72
    .line 73
    if-eq v5, v11, :cond_f

    .line 74
    .line 75
    sget-object v13, Lww0;->o:Ldu9;

    .line 76
    .line 77
    if-ne v5, v13, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0}, Luw0;->r()J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    cmp-long v0, v3, v8

    .line 84
    .line 85
    if-gez v0, :cond_0

    .line 86
    .line 87
    invoke-virtual {v1}, Ldq1;->b()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    sget-object v0, Lww0;->n:Ldu9;

    .line 92
    .line 93
    if-ne v5, v0, :cond_e

    .line 94
    .line 95
    invoke-static/range {p1 .. p1}, Lnc8;->D(Ljv1;)Ljv1;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lg67;->t(Ljv1;)Lo21;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    move-object v0, p0

    .line 104
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Luw0;->H(Lt41;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    if-ne v14, v11, :cond_4

    .line 109
    .line 110
    invoke-virtual {v5, v1, v2}, Lo21;->a(Ln67;I)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :cond_4
    if-ne v14, v13, :cond_d

    .line 119
    .line 120
    invoke-virtual {p0}, Luw0;->r()J

    .line 121
    .line 122
    .line 123
    move-result-wide v13

    .line 124
    cmp-long v2, v3, v13

    .line 125
    .line 126
    if-gez v2, :cond_5

    .line 127
    .line 128
    invoke-virtual {v1}, Ldq1;->b()V

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lt41;

    .line 136
    .line 137
    :goto_1
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    invoke-virtual {p0, v2, v3, v9}, Luw0;->w(JZ)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    invoke-virtual {p0}, Luw0;->p()Ljava/lang/Throwable;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v1, Lbn6;

    .line 152
    .line 153
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_6
    invoke-virtual {v10, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    sget v2, Lww0;->b:I

    .line 165
    .line 166
    int-to-long v13, v2

    .line 167
    move-object v11, v10

    .line 168
    div-long v9, v3, v13

    .line 169
    .line 170
    rem-long v13, v3, v13

    .line 171
    .line 172
    long-to-int v2, v13

    .line 173
    iget-wide v13, v1, Ln67;->e:J

    .line 174
    .line 175
    cmp-long v13, v13, v9

    .line 176
    .line 177
    if-eqz v13, :cond_9

    .line 178
    .line 179
    invoke-virtual {p0, v9, v10, v1}, Luw0;->m(JLt41;)Lt41;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    if-nez v9, :cond_8

    .line 184
    .line 185
    :cond_7
    :goto_2
    move-object v10, v11

    .line 186
    const/4 v9, 0x1

    .line 187
    goto :goto_1

    .line 188
    :cond_8
    move-object v1, v9

    .line 189
    :cond_9
    move-object v0, p0

    .line 190
    invoke-virtual/range {v0 .. v5}, Luw0;->H(Lt41;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    sget-object v0, Lww0;->m:Ldu9;

    .line 195
    .line 196
    if-ne v9, v0, :cond_a

    .line 197
    .line 198
    invoke-virtual {v5, v1, v2}, Lo21;->a(Ln67;I)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_a
    sget-object v0, Lww0;->o:Ldu9;

    .line 203
    .line 204
    if-ne v9, v0, :cond_b

    .line 205
    .line 206
    invoke-virtual {p0}, Luw0;->r()J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    cmp-long v0, v3, v9

    .line 211
    .line 212
    if-gez v0, :cond_7

    .line 213
    .line 214
    invoke-virtual {v1}, Ldq1;->b()V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_b
    sget-object v0, Lww0;->n:Ldu9;

    .line 219
    .line 220
    if-eq v9, v0, :cond_c

    .line 221
    .line 222
    invoke-virtual {v1}, Ldq1;->b()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, v9, v7}, Lo21;->e(Ljava/lang/Object;Lrt3;)V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 230
    .line 231
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_d
    invoke-virtual {v1}, Ldq1;->b()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v14, v7}, Lo21;->e(Ljava/lang/Object;Lrt3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .line 240
    .line 241
    :goto_3
    invoke-virtual {v5}, Lo21;->s()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    return-object v0

    .line 246
    :goto_4
    invoke-virtual {v5}, Lo21;->B()V

    .line 247
    .line 248
    .line 249
    throw v0

    .line 250
    :cond_e
    invoke-virtual {v1}, Ldq1;->b()V

    .line 251
    .line 252
    .line 253
    return-object v5

    .line 254
    :cond_f
    invoke-static {v12}, Ll0;->e(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-object v7

    .line 258
    :cond_10
    invoke-virtual {p0}, Luw0;->p()Ljava/lang/Throwable;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    sget v1, Ltk7;->a:I

    .line 263
    .line 264
    throw v0

    .line 265
    :cond_11
    invoke-static {}, Le6;->d()V

    .line 266
    .line 267
    .line 268
    return-object v7
.end method

.method public static D(Luw0;Ljava/lang/Object;Ljv1;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    sget-object v9, Luw0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Loh6;->a:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget-wide v4, Luw0;->G:J

    .line 15
    .line 16
    invoke-virtual {v1, v0, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lt41;

    .line 21
    .line 22
    :cond_0
    :goto_0
    sget-object v10, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 23
    .line 24
    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    const-wide v11, 0xfffffffffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long v6, v4, v11

    .line 34
    .line 35
    const/4 v13, 0x0

    .line 36
    invoke-virtual {v0, v4, v5, v13}, Luw0;->w(JZ)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sget v14, Lww0;->b:I

    .line 41
    .line 42
    int-to-long v4, v14

    .line 43
    move-wide v15, v11

    .line 44
    div-long v11, v6, v4

    .line 45
    .line 46
    rem-long v4, v6, v4

    .line 47
    .line 48
    long-to-int v4, v4

    .line 49
    move/from16 v18, v14

    .line 50
    .line 51
    iget-wide v13, v1, Ln67;->e:J

    .line 52
    .line 53
    cmp-long v5, v13, v11

    .line 54
    .line 55
    sget-object v13, Lyx1;->a:Lyx1;

    .line 56
    .line 57
    sget-object v14, Lbe8;->a:Lbe8;

    .line 58
    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, v11, v12, v1}, Luw0;->n(JLt41;)Lt41;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-nez v5, :cond_1

    .line 66
    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0, v8, v3}, Luw0;->A(Ljv1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-ne v0, v13, :cond_19

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_1
    move-object v1, v5

    .line 77
    :cond_2
    move-wide/from16 v24, v6

    .line 78
    .line 79
    move v7, v2

    .line 80
    move v2, v4

    .line 81
    move-wide/from16 v4, v24

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-static/range {v0 .. v7}, Luw0;->b(Luw0;Lt41;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_1a

    .line 89
    .line 90
    const/4 v11, 0x1

    .line 91
    if-eq v6, v11, :cond_19

    .line 92
    .line 93
    const/4 v12, 0x2

    .line 94
    if-eq v6, v12, :cond_18

    .line 95
    .line 96
    sget-object v7, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 97
    .line 98
    move-wide/from16 v19, v15

    .line 99
    .line 100
    const/4 v15, 0x5

    .line 101
    const/4 v12, 0x4

    .line 102
    const/4 v11, 0x3

    .line 103
    if-eq v6, v11, :cond_6

    .line 104
    .line 105
    if-eq v6, v12, :cond_4

    .line 106
    .line 107
    if-eq v6, v15, :cond_3

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v1}, Ldq1;->b()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v6

    .line 118
    cmp-long v2, v4, v6

    .line 119
    .line 120
    if-gez v2, :cond_5

    .line 121
    .line 122
    invoke-virtual {v1}, Ldq1;->b()V

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {v0, v8, v3}, Luw0;->A(Ljv1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-ne v0, v13, :cond_19

    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_6
    invoke-static {v8}, Lnc8;->D(Ljv1;)Ljv1;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-static {v6}, Lg67;->t(Ljv1;)Lo21;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    move-object v8, v7

    .line 141
    const/4 v7, 0x0

    .line 142
    :try_start_0
    invoke-static/range {v0 .. v7}, Luw0;->b(Luw0;Lt41;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 143
    .line 144
    .line 145
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-eqz v7, :cond_16

    .line 147
    .line 148
    const/4 v11, 0x1

    .line 149
    if-eq v7, v11, :cond_15

    .line 150
    .line 151
    const/4 v11, 0x2

    .line 152
    if-eq v7, v11, :cond_14

    .line 153
    .line 154
    if-eq v7, v12, :cond_13

    .line 155
    .line 156
    const-string v11, "unexpected"

    .line 157
    .line 158
    if-ne v7, v15, :cond_12

    .line 159
    .line 160
    :try_start_1
    invoke-virtual {v1}, Ldq1;->b()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lt41;

    .line 168
    .line 169
    :goto_1
    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 170
    .line 171
    .line 172
    move-result-wide v4

    .line 173
    and-long v21, v4, v19

    .line 174
    .line 175
    const/4 v9, 0x0

    .line 176
    invoke-virtual {v0, v4, v5, v9}, Luw0;->w(JZ)Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    sget v2, Lww0;->b:I

    .line 181
    .line 182
    int-to-long v4, v2

    .line 183
    move-object/from16 v17, v10

    .line 184
    .line 185
    div-long v9, v21, v4

    .line 186
    .line 187
    rem-long v4, v21, v4

    .line 188
    .line 189
    long-to-int v4, v4

    .line 190
    move-object/from16 v23, v13

    .line 191
    .line 192
    iget-wide v12, v1, Ln67;->e:J

    .line 193
    .line 194
    cmp-long v5, v12, v9

    .line 195
    .line 196
    if-eqz v5, :cond_a

    .line 197
    .line 198
    invoke-virtual {v0, v9, v10, v1}, Luw0;->n(JLt41;)Lt41;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    if-nez v5, :cond_9

    .line 203
    .line 204
    if-eqz v7, :cond_8

    .line 205
    .line 206
    :cond_7
    :goto_2
    invoke-static {v0, v3, v6}, Luw0;->a(Luw0;Ljava/lang/Object;Lo21;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_5

    .line 210
    .line 211
    :catchall_0
    move-exception v0

    .line 212
    goto/16 :goto_7

    .line 213
    .line 214
    :cond_8
    move-object/from16 v10, v17

    .line 215
    .line 216
    move-object/from16 v13, v23

    .line 217
    .line 218
    const/4 v12, 0x4

    .line 219
    goto :goto_1

    .line 220
    :cond_9
    move-object v1, v5

    .line 221
    :cond_a
    move v9, v2

    .line 222
    move v2, v4

    .line 223
    move-wide/from16 v4, v21

    .line 224
    .line 225
    invoke-static/range {v0 .. v7}, Luw0;->b(Luw0;Lt41;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    if-eqz v10, :cond_11

    .line 230
    .line 231
    const/4 v12, 0x1

    .line 232
    if-eq v10, v12, :cond_10

    .line 233
    .line 234
    const/4 v13, 0x2

    .line 235
    if-eq v10, v13, :cond_e

    .line 236
    .line 237
    const/4 v12, 0x3

    .line 238
    if-eq v10, v12, :cond_d

    .line 239
    .line 240
    const/4 v2, 0x4

    .line 241
    if-eq v10, v2, :cond_c

    .line 242
    .line 243
    if-eq v10, v15, :cond_b

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_b
    invoke-virtual {v1}, Ldq1;->b()V

    .line 247
    .line 248
    .line 249
    :goto_3
    move v12, v2

    .line 250
    move-object/from16 v10, v17

    .line 251
    .line 252
    move-object/from16 v13, v23

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_c
    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 256
    .line 257
    .line 258
    move-result-wide v7

    .line 259
    cmp-long v2, v4, v7

    .line 260
    .line 261
    if-gez v2, :cond_7

    .line 262
    .line 263
    invoke-virtual {v1}, Ldq1;->b()V

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 268
    .line 269
    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v0

    .line 273
    :cond_e
    if-eqz v7, :cond_f

    .line 274
    .line 275
    invoke-virtual {v1}, Ln67;->n()V

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_f
    add-int v4, v2, v9

    .line 280
    .line 281
    invoke-virtual {v6, v1, v4}, Lo21;->a(Ln67;I)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_10
    :goto_4
    invoke-virtual {v6, v14}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_11
    invoke-virtual {v1}, Ldq1;->b()V

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 294
    .line 295
    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw v0

    .line 299
    :cond_13
    move-object/from16 v23, v13

    .line 300
    .line 301
    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 302
    .line 303
    .line 304
    move-result-wide v7

    .line 305
    cmp-long v2, v4, v7

    .line 306
    .line 307
    if-gez v2, :cond_7

    .line 308
    .line 309
    invoke-virtual {v1}, Ldq1;->b()V

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_14
    move-object/from16 v23, v13

    .line 314
    .line 315
    add-int v4, v2, v18

    .line 316
    .line 317
    invoke-virtual {v6, v1, v4}, Lo21;->a(Ln67;I)V

    .line 318
    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_15
    move-object/from16 v23, v13

    .line 322
    .line 323
    invoke-virtual {v6, v14}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_16
    move-object/from16 v23, v13

    .line 328
    .line 329
    invoke-virtual {v1}, Ldq1;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    .line 331
    .line 332
    goto :goto_4

    .line 333
    :goto_5
    invoke-virtual {v6}, Lo21;->s()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    move-object/from16 v2, v23

    .line 338
    .line 339
    if-ne v0, v2, :cond_17

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_17
    move-object v0, v14

    .line 343
    :goto_6
    if-ne v0, v2, :cond_19

    .line 344
    .line 345
    return-object v0

    .line 346
    :goto_7
    invoke-virtual {v6}, Lo21;->B()V

    .line 347
    .line 348
    .line 349
    throw v0

    .line 350
    :cond_18
    move-object v2, v13

    .line 351
    if-eqz v7, :cond_19

    .line 352
    .line 353
    invoke-virtual {v1}, Ln67;->n()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v8, v3}, Luw0;->A(Ljv1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-ne v0, v2, :cond_19

    .line 361
    .line 362
    return-object v0

    .line 363
    :cond_19
    return-object v14

    .line 364
    :cond_1a
    invoke-virtual {v1}, Ldq1;->b()V

    .line 365
    .line 366
    .line 367
    return-object v14
.end method

.method public static G(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p0, Lm21;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p0, Lm21;

    .line 7
    .line 8
    sget-object v0, Lww0;->a:Lt41;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sget-object v2, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-interface {p0, v2, v0}, Lm21;->b(Ljava/lang/Object;Lrt3;)Ldu9;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0, v0}, Lm21;->g(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    return v1

    .line 25
    :cond_1
    const-string v0, "Unexpected waiter: "

    .line 26
    .line 27
    invoke-static {p0, v0}, Ll0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v1
.end method

.method public static final a(Luw0;Ljava/lang/Object;Lo21;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Luw0;->q()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lbn6;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final b(Luw0;Lt41;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 4

    .line 1
    invoke-virtual {p1, p2, p3}, Lt41;->s(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p7}, Luw0;->I(Lt41;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Lt41;->q(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, p4, p5}, Luw0;->d(J)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lww0;->d:Ldu9;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v2, v0}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_6

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    if-nez p6, :cond_2

    .line 35
    .line 36
    const/4 p0, 0x3

    .line 37
    return p0

    .line 38
    :cond_2
    invoke-virtual {p1, p2, v2, p6}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    const/4 p0, 0x2

    .line 45
    return p0

    .line 46
    :cond_3
    instance-of v3, v0, Lwn8;

    .line 47
    .line 48
    if-eqz v3, :cond_6

    .line 49
    .line 50
    invoke-virtual {p1, p2, v2}, Lt41;->s(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, p3}, Luw0;->F(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    sget-object p0, Lww0;->i:Ldu9;

    .line 60
    .line 61
    invoke-virtual {p1, p2, p0}, Lt41;->t(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return p0

    .line 66
    :cond_4
    sget-object p0, Lww0;->k:Ldu9;

    .line 67
    .line 68
    iget-object p3, p1, Lt41;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 69
    .line 70
    mul-int/lit8 p4, p2, 0x2

    .line 71
    .line 72
    add-int/2addr p4, v1

    .line 73
    invoke-virtual {p3, p4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    if-eq p3, p0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1, p2, v1}, Lt41;->r(IZ)V

    .line 80
    .line 81
    .line 82
    :cond_5
    const/4 p0, 0x5

    .line 83
    return p0

    .line 84
    :cond_6
    invoke-virtual/range {p0 .. p7}, Luw0;->I(Lt41;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    return p0
.end method

.method public static t(Luw0;)V
    .locals 7

    .line 1
    sget-object v0, Luw0;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 10
    .line 11
    and-long/2addr v1, v3

    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long v1, v1, v5

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    and-long/2addr v1, v3

    .line 23
    cmp-long v1, v1, v5

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Ljv1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p2, Lo21;

    .line 2
    .line 3
    invoke-static {p1}, Lnc8;->D(Ljv1;)Ljv1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p2, v0, p1}, Lo21;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lo21;->u()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Luw0;->q()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance p1, Lbn6;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lo21;->s()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object p1, Lyx1;->a:Lyx1;

    .line 31
    .line 32
    if-ne p0, p1, :cond_0

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 36
    .line 37
    return-object p0
.end method

.method public final C(Lwn8;Z)V
    .locals 1

    .line 1
    instance-of v0, p1, Lm21;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Ljv1;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Luw0;->p()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Luw0;->q()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    new-instance p2, Lbn6;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Ljv1;->resumeWith(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    instance-of p0, p1, Ltw0;

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    check-cast p1, Ltw0;

    .line 32
    .line 33
    iget-object p0, p1, Ltw0;->b:Lo21;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    iput-object p2, p1, Ltw0;->b:Lo21;

    .line 40
    .line 41
    sget-object p2, Lww0;->l:Ldu9;

    .line 42
    .line 43
    iput-object p2, p1, Ltw0;->a:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object p1, p1, Ltw0;->c:Luw0;

    .line 46
    .line 47
    invoke-virtual {p1}, Luw0;->o()Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    new-instance p2, Lbn6;

    .line 60
    .line 61
    invoke-direct {p2, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p2}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    const-string p0, "Unexpected waiter: "

    .line 69
    .line 70
    invoke-static {p1, p0}, Ll0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final E()Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    sget-object v3, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const/4 v6, 0x1

    .line 14
    invoke-virtual {p0, v4, v5, v6}, Luw0;->w(JZ)Z

    .line 15
    .line 16
    .line 17
    move-result v7

    .line 18
    if-eqz v7, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Luw0;->o()Ljava/lang/Throwable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Lq41;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lq41;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    const-wide v7, 0xfffffffffffffffL

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    and-long/2addr v4, v7

    .line 36
    cmp-long v1, v1, v4

    .line 37
    .line 38
    sget-object v2, Ls41;->b:Lr41;

    .line 39
    .line 40
    if-ltz v1, :cond_1

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_1
    sget-object v12, Lww0;->k:Ldu9;

    .line 44
    .line 45
    sget-object v1, Luw0;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    sget-object v1, Loh6;->a:Lsun/misc/Unsafe;

    .line 51
    .line 52
    sget-wide v4, Luw0;->y:J

    .line 53
    .line 54
    invoke-virtual {v1, p0, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lt41;

    .line 59
    .line 60
    :goto_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    invoke-virtual {p0, v4, v5, v6}, Luw0;->w(JZ)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Luw0;->o()Ljava/lang/Throwable;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-instance v0, Lq41;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lq41;-><init>(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v10

    .line 84
    sget v4, Lww0;->b:I

    .line 85
    .line 86
    int-to-long v4, v4

    .line 87
    div-long v7, v10, v4

    .line 88
    .line 89
    rem-long v4, v10, v4

    .line 90
    .line 91
    long-to-int v9, v4

    .line 92
    iget-wide v4, v1, Ln67;->e:J

    .line 93
    .line 94
    cmp-long v4, v4, v7

    .line 95
    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0, v7, v8, v1}, Luw0;->m(JLt41;)Lt41;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-nez v4, :cond_3

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    move-object v8, v4

    .line 106
    :goto_1
    move-object v7, p0

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move-object v8, v1

    .line 109
    goto :goto_1

    .line 110
    :goto_2
    invoke-virtual/range {v7 .. v12}, Luw0;->H(Lt41;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    move-object v1, v8

    .line 115
    sget-object v4, Lww0;->m:Ldu9;

    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    if-ne p0, v4, :cond_7

    .line 119
    .line 120
    instance-of p0, v12, Lwn8;

    .line 121
    .line 122
    if-eqz p0, :cond_5

    .line 123
    .line 124
    move-object v5, v12

    .line 125
    check-cast v5, Lwn8;

    .line 126
    .line 127
    :cond_5
    if-eqz v5, :cond_6

    .line 128
    .line 129
    invoke-interface {v5, v1, v9}, Lwn8;->a(Ln67;I)V

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-virtual {v7, v10, v11}, Luw0;->J(J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ln67;->n()V

    .line 136
    .line 137
    .line 138
    return-object v2

    .line 139
    :cond_7
    sget-object v4, Lww0;->o:Ldu9;

    .line 140
    .line 141
    if-ne p0, v4, :cond_9

    .line 142
    .line 143
    invoke-virtual {v7}, Luw0;->r()J

    .line 144
    .line 145
    .line 146
    move-result-wide v4

    .line 147
    cmp-long p0, v10, v4

    .line 148
    .line 149
    if-gez p0, :cond_8

    .line 150
    .line 151
    invoke-virtual {v1}, Ldq1;->b()V

    .line 152
    .line 153
    .line 154
    :cond_8
    move-object p0, v7

    .line 155
    goto :goto_0

    .line 156
    :cond_9
    sget-object v0, Lww0;->n:Ldu9;

    .line 157
    .line 158
    if-eq p0, v0, :cond_a

    .line 159
    .line 160
    invoke-virtual {v1}, Ldq1;->b()V

    .line 161
    .line 162
    .line 163
    return-object p0

    .line 164
    :cond_a
    const-string p0, "unexpected"

    .line 165
    .line 166
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-object v5
.end method

.method public final F(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of p0, p1, Ltw0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    check-cast p1, Ltw0;

    .line 9
    .line 10
    iget-object p0, p1, Ltw0;->b:Lo21;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iput-object v2, p1, Ltw0;->b:Lo21;

    .line 16
    .line 17
    iput-object p2, p1, Ltw0;->a:Ljava/lang/Object;

    .line 18
    .line 19
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    sget-object p2, Lww0;->a:Lt41;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v2}, Lo21;->b(Ljava/lang/Object;Lrt3;)Ldu9;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lo21;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    return v0

    .line 34
    :cond_1
    instance-of p0, p1, Lm21;

    .line 35
    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    check-cast p1, Lm21;

    .line 39
    .line 40
    sget-object p0, Lww0;->a:Lt41;

    .line 41
    .line 42
    invoke-interface {p1, p2, v2}, Lm21;->b(Ljava/lang/Object;Lrt3;)Ldu9;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    invoke-interface {p1, p0}, Lm21;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :cond_2
    return v0

    .line 53
    :cond_3
    const-string p0, "Unexpected receiver type: "

    .line 54
    .line 55
    invoke-static {p1, p0}, Ll0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v0
.end method

.method public final H(Lt41;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p1, Lt41;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lt41;->q(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide v3, 0xfffffffffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    sget-object v5, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    and-long/2addr v6, v3

    .line 22
    cmp-long v6, p3, v6

    .line 23
    .line 24
    if-ltz v6, :cond_2

    .line 25
    .line 26
    if-nez p5, :cond_0

    .line 27
    .line 28
    sget-object p0, Lww0;->n:Ldu9;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    invoke-virtual {p1, p2, v1, p5}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Luw0;->k()V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lww0;->m:Ldu9;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    sget-object v6, Lww0;->d:Ldu9;

    .line 44
    .line 45
    if-ne v1, v6, :cond_2

    .line 46
    .line 47
    sget-object v6, Lww0;->i:Ldu9;

    .line 48
    .line 49
    invoke-virtual {p1, p2, v1, v6}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Luw0;->k()V

    .line 56
    .line 57
    .line 58
    mul-int/lit8 p0, p2, 0x2

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1, p2, v2}, Lt41;->s(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_2
    invoke-virtual {p1, p2}, Lt41;->q(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_b

    .line 73
    .line 74
    sget-object v6, Lww0;->e:Ldu9;

    .line 75
    .line 76
    if-ne v1, v6, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    sget-object v6, Lww0;->d:Ldu9;

    .line 80
    .line 81
    if-ne v1, v6, :cond_4

    .line 82
    .line 83
    sget-object v6, Lww0;->i:Ldu9;

    .line 84
    .line 85
    invoke-virtual {p1, p2, v1, v6}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p0}, Luw0;->k()V

    .line 92
    .line 93
    .line 94
    mul-int/lit8 p0, p2, 0x2

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p1, p2, v2}, Lt41;->s(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_4
    sget-object v6, Lww0;->j:Ldu9;

    .line 105
    .line 106
    if-ne v1, v6, :cond_5

    .line 107
    .line 108
    sget-object p0, Lww0;->o:Ldu9;

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_5
    sget-object v7, Lww0;->h:Ldu9;

    .line 112
    .line 113
    if-ne v1, v7, :cond_6

    .line 114
    .line 115
    sget-object p0, Lww0;->o:Ldu9;

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_6
    sget-object v7, Lww0;->l:Ldu9;

    .line 119
    .line 120
    if-ne v1, v7, :cond_7

    .line 121
    .line 122
    invoke-virtual {p0}, Luw0;->k()V

    .line 123
    .line 124
    .line 125
    sget-object p0, Lww0;->o:Ldu9;

    .line 126
    .line 127
    return-object p0

    .line 128
    :cond_7
    sget-object v7, Lww0;->g:Ldu9;

    .line 129
    .line 130
    if-eq v1, v7, :cond_2

    .line 131
    .line 132
    sget-object v7, Lww0;->f:Ldu9;

    .line 133
    .line 134
    invoke-virtual {p1, p2, v1, v7}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_2

    .line 139
    .line 140
    instance-of p3, v1, Lxn8;

    .line 141
    .line 142
    if-eqz p3, :cond_8

    .line 143
    .line 144
    check-cast v1, Lxn8;

    .line 145
    .line 146
    iget-object v1, v1, Lxn8;->a:Lwn8;

    .line 147
    .line 148
    :cond_8
    invoke-static {v1}, Luw0;->G(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p4

    .line 152
    if-eqz p4, :cond_9

    .line 153
    .line 154
    sget-object p3, Lww0;->i:Ldu9;

    .line 155
    .line 156
    invoke-virtual {p1, p2, p3}, Lt41;->t(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Luw0;->k()V

    .line 160
    .line 161
    .line 162
    mul-int/lit8 p0, p2, 0x2

    .line 163
    .line 164
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p1, p2, v2}, Lt41;->s(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-object p0

    .line 172
    :cond_9
    invoke-virtual {p1, p2, v6}, Lt41;->t(ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ln67;->n()V

    .line 176
    .line 177
    .line 178
    if-eqz p3, :cond_a

    .line 179
    .line 180
    invoke-virtual {p0}, Luw0;->k()V

    .line 181
    .line 182
    .line 183
    :cond_a
    sget-object p0, Lww0;->o:Ldu9;

    .line 184
    .line 185
    return-object p0

    .line 186
    :cond_b
    :goto_0
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v6

    .line 190
    and-long/2addr v6, v3

    .line 191
    cmp-long v6, p3, v6

    .line 192
    .line 193
    if-gez v6, :cond_c

    .line 194
    .line 195
    sget-object v6, Lww0;->h:Ldu9;

    .line 196
    .line 197
    invoke-virtual {p1, p2, v1, v6}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_2

    .line 202
    .line 203
    invoke-virtual {p0}, Luw0;->k()V

    .line 204
    .line 205
    .line 206
    sget-object p0, Lww0;->o:Ldu9;

    .line 207
    .line 208
    return-object p0

    .line 209
    :cond_c
    if-nez p5, :cond_d

    .line 210
    .line 211
    sget-object p0, Lww0;->n:Ldu9;

    .line 212
    .line 213
    return-object p0

    .line 214
    :cond_d
    invoke-virtual {p1, p2, v1, p5}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_2

    .line 219
    .line 220
    invoke-virtual {p0}, Luw0;->k()V

    .line 221
    .line 222
    .line 223
    sget-object p0, Lww0;->m:Ldu9;

    .line 224
    .line 225
    return-object p0
.end method

.method public final I(Lt41;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 5

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Lt41;->q(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0, p4, p5}, Luw0;->d(J)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-nez p7, :cond_1

    .line 17
    .line 18
    sget-object v0, Lww0;->d:Ldu9;

    .line 19
    .line 20
    invoke-virtual {p1, p2, v3, v0}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-eqz p7, :cond_2

    .line 28
    .line 29
    sget-object v0, Lww0;->j:Ldu9;

    .line 30
    .line 31
    invoke-virtual {p1, p2, v3, v0}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Ln67;->n()V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    if-nez p6, :cond_3

    .line 42
    .line 43
    const/4 p0, 0x3

    .line 44
    return p0

    .line 45
    :cond_3
    invoke-virtual {p1, p2, v3, p6}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const/4 p0, 0x2

    .line 52
    return p0

    .line 53
    :cond_4
    sget-object v4, Lww0;->e:Ldu9;

    .line 54
    .line 55
    if-ne v0, v4, :cond_5

    .line 56
    .line 57
    sget-object v1, Lww0;->d:Ldu9;

    .line 58
    .line 59
    invoke-virtual {p1, p2, v0, v1}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    :goto_0
    return v2

    .line 66
    :cond_5
    sget-object p4, Lww0;->k:Ldu9;

    .line 67
    .line 68
    const/4 p5, 0x5

    .line 69
    if-ne v0, p4, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1, p2, v3}, Lt41;->s(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return p5

    .line 75
    :cond_6
    sget-object p6, Lww0;->h:Ldu9;

    .line 76
    .line 77
    if-ne v0, p6, :cond_7

    .line 78
    .line 79
    invoke-virtual {p1, p2, v3}, Lt41;->s(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return p5

    .line 83
    :cond_7
    sget-object p6, Lww0;->l:Ldu9;

    .line 84
    .line 85
    if-ne v0, p6, :cond_8

    .line 86
    .line 87
    invoke-virtual {p1, p2, v3}, Lt41;->s(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Luw0;->i()V

    .line 91
    .line 92
    .line 93
    return v1

    .line 94
    :cond_8
    invoke-virtual {p1, p2, v3}, Lt41;->s(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    instance-of p6, v0, Lxn8;

    .line 98
    .line 99
    if-eqz p6, :cond_9

    .line 100
    .line 101
    check-cast v0, Lxn8;

    .line 102
    .line 103
    iget-object v0, v0, Lxn8;->a:Lwn8;

    .line 104
    .line 105
    :cond_9
    invoke-virtual {p0, v0, p3}, Luw0;->F(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-eqz p0, :cond_a

    .line 110
    .line 111
    sget-object p0, Lww0;->i:Ldu9;

    .line 112
    .line 113
    invoke-virtual {p1, p2, p0}, Lt41;->t(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const/4 p0, 0x0

    .line 117
    return p0

    .line 118
    :cond_a
    iget-object p0, p1, Lt41;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 119
    .line 120
    mul-int/lit8 p3, p2, 0x2

    .line 121
    .line 122
    add-int/2addr p3, v2

    .line 123
    invoke-virtual {p0, p3, p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    if-eq p0, p4, :cond_b

    .line 128
    .line 129
    invoke-virtual {p1, p2, v2}, Lt41;->r(IZ)V

    .line 130
    .line 131
    .line 132
    :cond_b
    return p5
.end method

.method public final J(J)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Luw0;->y()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    :goto_0
    sget-object v6, Luw0;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long v0, v2, p1

    .line 18
    .line 19
    if-lez v0, :cond_8

    .line 20
    .line 21
    sget v0, Lww0;->c:I

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    move v2, v7

    .line 25
    :goto_1
    sget-object v3, Luw0;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 26
    .line 27
    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    if-ge v2, v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v10

    .line 42
    and-long/2addr v8, v10

    .line 43
    cmp-long v3, v4, v8

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    cmp-long v3, v4, v8

    .line 52
    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    goto :goto_6

    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v0, v3

    .line 60
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    and-long v4, v2, v8

    .line 65
    .line 66
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 67
    .line 68
    add-long/2addr v4, v10

    .line 69
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_7

    .line 74
    .line 75
    :goto_3
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    move-wide v4, v2

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    and-long v12, v2, v8

    .line 85
    .line 86
    and-long v14, v2, v10

    .line 87
    .line 88
    const-wide/16 v16, 0x0

    .line 89
    .line 90
    cmp-long v14, v14, v16

    .line 91
    .line 92
    if-eqz v14, :cond_3

    .line 93
    .line 94
    const/4 v14, 0x1

    .line 95
    goto :goto_4

    .line 96
    :cond_3
    move v14, v7

    .line 97
    :goto_4
    cmp-long v15, v4, v12

    .line 98
    .line 99
    if-nez v15, :cond_5

    .line 100
    .line 101
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v15

    .line 105
    cmp-long v4, v4, v15

    .line 106
    .line 107
    if-nez v4, :cond_5

    .line 108
    .line 109
    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    and-long v4, v2, v8

    .line 114
    .line 115
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    :goto_6
    return-void

    .line 122
    :cond_4
    move-object/from16 v1, p0

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_5
    if-nez v14, :cond_6

    .line 126
    .line 127
    add-long v4, v10, v12

    .line 128
    .line 129
    move-object/from16 v1, p0

    .line 130
    .line 131
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    move-object/from16 v1, p0

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_7
    move-object/from16 v1, p0

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_8
    move-object/from16 v1, p0

    .line 142
    .line 143
    goto/16 :goto_0
.end method

.method public c(Ljv1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p2, p1}, Luw0;->D(Luw0;Ljava/lang/Object;Ljv1;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    const-string v0, "Channel was cancelled"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Luw0;->g(Ljava/lang/Throwable;Z)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d(J)Z
    .locals 4

    .line 1
    sget-object v0, Luw0;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget p0, p0, Luw0;->a:I

    .line 18
    .line 19
    int-to-long v2, p0

    .line 20
    add-long/2addr v0, v2

    .line 21
    cmp-long p0, p1, v0

    .line 22
    .line 23
    if-gez p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public final e()Lt41;
    .locals 7

    .line 1
    sget-object v0, Luw0;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Luw0;->t:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Luw0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-wide v2, Luw0;->G:J

    .line 20
    .line 21
    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lt41;

    .line 26
    .line 27
    iget-wide v3, v2, Ln67;->e:J

    .line 28
    .line 29
    move-object v5, v1

    .line 30
    check-cast v5, Lt41;

    .line 31
    .line 32
    iget-wide v5, v5, Ln67;->e:J

    .line 33
    .line 34
    cmp-long v3, v3, v5

    .line 35
    .line 36
    if-lez v3, :cond_0

    .line 37
    .line 38
    move-object v1, v2

    .line 39
    :cond_0
    sget-object v2, Luw0;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-wide v2, Luw0;->y:J

    .line 45
    .line 46
    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lt41;

    .line 51
    .line 52
    iget-wide v2, p0, Ln67;->e:J

    .line 53
    .line 54
    move-object v0, v1

    .line 55
    check-cast v0, Lt41;

    .line 56
    .line 57
    iget-wide v4, v0, Ln67;->e:J

    .line 58
    .line 59
    cmp-long v0, v2, v4

    .line 60
    .line 61
    if-lez v0, :cond_1

    .line 62
    .line 63
    move-object v1, p0

    .line 64
    :cond_1
    check-cast v1, Ldq1;

    .line 65
    .line 66
    :cond_2
    :goto_0
    sget-object p0, Ldq1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 67
    .line 68
    invoke-virtual {v1}, Ldq1;->e()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    sget-object v0, Lzm5;->a:Ldu9;

    .line 73
    .line 74
    if-ne p0, v0, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    check-cast p0, Ldq1;

    .line 78
    .line 79
    if-nez p0, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1}, Ldq1;->h()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_2

    .line 86
    .line 87
    :goto_1
    check-cast v1, Lt41;

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_4
    move-object v1, p0

    .line 91
    goto :goto_0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    sget-object v8, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/4 v9, 0x0

    .line 8
    invoke-virtual {p0, v1, v2, v9}, Luw0;->w(JZ)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v10, 0x1

    .line 13
    const-wide v11, 0xfffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    move v1, v9

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    and-long/2addr v1, v11

    .line 23
    invoke-virtual {p0, v1, v2}, Luw0;->d(J)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    xor-int/2addr v1, v10

    .line 28
    :goto_0
    sget-object v13, Ls41;->b:Lr41;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    return-object v13

    .line 33
    :cond_1
    sget-object v6, Lww0;->j:Ldu9;

    .line 34
    .line 35
    sget-object v1, Luw0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-object v1, Loh6;->a:Lsun/misc/Unsafe;

    .line 41
    .line 42
    sget-wide v2, Luw0;->G:J

    .line 43
    .line 44
    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lt41;

    .line 49
    .line 50
    :goto_1
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    and-long v4, v2, v11

    .line 55
    .line 56
    invoke-virtual {p0, v2, v3, v9}, Luw0;->w(JZ)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    sget v14, Lww0;->b:I

    .line 61
    .line 62
    int-to-long v2, v14

    .line 63
    div-long v11, v4, v2

    .line 64
    .line 65
    rem-long v2, v4, v2

    .line 66
    .line 67
    long-to-int v2, v2

    .line 68
    iget-wide v9, v1, Ln67;->e:J

    .line 69
    .line 70
    cmp-long v3, v9, v11

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0, v11, v12, v1}, Luw0;->n(JLt41;)Lt41;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-nez v3, :cond_3

    .line 79
    .line 80
    if-eqz v7, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Luw0;->q()Ljava/lang/Throwable;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Lq41;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Lq41;-><init>(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_2
    const/4 v9, 0x0

    .line 93
    const/4 v10, 0x1

    .line 94
    :goto_2
    const-wide v11, 0xfffffffffffffffL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move-object v1, v3

    .line 101
    :cond_4
    move-object v0, p0

    .line 102
    move-object/from16 v3, p1

    .line 103
    .line 104
    invoke-static/range {v0 .. v7}, Luw0;->b(Luw0;Lt41;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    sget-object v3, Lbe8;->a:Lbe8;

    .line 109
    .line 110
    if-eqz v9, :cond_e

    .line 111
    .line 112
    const/4 v10, 0x1

    .line 113
    if-eq v9, v10, :cond_d

    .line 114
    .line 115
    const/4 v3, 0x2

    .line 116
    const/4 v11, 0x0

    .line 117
    if-eq v9, v3, :cond_9

    .line 118
    .line 119
    const/4 v2, 0x3

    .line 120
    if-eq v9, v2, :cond_8

    .line 121
    .line 122
    const/4 v2, 0x4

    .line 123
    if-eq v9, v2, :cond_6

    .line 124
    .line 125
    const/4 v2, 0x5

    .line 126
    if-eq v9, v2, :cond_5

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    invoke-virtual {v1}, Ldq1;->b()V

    .line 130
    .line 131
    .line 132
    :goto_3
    const/4 v9, 0x0

    .line 133
    goto :goto_2

    .line 134
    :cond_6
    sget-object v2, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 135
    .line 136
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    cmp-long v2, v4, v2

    .line 141
    .line 142
    if-gez v2, :cond_7

    .line 143
    .line 144
    invoke-virtual {v1}, Ldq1;->b()V

    .line 145
    .line 146
    .line 147
    :cond_7
    invoke-virtual {p0}, Luw0;->q()Ljava/lang/Throwable;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v1, Lq41;

    .line 152
    .line 153
    invoke-direct {v1, v0}, Lq41;-><init>(Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    return-object v1

    .line 157
    :cond_8
    const-string v0, "unexpected"

    .line 158
    .line 159
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object v11

    .line 163
    :cond_9
    if-eqz v7, :cond_a

    .line 164
    .line 165
    invoke-virtual {v1}, Ln67;->n()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Luw0;->q()Ljava/lang/Throwable;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v1, Lq41;

    .line 173
    .line 174
    invoke-direct {v1, v0}, Lq41;-><init>(Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    return-object v1

    .line 178
    :cond_a
    instance-of v0, v6, Lwn8;

    .line 179
    .line 180
    if-eqz v0, :cond_b

    .line 181
    .line 182
    move-object v11, v6

    .line 183
    check-cast v11, Lwn8;

    .line 184
    .line 185
    :cond_b
    if-eqz v11, :cond_c

    .line 186
    .line 187
    add-int/2addr v2, v14

    .line 188
    invoke-interface {v11, v1, v2}, Lwn8;->a(Ln67;I)V

    .line 189
    .line 190
    .line 191
    :cond_c
    invoke-virtual {v1}, Ln67;->n()V

    .line 192
    .line 193
    .line 194
    return-object v13

    .line 195
    :cond_d
    return-object v3

    .line 196
    :cond_e
    invoke-virtual {v1}, Ldq1;->b()V

    .line 197
    .line 198
    .line 199
    return-object v3
.end method

.method public final g(Ljava/lang/Throwable;Z)Z
    .locals 13

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    const-wide v1, 0xfffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    sget-object v3, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    :goto_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    shr-long v7, v5, v0

    .line 17
    .line 18
    long-to-int v4, v7

    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    and-long v7, v5, v1

    .line 22
    .line 23
    sget-object v4, Lww0;->a:Lt41;

    .line 24
    .line 25
    const-wide/high16 v9, 0x1000000000000000L

    .line 26
    .line 27
    add-long/2addr v7, v9

    .line 28
    move-object v4, p0

    .line 29
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    move-object p0, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v4, p0

    .line 39
    :goto_1
    sget-object v8, Lww0;->s:Ldu9;

    .line 40
    .line 41
    :goto_2
    sget-object p0, Luw0;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-object v5, v4

    .line 47
    sget-object v4, Loh6;->a:Lsun/misc/Unsafe;

    .line 48
    .line 49
    sget-wide v6, Luw0;->r:J

    .line 50
    .line 51
    move-object v9, p1

    .line 52
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    move-object p1, v4

    .line 57
    move-object v4, v5

    .line 58
    const/4 v10, 0x1

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    move p0, v10

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    invoke-virtual {p1, v4, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-eq p0, v8, :cond_8

    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    :goto_3
    const-wide/high16 v11, 0x3000000000000000L    # 1.727233711018889E-77

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    and-long p1, v5, v1

    .line 79
    .line 80
    add-long v7, v11, p1

    .line 81
    .line 82
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    shr-long p1, v5, v0

    .line 94
    .line 95
    long-to-int p1, p1

    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    if-eq p1, v10, :cond_5

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_5
    and-long p1, v5, v1

    .line 102
    .line 103
    add-long/2addr p1, v11

    .line 104
    :goto_4
    move-wide v7, p1

    .line 105
    goto :goto_5

    .line 106
    :cond_6
    and-long p1, v5, v1

    .line 107
    .line 108
    const-wide/high16 v7, 0x2000000000000000L

    .line 109
    .line 110
    add-long/2addr p1, v7

    .line 111
    goto :goto_4

    .line 112
    :goto_5
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    :goto_6
    invoke-virtual {v4}, Luw0;->i()V

    .line 119
    .line 120
    .line 121
    if-eqz p0, :cond_7

    .line 122
    .line 123
    invoke-virtual {v4}, Luw0;->u()V

    .line 124
    .line 125
    .line 126
    :cond_7
    return p0

    .line 127
    :cond_8
    move-object p1, v9

    .line 128
    goto :goto_2
.end method

.method public final h(J)Lt41;
    .locals 11

    .line 1
    invoke-virtual {p0}, Luw0;->e()Lt41;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Luw0;->x()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, -0x1

    .line 11
    if-eqz v1, :cond_6

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    :cond_0
    sget v4, Lww0;->b:I

    .line 15
    .line 16
    sub-int/2addr v4, v2

    .line 17
    :goto_0
    const-wide/16 v5, -0x1

    .line 18
    .line 19
    if-ge v3, v4, :cond_5

    .line 20
    .line 21
    iget-wide v7, v1, Ln67;->e:J

    .line 22
    .line 23
    sget v9, Lww0;->b:I

    .line 24
    .line 25
    int-to-long v9, v9

    .line 26
    mul-long/2addr v7, v9

    .line 27
    int-to-long v9, v4

    .line 28
    add-long/2addr v7, v9

    .line 29
    sget-object v9, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 30
    .line 31
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v9

    .line 35
    cmp-long v9, v7, v9

    .line 36
    .line 37
    if-gez v9, :cond_1

    .line 38
    .line 39
    :goto_1
    move-wide v7, v5

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    invoke-virtual {v1, v4}, Lt41;->q(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    if-eqz v9, :cond_3

    .line 46
    .line 47
    sget-object v10, Lww0;->e:Ldu9;

    .line 48
    .line 49
    if-ne v9, v10, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    sget-object v10, Lww0;->d:Ldu9;

    .line 53
    .line 54
    if-ne v9, v10, :cond_4

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    :goto_2
    sget-object v10, Lww0;->l:Ldu9;

    .line 58
    .line 59
    invoke-virtual {v1, v4, v9, v10}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_1

    .line 64
    .line 65
    invoke-virtual {v1}, Ln67;->n()V

    .line 66
    .line 67
    .line 68
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    invoke-virtual {v1}, Ldq1;->f()Ldq1;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lt41;

    .line 76
    .line 77
    if-nez v1, :cond_0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_3
    cmp-long v1, v7, v5

    .line 81
    .line 82
    if-eqz v1, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0, v7, v8}, Luw0;->j(J)V

    .line 85
    .line 86
    .line 87
    :cond_6
    const/4 v1, 0x0

    .line 88
    move-object v4, v0

    .line 89
    :goto_4
    if-eqz v4, :cond_d

    .line 90
    .line 91
    sget v5, Lww0;->b:I

    .line 92
    .line 93
    sub-int/2addr v5, v2

    .line 94
    :goto_5
    if-ge v3, v5, :cond_c

    .line 95
    .line 96
    iget-wide v6, v4, Ln67;->e:J

    .line 97
    .line 98
    sget v8, Lww0;->b:I

    .line 99
    .line 100
    int-to-long v8, v8

    .line 101
    mul-long/2addr v6, v8

    .line 102
    int-to-long v8, v5

    .line 103
    add-long/2addr v6, v8

    .line 104
    cmp-long v6, v6, p1

    .line 105
    .line 106
    if-ltz v6, :cond_d

    .line 107
    .line 108
    :cond_7
    invoke-virtual {v4, v5}, Lt41;->q(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    if-eqz v6, :cond_a

    .line 113
    .line 114
    sget-object v7, Lww0;->e:Ldu9;

    .line 115
    .line 116
    if-ne v6, v7, :cond_8

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_8
    instance-of v7, v6, Lxn8;

    .line 120
    .line 121
    if-eqz v7, :cond_9

    .line 122
    .line 123
    sget-object v7, Lww0;->l:Ldu9;

    .line 124
    .line 125
    invoke-virtual {v4, v5, v6, v7}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_7

    .line 130
    .line 131
    check-cast v6, Lxn8;

    .line 132
    .line 133
    iget-object v6, v6, Lxn8;->a:Lwn8;

    .line 134
    .line 135
    invoke-static {v1, v6}, Lvm4;->z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v4, v5, v2}, Lt41;->r(IZ)V

    .line 140
    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_9
    instance-of v7, v6, Lwn8;

    .line 144
    .line 145
    if-eqz v7, :cond_b

    .line 146
    .line 147
    sget-object v7, Lww0;->l:Ldu9;

    .line 148
    .line 149
    invoke-virtual {v4, v5, v6, v7}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_7

    .line 154
    .line 155
    invoke-static {v1, v6}, Lvm4;->z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v4, v5, v2}, Lt41;->r(IZ)V

    .line 160
    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_a
    :goto_6
    sget-object v7, Lww0;->l:Ldu9;

    .line 164
    .line 165
    invoke-virtual {v4, v5, v6, v7}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-eqz v6, :cond_7

    .line 170
    .line 171
    invoke-virtual {v4}, Ln67;->n()V

    .line 172
    .line 173
    .line 174
    :cond_b
    :goto_7
    add-int/lit8 v5, v5, -0x1

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_c
    invoke-virtual {v4}, Ldq1;->f()Ldq1;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    check-cast v4, Lt41;

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_d
    if-eqz v1, :cond_f

    .line 185
    .line 186
    instance-of p1, v1, Ljava/util/ArrayList;

    .line 187
    .line 188
    if-nez p1, :cond_e

    .line 189
    .line 190
    check-cast v1, Lwn8;

    .line 191
    .line 192
    invoke-virtual {p0, v1, v2}, Luw0;->C(Lwn8;Z)V

    .line 193
    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_e
    check-cast v1, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    sub-int/2addr p1, v2

    .line 203
    :goto_8
    if-ge v3, p1, :cond_f

    .line 204
    .line 205
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    check-cast p2, Lwn8;

    .line 210
    .line 211
    invoke-virtual {p0, p2, v2}, Luw0;->C(Lwn8;Z)V

    .line 212
    .line 213
    .line 214
    add-int/lit8 p1, p1, -0x1

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_f
    return-object v0
.end method

.method public final i()V
    .locals 3

    .line 1
    sget-object v0, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Luw0;->w(JZ)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j(J)V
    .locals 9

    .line 1
    sget-object v0, Luw0;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Luw0;->y:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lt41;

    .line 15
    .line 16
    :goto_0
    sget-object v1, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget v2, p0, Luw0;->a:I

    .line 23
    .line 24
    int-to-long v5, v2

    .line 25
    add-long/2addr v5, v3

    .line 26
    sget-object v2, Luw0;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 27
    .line 28
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    cmp-long v2, p1, v5

    .line 37
    .line 38
    if-gez v2, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const-wide/16 v5, 0x1

    .line 42
    .line 43
    add-long/2addr v5, v3

    .line 44
    move-object v2, p0

    .line 45
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_5

    .line 50
    .line 51
    sget p0, Lww0;->b:I

    .line 52
    .line 53
    int-to-long v5, p0

    .line 54
    div-long v7, v3, v5

    .line 55
    .line 56
    rem-long v5, v3, v5

    .line 57
    .line 58
    long-to-int p0, v5

    .line 59
    iget-wide v5, v0, Ln67;->e:J

    .line 60
    .line 61
    cmp-long v1, v5, v7

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2, v7, v8, v0}, Luw0;->m(JLt41;)Lt41;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    move-object v0, v1

    .line 73
    :cond_2
    const/4 v7, 0x0

    .line 74
    move-wide v5, v3

    .line 75
    move v4, p0

    .line 76
    move-object v3, v0

    .line 77
    invoke-virtual/range {v2 .. v7}, Luw0;->H(Lt41;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    sget-object v0, Lww0;->o:Ldu9;

    .line 82
    .line 83
    if-ne p0, v0, :cond_3

    .line 84
    .line 85
    invoke-virtual {v2}, Luw0;->r()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    cmp-long p0, v5, v0

    .line 90
    .line 91
    if-gez p0, :cond_4

    .line 92
    .line 93
    invoke-virtual {v3}, Ldq1;->b()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {v3}, Ldq1;->b()V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_1
    move-object p0, v2

    .line 101
    move-object v0, v3

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    :goto_2
    move-object p0, v2

    .line 104
    goto :goto_0
.end method

.method public final k()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Luw0;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Luw0;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 14
    .line 15
    sget-wide v1, Luw0;->t:J

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lt41;

    .line 22
    .line 23
    move-object v4, v0

    .line 24
    :goto_0
    sget-object v0, Luw0;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    sget v0, Lww0;->b:I

    .line 31
    .line 32
    int-to-long v7, v0

    .line 33
    div-long v2, v5, v7

    .line 34
    .line 35
    invoke-virtual {p0}, Luw0;->r()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    cmp-long v0, v0, v5

    .line 40
    .line 41
    if-gtz v0, :cond_2

    .line 42
    .line 43
    iget-wide v0, v4, Ln67;->e:J

    .line 44
    .line 45
    cmp-long v0, v0, v2

    .line 46
    .line 47
    if-gez v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v4}, Ldq1;->d()Ldq1;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, v2, v3, v4}, Luw0;->z(JLt41;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {p0}, Luw0;->t(Luw0;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-wide v0, v4, Ln67;->e:J

    .line 63
    .line 64
    cmp-long v0, v0, v2

    .line 65
    .line 66
    move-object v1, p0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-virtual/range {v1 .. v6}, Luw0;->l(JLt41;J)Lt41;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-nez p0, :cond_3

    .line 74
    .line 75
    :goto_1
    move-object p0, v1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move-object v4, p0

    .line 78
    :cond_4
    rem-long v2, v5, v7

    .line 79
    .line 80
    long-to-int p0, v2

    .line 81
    invoke-virtual {v4, p0}, Lt41;->q(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    instance-of v2, v0, Lwn8;

    .line 86
    .line 87
    sget-object v3, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 88
    .line 89
    if-eqz v2, :cond_6

    .line 90
    .line 91
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v7

    .line 95
    cmp-long v2, v5, v7

    .line 96
    .line 97
    if-ltz v2, :cond_6

    .line 98
    .line 99
    sget-object v2, Lww0;->g:Ldu9;

    .line 100
    .line 101
    invoke-virtual {v4, p0, v0, v2}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    invoke-static {v0}, Luw0;->G(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    sget-object v0, Lww0;->d:Ldu9;

    .line 114
    .line 115
    invoke-virtual {v4, p0, v0}, Lt41;->t(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_4

    .line 119
    .line 120
    :cond_5
    sget-object v0, Lww0;->j:Ldu9;

    .line 121
    .line 122
    invoke-virtual {v4, p0, v0}, Lt41;->t(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ln67;->n()V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_6
    :goto_2
    invoke-virtual {v4, p0}, Lt41;->q(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    instance-of v2, v0, Lwn8;

    .line 134
    .line 135
    if-eqz v2, :cond_9

    .line 136
    .line 137
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v7

    .line 141
    cmp-long v2, v5, v7

    .line 142
    .line 143
    if-gez v2, :cond_7

    .line 144
    .line 145
    new-instance v2, Lxn8;

    .line 146
    .line 147
    move-object v7, v0

    .line 148
    check-cast v7, Lwn8;

    .line 149
    .line 150
    invoke-direct {v2, v7}, Lxn8;-><init>(Lwn8;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, p0, v0, v2}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_7
    sget-object v2, Lww0;->g:Ldu9;

    .line 161
    .line 162
    invoke-virtual {v4, p0, v0, v2}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_6

    .line 167
    .line 168
    invoke-static {v0}, Luw0;->G(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_8

    .line 173
    .line 174
    sget-object v0, Lww0;->d:Ldu9;

    .line 175
    .line 176
    invoke-virtual {v4, p0, v0}, Lt41;->t(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_8
    sget-object v0, Lww0;->j:Ldu9;

    .line 181
    .line 182
    invoke-virtual {v4, p0, v0}, Lt41;->t(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Ln67;->n()V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_9
    sget-object v2, Lww0;->j:Ldu9;

    .line 190
    .line 191
    if-ne v0, v2, :cond_a

    .line 192
    .line 193
    :goto_3
    invoke-static {v1}, Luw0;->t(Luw0;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_a
    if-nez v0, :cond_b

    .line 198
    .line 199
    sget-object v2, Lww0;->e:Ldu9;

    .line 200
    .line 201
    invoke-virtual {v4, p0, v0, v2}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_6

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_b
    sget-object v2, Lww0;->d:Ldu9;

    .line 209
    .line 210
    if-ne v0, v2, :cond_c

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_c
    sget-object v2, Lww0;->h:Ldu9;

    .line 214
    .line 215
    if-eq v0, v2, :cond_10

    .line 216
    .line 217
    sget-object v2, Lww0;->i:Ldu9;

    .line 218
    .line 219
    if-eq v0, v2, :cond_10

    .line 220
    .line 221
    sget-object v2, Lww0;->k:Ldu9;

    .line 222
    .line 223
    if-ne v0, v2, :cond_d

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_d
    sget-object v2, Lww0;->l:Ldu9;

    .line 227
    .line 228
    if-ne v0, v2, :cond_e

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_e
    sget-object v2, Lww0;->f:Ldu9;

    .line 232
    .line 233
    if-ne v0, v2, :cond_f

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_f
    const-string p0, "Unexpected cell state: "

    .line 237
    .line 238
    invoke-static {v0, p0}, Ll0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_10
    :goto_4
    invoke-static {v1}, Luw0;->t(Luw0;)V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method public final l(JLt41;J)Lt41;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v6, p1

    .line 4
    .line 5
    sget-object v0, Lww0;->a:Lt41;

    .line 6
    .line 7
    sget-object v8, Lvw0;->a:Lvw0;

    .line 8
    .line 9
    move-object/from16 v9, p3

    .line 10
    .line 11
    :goto_0
    invoke-static {v9, v6, v7, v8}, Lzm5;->k(Ln67;JLqt3;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v10

    .line 15
    invoke-static {v10}, Llg7;->v(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_4

    .line 20
    .line 21
    invoke-static {v10}, Llg7;->s(Ljava/lang/Object;)Ln67;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    :cond_0
    :goto_1
    sget-object v0, Luw0;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 31
    .line 32
    sget-wide v11, Luw0;->t:J

    .line 33
    .line 34
    invoke-virtual {v0, v1, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v4, v0

    .line 39
    check-cast v4, Ln67;

    .line 40
    .line 41
    iget-wide v2, v4, Ln67;->e:J

    .line 42
    .line 43
    iget-wide v13, v5, Ln67;->e:J

    .line 44
    .line 45
    cmp-long v0, v2, v13

    .line 46
    .line 47
    if-ltz v0, :cond_1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    invoke-virtual {v5}, Ln67;->o()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 58
    .line 59
    sget-wide v2, Luw0;->t:J

    .line 60
    .line 61
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v4}, Ln67;->k()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v4}, Ldq1;->i()V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {v0, v1, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eq v0, v4, :cond_2

    .line 82
    .line 83
    invoke-virtual {v5}, Ln67;->k()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    invoke-virtual {v5}, Ldq1;->i()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    :goto_2
    invoke-static {v10}, Llg7;->v(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v8, 0x0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    invoke-virtual {v1}, Luw0;->i()V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p0 .. p3}, Luw0;->z(JLt41;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Luw0;->t(Luw0;)V

    .line 107
    .line 108
    .line 109
    return-object v8

    .line 110
    :cond_5
    invoke-static {v10}, Llg7;->s(Ljava/lang/Object;)Ln67;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lt41;

    .line 115
    .line 116
    iget-wide v2, v0, Ln67;->e:J

    .line 117
    .line 118
    cmp-long v4, v2, v6

    .line 119
    .line 120
    if-lez v4, :cond_8

    .line 121
    .line 122
    const-wide/16 v4, 0x1

    .line 123
    .line 124
    add-long v4, p4, v4

    .line 125
    .line 126
    sget v0, Lww0;->b:I

    .line 127
    .line 128
    int-to-long v6, v0

    .line 129
    mul-long/2addr v2, v6

    .line 130
    sget-object v0, Luw0;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 131
    .line 132
    move-wide v15, v4

    .line 133
    move-wide v4, v2

    .line 134
    move-wide v2, v15

    .line 135
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    sub-long v2, v4, p4

    .line 142
    .line 143
    sget-object v0, Luw0;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 146
    .line 147
    .line 148
    move-result-wide v2

    .line 149
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 150
    .line 151
    and-long/2addr v2, v4

    .line 152
    const-wide/16 v6, 0x0

    .line 153
    .line 154
    cmp-long v2, v2, v6

    .line 155
    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v2

    .line 162
    and-long/2addr v2, v4

    .line 163
    cmp-long v2, v2, v6

    .line 164
    .line 165
    if-eqz v2, :cond_6

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_6
    return-object v8

    .line 169
    :cond_7
    invoke-static {v1}, Luw0;->t(Luw0;)V

    .line 170
    .line 171
    .line 172
    return-object v8

    .line 173
    :cond_8
    return-object v0
.end method

.method public final m(JLt41;)Lt41;
    .locals 15

    .line 1
    move-wide/from16 v6, p1

    .line 2
    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    sget-object v0, Lww0;->a:Lt41;

    .line 6
    .line 7
    sget-object v9, Lvw0;->a:Lvw0;

    .line 8
    .line 9
    :goto_0
    invoke-static {v8, v6, v7, v9}, Lzm5;->k(Ln67;JLqt3;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    invoke-static {v10}, Llg7;->v(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    invoke-static {v10}, Llg7;->s(Ljava/lang/Object;)Ln67;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    :cond_0
    :goto_1
    sget-object v0, Luw0;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 29
    .line 30
    sget-wide v11, Luw0;->y:J

    .line 31
    .line 32
    invoke-virtual {v0, p0, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v4, v0

    .line 37
    check-cast v4, Ln67;

    .line 38
    .line 39
    iget-wide v2, v4, Ln67;->e:J

    .line 40
    .line 41
    iget-wide v13, v5, Ln67;->e:J

    .line 42
    .line 43
    cmp-long v0, v2, v13

    .line 44
    .line 45
    if-ltz v0, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    invoke-virtual {v5}, Ln67;->o()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 56
    .line 57
    sget-wide v2, Luw0;->y:J

    .line 58
    .line 59
    move-object v1, p0

    .line 60
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v4}, Ln67;->k()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4}, Ldq1;->i()V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {v0, p0, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eq v0, v4, :cond_2

    .line 81
    .line 82
    invoke-virtual {v5}, Ln67;->k()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    invoke-virtual {v5}, Ldq1;->i()V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    :goto_2
    invoke-static {v10}, Llg7;->v(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/4 v9, 0x0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {p0}, Luw0;->i()V

    .line 100
    .line 101
    .line 102
    iget-wide v2, v8, Ln67;->e:J

    .line 103
    .line 104
    sget v0, Lww0;->b:I

    .line 105
    .line 106
    int-to-long v4, v0

    .line 107
    mul-long/2addr v2, v4

    .line 108
    invoke-virtual {p0}, Luw0;->r()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    cmp-long v0, v2, v0

    .line 113
    .line 114
    if-gez v0, :cond_d

    .line 115
    .line 116
    invoke-virtual {v8}, Ldq1;->b()V

    .line 117
    .line 118
    .line 119
    return-object v9

    .line 120
    :cond_5
    invoke-static {v10}, Llg7;->s(Ljava/lang/Object;)Ln67;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    move-object v5, v0

    .line 125
    check-cast v5, Lt41;

    .line 126
    .line 127
    iget-wide v10, v5, Ln67;->e:J

    .line 128
    .line 129
    invoke-virtual {p0}, Luw0;->y()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_9

    .line 134
    .line 135
    sget-object v0, Luw0;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 136
    .line 137
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    sget v0, Lww0;->b:I

    .line 142
    .line 143
    int-to-long v12, v0

    .line 144
    div-long/2addr v2, v12

    .line 145
    cmp-long v0, v6, v2

    .line 146
    .line 147
    if-gtz v0, :cond_9

    .line 148
    .line 149
    :goto_3
    sget-object v0, Luw0;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 155
    .line 156
    sget-wide v12, Luw0;->t:J

    .line 157
    .line 158
    invoke-virtual {v0, p0, v12, v13}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    move-object v4, v0

    .line 163
    check-cast v4, Ln67;

    .line 164
    .line 165
    iget-wide v2, v4, Ln67;->e:J

    .line 166
    .line 167
    cmp-long v0, v2, v10

    .line 168
    .line 169
    if-gez v0, :cond_9

    .line 170
    .line 171
    invoke-virtual {v5}, Ln67;->o()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_9

    .line 176
    .line 177
    :goto_4
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 178
    .line 179
    sget-wide v2, Luw0;->t:J

    .line 180
    .line 181
    move-object v1, p0

    .line 182
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    move-object v8, v5

    .line 187
    if-eqz v2, :cond_6

    .line 188
    .line 189
    invoke-virtual {v4}, Ln67;->k()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    invoke-virtual {v4}, Ldq1;->i()V

    .line 196
    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_6
    invoke-virtual {v0, p0, v12, v13}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    if-eq v0, v4, :cond_8

    .line 204
    .line 205
    invoke-virtual {v8}, Ln67;->k()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_7

    .line 210
    .line 211
    invoke-virtual {v8}, Ldq1;->i()V

    .line 212
    .line 213
    .line 214
    :cond_7
    move-object v5, v8

    .line 215
    goto :goto_3

    .line 216
    :cond_8
    move-object v5, v8

    .line 217
    goto :goto_4

    .line 218
    :cond_9
    move-object v8, v5

    .line 219
    :cond_a
    :goto_5
    cmp-long v0, v10, v6

    .line 220
    .line 221
    if-lez v0, :cond_e

    .line 222
    .line 223
    sget v0, Lww0;->b:I

    .line 224
    .line 225
    int-to-long v2, v0

    .line 226
    mul-long v4, v10, v2

    .line 227
    .line 228
    :cond_b
    sget-object v0, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 229
    .line 230
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v2

    .line 234
    cmp-long v0, v2, v4

    .line 235
    .line 236
    if-ltz v0, :cond_c

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_c
    sget-object v0, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 240
    .line 241
    move-object v1, p0

    .line 242
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_b

    .line 247
    .line 248
    :goto_6
    sget v0, Lww0;->b:I

    .line 249
    .line 250
    int-to-long v0, v0

    .line 251
    mul-long/2addr v10, v0

    .line 252
    invoke-virtual {p0}, Luw0;->r()J

    .line 253
    .line 254
    .line 255
    move-result-wide v0

    .line 256
    cmp-long v0, v10, v0

    .line 257
    .line 258
    if-gez v0, :cond_d

    .line 259
    .line 260
    invoke-virtual {v8}, Ldq1;->b()V

    .line 261
    .line 262
    .line 263
    :cond_d
    return-object v9

    .line 264
    :cond_e
    return-object v8
.end method

.method public final n(JLt41;)Lt41;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    sget-object v0, Lww0;->a:Lt41;

    .line 8
    .line 9
    sget-object v9, Lvw0;->a:Lvw0;

    .line 10
    .line 11
    :goto_0
    invoke-static {v8, v6, v7, v9}, Lzm5;->k(Ln67;JLqt3;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v10

    .line 15
    invoke-static {v10}, Llg7;->v(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_4

    .line 20
    .line 21
    invoke-static {v10}, Llg7;->s(Ljava/lang/Object;)Ln67;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    :cond_0
    :goto_1
    sget-object v0, Luw0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 31
    .line 32
    sget-wide v11, Luw0;->G:J

    .line 33
    .line 34
    invoke-virtual {v0, v1, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v4, v0

    .line 39
    check-cast v4, Ln67;

    .line 40
    .line 41
    iget-wide v2, v4, Ln67;->e:J

    .line 42
    .line 43
    iget-wide v13, v5, Ln67;->e:J

    .line 44
    .line 45
    cmp-long v0, v2, v13

    .line 46
    .line 47
    if-ltz v0, :cond_1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    invoke-virtual {v5}, Ln67;->o()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 58
    .line 59
    sget-wide v2, Luw0;->G:J

    .line 60
    .line 61
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v4}, Ln67;->k()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v4}, Ldq1;->i()V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {v0, v1, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eq v0, v4, :cond_2

    .line 82
    .line 83
    invoke-virtual {v5}, Ln67;->k()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    invoke-virtual {v5}, Ldq1;->i()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    :goto_2
    invoke-static {v10}, Llg7;->v(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v9, 0x0

    .line 98
    sget-object v11, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v1}, Luw0;->i()V

    .line 103
    .line 104
    .line 105
    iget-wide v2, v8, Ln67;->e:J

    .line 106
    .line 107
    sget v0, Lww0;->b:I

    .line 108
    .line 109
    int-to-long v4, v0

    .line 110
    mul-long/2addr v2, v4

    .line 111
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    cmp-long v0, v2, v0

    .line 116
    .line 117
    if-gez v0, :cond_8

    .line 118
    .line 119
    invoke-virtual {v8}, Ldq1;->b()V

    .line 120
    .line 121
    .line 122
    return-object v9

    .line 123
    :cond_5
    invoke-static {v10}, Llg7;->s(Ljava/lang/Object;)Ln67;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    move-object v8, v0

    .line 128
    check-cast v8, Lt41;

    .line 129
    .line 130
    iget-wide v12, v8, Ln67;->e:J

    .line 131
    .line 132
    cmp-long v0, v12, v6

    .line 133
    .line 134
    if-lez v0, :cond_9

    .line 135
    .line 136
    sget v0, Lww0;->b:I

    .line 137
    .line 138
    int-to-long v2, v0

    .line 139
    mul-long v6, v12, v2

    .line 140
    .line 141
    :cond_6
    sget-object v0, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    const-wide v4, 0xfffffffffffffffL

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    and-long/2addr v4, v2

    .line 153
    cmp-long v0, v4, v6

    .line 154
    .line 155
    if-ltz v0, :cond_7

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    const/16 v0, 0x3c

    .line 159
    .line 160
    shr-long v14, v2, v0

    .line 161
    .line 162
    long-to-int v10, v14

    .line 163
    int-to-long v14, v10

    .line 164
    shl-long/2addr v14, v0

    .line 165
    add-long/2addr v4, v14

    .line 166
    sget-object v0, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 167
    .line 168
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    :goto_3
    sget v0, Lww0;->b:I

    .line 175
    .line 176
    int-to-long v2, v0

    .line 177
    mul-long/2addr v12, v2

    .line 178
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v0

    .line 182
    cmp-long v0, v12, v0

    .line 183
    .line 184
    if-gez v0, :cond_8

    .line 185
    .line 186
    invoke-virtual {v8}, Ldq1;->b()V

    .line 187
    .line 188
    .line 189
    :cond_8
    return-object v9

    .line 190
    :cond_9
    return-object v8
.end method

.method public final o()Ljava/lang/Throwable;
    .locals 3

    .line 1
    sget-object v0, Luw0;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Luw0;->r:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Throwable;

    .line 15
    .line 16
    return-object p0
.end method

.method public final p()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Luw0;->o()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lla1;

    .line 8
    .line 9
    const-string v0, "Channel was closed"

    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object p0
.end method

.method public final q()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Luw0;->o()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lma1;

    .line 8
    .line 9
    const-string v0, "Channel was closed"

    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object p0
.end method

.method public final r()J
    .locals 4

    .line 1
    sget-object v0, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide v2, 0xfffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr v0, v2

    .line 13
    return-wide v0
.end method

.method public final s()Z
    .locals 13

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Luw0;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Luw0;->y:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lt41;

    .line 15
    .line 16
    sget-object v4, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 17
    .line 18
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v7

    .line 22
    invoke-virtual {p0}, Luw0;->r()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    cmp-long v5, v5, v7

    .line 27
    .line 28
    if-gtz v5, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget v5, Lww0;->b:I

    .line 32
    .line 33
    int-to-long v5, v5

    .line 34
    div-long v9, v7, v5

    .line 35
    .line 36
    iget-wide v11, v3, Ln67;->e:J

    .line 37
    .line 38
    cmp-long v11, v11, v9

    .line 39
    .line 40
    if-eqz v11, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v9, v10, v3}, Luw0;->m(JLt41;)Lt41;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lt41;

    .line 53
    .line 54
    iget-wide v0, v0, Ln67;->e:J

    .line 55
    .line 56
    cmp-long v0, v0, v9

    .line 57
    .line 58
    if-gez v0, :cond_0

    .line 59
    .line 60
    :goto_1
    const/4 p0, 0x0

    .line 61
    return p0

    .line 62
    :cond_2
    invoke-virtual {v3}, Ldq1;->b()V

    .line 63
    .line 64
    .line 65
    rem-long v0, v7, v5

    .line 66
    .line 67
    long-to-int v0, v0

    .line 68
    :cond_3
    invoke-virtual {v3, v0}, Lt41;->q(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_c

    .line 73
    .line 74
    sget-object v2, Lww0;->e:Ldu9;

    .line 75
    .line 76
    if-ne v1, v2, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    sget-object v0, Lww0;->d:Ldu9;

    .line 80
    .line 81
    if-ne v1, v0, :cond_5

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    sget-object v0, Lww0;->j:Ldu9;

    .line 85
    .line 86
    if-ne v1, v0, :cond_6

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    sget-object v0, Lww0;->l:Ldu9;

    .line 90
    .line 91
    if-ne v1, v0, :cond_7

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_7
    sget-object v0, Lww0;->i:Ldu9;

    .line 95
    .line 96
    if-ne v1, v0, :cond_8

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_8
    sget-object v0, Lww0;->h:Ldu9;

    .line 100
    .line 101
    if-ne v1, v0, :cond_9

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_9
    sget-object v0, Lww0;->g:Ldu9;

    .line 105
    .line 106
    if-ne v1, v0, :cond_a

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_a
    sget-object v0, Lww0;->f:Ldu9;

    .line 110
    .line 111
    if-ne v1, v0, :cond_b

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_b
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    cmp-long v0, v7, v0

    .line 119
    .line 120
    if-nez v0, :cond_d

    .line 121
    .line 122
    :goto_2
    const/4 p0, 0x1

    .line 123
    return p0

    .line 124
    :cond_c
    :goto_3
    sget-object v2, Lww0;->h:Ldu9;

    .line 125
    .line 126
    invoke-virtual {v3, v0, v1, v2}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    invoke-virtual {p0}, Luw0;->k()V

    .line 133
    .line 134
    .line 135
    :cond_d
    :goto_4
    const-wide/16 v0, 0x1

    .line 136
    .line 137
    add-long v9, v7, v0

    .line 138
    .line 139
    sget-object v5, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 140
    .line 141
    move-object v6, p0

    .line 142
    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const/16 v4, 0x3c

    .line 15
    .line 16
    shr-long/2addr v2, v4

    .line 17
    long-to-int v2, v2

    .line 18
    const/4 v3, 0x3

    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v2, v4, :cond_1

    .line 21
    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v2, "cancelled,"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v2, "closed,"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v5, "capacity="

    .line 39
    .line 40
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v5, v0, Luw0;->a:I

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v5, 0x2c

    .line 49
    .line 50
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "data=["

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-array v2, v3, [Lt41;

    .line 66
    .line 67
    sget-object v3, Luw0;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 73
    .line 74
    sget-wide v6, Luw0;->y:J

    .line 75
    .line 76
    invoke-virtual {v3, v0, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const/4 v7, 0x0

    .line 81
    aput-object v6, v2, v7

    .line 82
    .line 83
    sget-object v6, Luw0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    sget-wide v8, Luw0;->G:J

    .line 89
    .line 90
    invoke-virtual {v3, v0, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const/4 v8, 0x1

    .line 95
    aput-object v6, v2, v8

    .line 96
    .line 97
    sget-object v6, Luw0;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-wide v9, Luw0;->t:J

    .line 103
    .line 104
    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    aput-object v3, v2, v4

    .line 109
    .line 110
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_3

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    move-object v6, v4

    .line 134
    check-cast v6, Lt41;

    .line 135
    .line 136
    sget-object v9, Lww0;->a:Lt41;

    .line 137
    .line 138
    if-eq v6, v9, :cond_2

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_16

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-nez v4, :cond_4

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    move-object v4, v3

    .line 166
    check-cast v4, Lt41;

    .line 167
    .line 168
    iget-wide v9, v4, Ln67;->e:J

    .line 169
    .line 170
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    move-object v6, v4

    .line 175
    check-cast v6, Lt41;

    .line 176
    .line 177
    iget-wide v11, v6, Ln67;->e:J

    .line 178
    .line 179
    cmp-long v6, v9, v11

    .line 180
    .line 181
    if-lez v6, :cond_6

    .line 182
    .line 183
    move-object v3, v4

    .line 184
    move-wide v9, v11

    .line 185
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-nez v4, :cond_5

    .line 190
    .line 191
    :goto_2
    check-cast v3, Lt41;

    .line 192
    .line 193
    sget-object v2, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 194
    .line 195
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v11

    .line 199
    invoke-virtual {v0}, Luw0;->r()J

    .line 200
    .line 201
    .line 202
    move-result-wide v13

    .line 203
    :goto_3
    sget v0, Lww0;->b:I

    .line 204
    .line 205
    move v2, v7

    .line 206
    :goto_4
    if-ge v2, v0, :cond_11

    .line 207
    .line 208
    iget-wide v9, v3, Ln67;->e:J

    .line 209
    .line 210
    sget v4, Lww0;->b:I

    .line 211
    .line 212
    move v15, v8

    .line 213
    int-to-long v7, v4

    .line 214
    mul-long/2addr v9, v7

    .line 215
    int-to-long v7, v2

    .line 216
    add-long/2addr v9, v7

    .line 217
    cmp-long v4, v9, v13

    .line 218
    .line 219
    if-ltz v4, :cond_7

    .line 220
    .line 221
    cmp-long v7, v9, v11

    .line 222
    .line 223
    if-gez v7, :cond_12

    .line 224
    .line 225
    :cond_7
    invoke-virtual {v3, v2}, Lt41;->q(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    iget-object v8, v3, Lt41;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 230
    .line 231
    mul-int/lit8 v6, v2, 0x2

    .line 232
    .line 233
    invoke-virtual {v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    instance-of v8, v7, Lm21;

    .line 238
    .line 239
    if-eqz v8, :cond_a

    .line 240
    .line 241
    cmp-long v7, v13, v9

    .line 242
    .line 243
    if-gtz v7, :cond_8

    .line 244
    .line 245
    cmp-long v7, v9, v11

    .line 246
    .line 247
    if-gez v7, :cond_8

    .line 248
    .line 249
    const-string v4, "receive"

    .line 250
    .line 251
    goto/16 :goto_6

    .line 252
    .line 253
    :cond_8
    cmp-long v7, v11, v9

    .line 254
    .line 255
    if-gtz v7, :cond_9

    .line 256
    .line 257
    if-gez v4, :cond_9

    .line 258
    .line 259
    const-string v4, "send"

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_9
    const-string v4, "cont"

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_a
    instance-of v4, v7, Lxn8;

    .line 266
    .line 267
    if-eqz v4, :cond_b

    .line 268
    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v8, "EB("

    .line 272
    .line 273
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const/16 v7, 0x29

    .line 280
    .line 281
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    goto :goto_6

    .line 289
    :cond_b
    sget-object v4, Lww0;->f:Ldu9;

    .line 290
    .line 291
    invoke-static {v7, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    if-nez v4, :cond_e

    .line 296
    .line 297
    sget-object v4, Lww0;->g:Ldu9;

    .line 298
    .line 299
    invoke-static {v7, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    if-eqz v4, :cond_c

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_c
    if-eqz v7, :cond_10

    .line 307
    .line 308
    sget-object v4, Lww0;->e:Ldu9;

    .line 309
    .line 310
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-nez v4, :cond_10

    .line 315
    .line 316
    sget-object v4, Lww0;->i:Ldu9;

    .line 317
    .line 318
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-nez v4, :cond_10

    .line 323
    .line 324
    sget-object v4, Lww0;->h:Ldu9;

    .line 325
    .line 326
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-nez v4, :cond_10

    .line 331
    .line 332
    sget-object v4, Lww0;->k:Ldu9;

    .line 333
    .line 334
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    if-nez v4, :cond_10

    .line 339
    .line 340
    sget-object v4, Lww0;->j:Ldu9;

    .line 341
    .line 342
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-nez v4, :cond_10

    .line 347
    .line 348
    sget-object v4, Lww0;->l:Ldu9;

    .line 349
    .line 350
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    if-eqz v4, :cond_d

    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_d
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    goto :goto_6

    .line 362
    :cond_e
    :goto_5
    const-string v4, "resuming_sender"

    .line 363
    .line 364
    :goto_6
    if-eqz v6, :cond_f

    .line 365
    .line 366
    new-instance v7, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string v8, "("

    .line 369
    .line 370
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v4, "),"

    .line 383
    .line 384
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    :cond_10
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 414
    .line 415
    move v8, v15

    .line 416
    const/4 v7, 0x0

    .line 417
    goto/16 :goto_4

    .line 418
    .line 419
    :cond_11
    move v15, v8

    .line 420
    invoke-virtual {v3}, Ldq1;->d()Ldq1;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    move-object v3, v0

    .line 425
    check-cast v3, Lt41;

    .line 426
    .line 427
    if-nez v3, :cond_15

    .line 428
    .line 429
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_14

    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    sub-int/2addr v0, v15

    .line 440
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-ne v0, v5, :cond_13

    .line 445
    .line 446
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    sub-int/2addr v0, v15

    .line 451
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    :cond_13
    const-string v0, "]"

    .line 459
    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    return-object v0

    .line 468
    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 469
    .line 470
    const-string v1, "Char sequence is empty."

    .line 471
    .line 472
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw v0

    .line 476
    :cond_15
    move v8, v15

    .line 477
    const/4 v7, 0x0

    .line 478
    goto/16 :goto_3

    .line 479
    .line 480
    :cond_16
    invoke-static {}, Lm0;->d()V

    .line 481
    .line 482
    .line 483
    const/4 v0, 0x0

    .line 484
    return-object v0
.end method

.method public final u()V
    .locals 9

    .line 1
    :goto_0
    sget-object v0, Luw0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Luw0;->x:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    if-nez v7, :cond_0

    .line 15
    .line 16
    sget-object v0, Lww0;->q:Ldu9;

    .line 17
    .line 18
    :goto_1
    move-object v8, v0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    sget-object v0, Lww0;->r:Ldu9;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :goto_2
    sget-object v3, Loh6;->a:Lsun/misc/Unsafe;

    .line 24
    .line 25
    sget-wide v5, Luw0;->x:J

    .line 26
    .line 27
    move-object v4, p0

    .line 28
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    if-nez v7, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const/4 p0, 0x1

    .line 38
    invoke-static {p0, v7}, Lnc8;->g(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast v7, Lmt3;

    .line 42
    .line 43
    invoke-virtual {v4}, Luw0;->o()Ljava/lang/Throwable;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {v7, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eq p0, v7, :cond_3

    .line 56
    .line 57
    move-object p0, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move-object p0, v4

    .line 60
    goto :goto_2
.end method

.method public final v(Lq76;)V
    .locals 10

    .line 1
    :goto_0
    sget-object v0, Luw0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Loh6;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v3, Luw0;->x:J

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v2, p0

    .line 12
    move-object v6, p1

    .line 13
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget-wide v8, Luw0;->x:J

    .line 21
    .line 22
    invoke-virtual {v1, v2, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_5

    .line 27
    .line 28
    :goto_1
    sget-object p0, Loh6;->a:Lsun/misc/Unsafe;

    .line 29
    .line 30
    invoke-virtual {p0, v2, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object v6, Lww0;->q:Ldu9;

    .line 35
    .line 36
    if-ne p0, v6, :cond_3

    .line 37
    .line 38
    sget-object v7, Lww0;->r:Ldu9;

    .line 39
    .line 40
    :cond_1
    move-object v3, v2

    .line 41
    sget-object v2, Loh6;->a:Lsun/misc/Unsafe;

    .line 42
    .line 43
    sget-wide v4, Luw0;->x:J

    .line 44
    .line 45
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    move-object v0, v2

    .line 50
    move-object v2, v3

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2}, Luw0;->o()Ljava/lang/Throwable;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Lq76;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-virtual {v0, v2, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eq p0, v6, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    sget-object p1, Lww0;->r:Ldu9;

    .line 69
    .line 70
    if-ne p0, p1, :cond_4

    .line 71
    .line 72
    const-string p0, "Another handler was already registered and successfully invoked"

    .line 73
    .line 74
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    const-string p1, "Another handler is already registered: "

    .line 79
    .line 80
    invoke-static {p0, p1}, Ll0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_5
    move-object p0, v2

    .line 85
    goto :goto_0
.end method

.method public final w(JZ)Z
    .locals 9

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_f

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const-wide v4, 0xfffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-eq v0, v3, :cond_d

    .line 19
    .line 20
    const/4 p3, 0x3

    .line 21
    if-ne v0, p3, :cond_c

    .line 22
    .line 23
    and-long/2addr p1, v4

    .line 24
    invoke-virtual {p0, p1, p2}, Luw0;->h(J)Lt41;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    move-object p3, p2

    .line 30
    :cond_0
    sget v0, Lww0;->b:I

    .line 31
    .line 32
    sub-int/2addr v0, v2

    .line 33
    :goto_0
    const/4 v3, -0x1

    .line 34
    if-ge v3, v0, :cond_9

    .line 35
    .line 36
    iget-wide v4, p1, Ln67;->e:J

    .line 37
    .line 38
    sget v6, Lww0;->b:I

    .line 39
    .line 40
    int-to-long v6, v6

    .line 41
    mul-long/2addr v4, v6

    .line 42
    int-to-long v6, v0

    .line 43
    add-long/2addr v4, v6

    .line 44
    :cond_1
    invoke-virtual {p1, v0}, Lt41;->q(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    sget-object v7, Lww0;->i:Ldu9;

    .line 49
    .line 50
    if-eq v6, v7, :cond_a

    .line 51
    .line 52
    sget-object v7, Lww0;->d:Ldu9;

    .line 53
    .line 54
    sget-object v8, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 55
    .line 56
    if-ne v6, v7, :cond_2

    .line 57
    .line 58
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    cmp-long v7, v4, v7

    .line 63
    .line 64
    if-ltz v7, :cond_a

    .line 65
    .line 66
    sget-object v7, Lww0;->l:Ldu9;

    .line 67
    .line 68
    invoke-virtual {p1, v0, v6, v7}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    invoke-virtual {p1, v0, p2}, Lt41;->s(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ln67;->n()V

    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_2
    sget-object v7, Lww0;->e:Ldu9;

    .line 82
    .line 83
    if-eq v6, v7, :cond_8

    .line 84
    .line 85
    if-nez v6, :cond_3

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    instance-of v7, v6, Lwn8;

    .line 89
    .line 90
    if-nez v7, :cond_6

    .line 91
    .line 92
    instance-of v7, v6, Lxn8;

    .line 93
    .line 94
    if-eqz v7, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    sget-object v7, Lww0;->g:Ldu9;

    .line 98
    .line 99
    if-eq v6, v7, :cond_a

    .line 100
    .line 101
    sget-object v8, Lww0;->f:Ldu9;

    .line 102
    .line 103
    if-ne v6, v8, :cond_5

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_5
    if-eq v6, v7, :cond_1

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_6
    :goto_1
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v7

    .line 113
    cmp-long v7, v4, v7

    .line 114
    .line 115
    if-ltz v7, :cond_a

    .line 116
    .line 117
    instance-of v7, v6, Lxn8;

    .line 118
    .line 119
    if-eqz v7, :cond_7

    .line 120
    .line 121
    move-object v7, v6

    .line 122
    check-cast v7, Lxn8;

    .line 123
    .line 124
    iget-object v7, v7, Lxn8;->a:Lwn8;

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_7
    move-object v7, v6

    .line 128
    check-cast v7, Lwn8;

    .line 129
    .line 130
    :goto_2
    sget-object v8, Lww0;->l:Ldu9;

    .line 131
    .line 132
    invoke-virtual {p1, v0, v6, v8}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_1

    .line 137
    .line 138
    invoke-static {p3, v7}, Lvm4;->z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p1, v0, p2}, Lt41;->s(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ln67;->n()V

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_8
    :goto_3
    sget-object v7, Lww0;->l:Ldu9;

    .line 150
    .line 151
    invoke-virtual {p1, v0, v6, v7}, Lt41;->p(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_1

    .line 156
    .line 157
    invoke-virtual {p1}, Ln67;->n()V

    .line 158
    .line 159
    .line 160
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_9
    invoke-virtual {p1}, Ldq1;->f()Ldq1;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Lt41;

    .line 169
    .line 170
    if-nez p1, :cond_0

    .line 171
    .line 172
    :cond_a
    :goto_5
    if-eqz p3, :cond_e

    .line 173
    .line 174
    instance-of p1, p3, Ljava/util/ArrayList;

    .line 175
    .line 176
    if-nez p1, :cond_b

    .line 177
    .line 178
    check-cast p3, Lwn8;

    .line 179
    .line 180
    invoke-virtual {p0, p3, v1}, Luw0;->C(Lwn8;Z)V

    .line 181
    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_b
    check-cast p3, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    sub-int/2addr p1, v2

    .line 191
    :goto_6
    if-ge v3, p1, :cond_e

    .line 192
    .line 193
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    check-cast p2, Lwn8;

    .line 198
    .line 199
    invoke-virtual {p0, p2, v1}, Luw0;->C(Lwn8;Z)V

    .line 200
    .line 201
    .line 202
    add-int/lit8 p1, p1, -0x1

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_c
    const-string p0, "unexpected close status: "

    .line 206
    .line 207
    invoke-static {v0, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    return v1

    .line 215
    :cond_d
    and-long/2addr p1, v4

    .line 216
    invoke-virtual {p0, p1, p2}, Luw0;->h(J)Lt41;

    .line 217
    .line 218
    .line 219
    if-eqz p3, :cond_e

    .line 220
    .line 221
    invoke-virtual {p0}, Luw0;->s()Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    if-nez p0, :cond_f

    .line 226
    .line 227
    :cond_e
    :goto_7
    return v2

    .line 228
    :cond_f
    return v1
.end method

.method public x()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final y()Z
    .locals 4

    .line 1
    sget-object v0, Luw0;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const-wide v2, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long p0, v0, v2

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public final z(JLt41;)V
    .locals 6

    .line 1
    :goto_0
    iget-wide v0, p3, Ln67;->e:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-gez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p3}, Ldq1;->d()Ldq1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lt41;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move-object p3, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    move-object v5, p3

    .line 19
    :goto_2
    invoke-virtual {v5}, Ln67;->g()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-virtual {v5}, Ldq1;->d()Ldq1;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lt41;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_2
    move-object v5, p1

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    :goto_3
    sget-object p1, Luw0;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object p1, Loh6;->a:Lsun/misc/Unsafe;

    .line 42
    .line 43
    sget-wide p2, Luw0;->t:J

    .line 44
    .line 45
    invoke-virtual {p1, p0, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    move-object v4, p1

    .line 50
    check-cast v4, Ln67;

    .line 51
    .line 52
    iget-wide v0, v4, Ln67;->e:J

    .line 53
    .line 54
    iget-wide v2, v5, Ln67;->e:J

    .line 55
    .line 56
    cmp-long p1, v0, v2

    .line 57
    .line 58
    if-ltz p1, :cond_4

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :cond_4
    invoke-virtual {v5}, Ln67;->o()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    move-object p3, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    :goto_4
    sget-object v0, Loh6;->a:Lsun/misc/Unsafe;

    .line 70
    .line 71
    sget-wide v2, Luw0;->t:J

    .line 72
    .line 73
    move-object v1, p0

    .line 74
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_7

    .line 79
    .line 80
    invoke-virtual {v4}, Ln67;->k()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_6

    .line 85
    .line 86
    invoke-virtual {v4}, Ldq1;->i()V

    .line 87
    .line 88
    .line 89
    :cond_6
    :goto_5
    return-void

    .line 90
    :cond_7
    invoke-virtual {v0, v1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-eq p0, v4, :cond_9

    .line 95
    .line 96
    invoke-virtual {v5}, Ln67;->k()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_8

    .line 101
    .line 102
    invoke-virtual {v5}, Ldq1;->i()V

    .line 103
    .line 104
    .line 105
    :cond_8
    move-object p0, v1

    .line 106
    goto :goto_3

    .line 107
    :cond_9
    move-object p0, v1

    .line 108
    goto :goto_4
.end method
