.class public abstract Lqr5;
.super Lar5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final f:Len0;


# instance fields
.field public final a:Lwj4;

.field public b:Lv77;

.field public final c:Luf2;

.field public final d:Lrp0;

.field public e:Lpi2;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v2, Lyg4;

    .line 2
    .line 3
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lwp4;

    .line 7
    .line 8
    const/16 v1, 0x30

    .line 9
    .line 10
    invoke-direct {v0, v1, v1}, Lwp4;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iput-object v0, v2, Lyg4;->a:Lwp4;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, v2, Lyg4;->b:Z

    .line 17
    .line 18
    new-instance v0, Len0;

    .line 19
    .line 20
    sget-object v3, Llc8;->c:Llc8;

    .line 21
    .line 22
    sget-object v4, Lmn7;->x:Lmn7;

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    sget-object v6, Lcl0;->a:Lbl0;

    .line 29
    .line 30
    new-instance v7, Lmp7;

    .line 31
    .line 32
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct/range {v0 .. v7}, Len0;-><init>(Lxo0;Lyg4;Llc8;Ljava/text/DateFormat;Ljava/util/Locale;Lbl0;Lmp7;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lqr5;->f:Len0;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Lwj4;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    const v3, 0x3f19999a    # 0.6f

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    const/16 v5, 0x40

    .line 15
    .line 16
    invoke-direct {v2, v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lqr5;->a:Lwj4;

    .line 20
    .line 21
    iget-object v2, v1, Lwj4;->d:Lar5;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iput-object v0, v1, Lwj4;->d:Lar5;

    .line 26
    .line 27
    :cond_0
    new-instance v8, Lun7;

    .line 28
    .line 29
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v10, Lop6;

    .line 33
    .line 34
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lwp4;

    .line 38
    .line 39
    const/16 v2, 0x14

    .line 40
    .line 41
    const/16 v3, 0xc8

    .line 42
    .line 43
    invoke-direct {v1, v2, v3}, Lwp4;-><init>(II)V

    .line 44
    .line 45
    .line 46
    iput-object v1, v10, Lop6;->a:Lwp4;

    .line 47
    .line 48
    sget-object v1, Llc8;->b:[Lgc8;

    .line 49
    .line 50
    new-instance v9, Ljg7;

    .line 51
    .line 52
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v12, Lxo0;

    .line 56
    .line 57
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    sget-object v1, Lqr5;->f:Len0;

    .line 61
    .line 62
    iget-object v2, v1, Len0;->b:Ljb9;

    .line 63
    .line 64
    if-ne v2, v12, :cond_1

    .line 65
    .line 66
    move-object v7, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance v11, Len0;

    .line 69
    .line 70
    iget-object v13, v1, Len0;->c:Lyg4;

    .line 71
    .line 72
    iget-object v14, v1, Len0;->a:Llc8;

    .line 73
    .line 74
    iget-object v15, v1, Len0;->e:Ljava/text/DateFormat;

    .line 75
    .line 76
    iget-object v2, v1, Len0;->f:Ljava/util/Locale;

    .line 77
    .line 78
    iget-object v3, v1, Len0;->k:Lbl0;

    .line 79
    .line 80
    iget-object v1, v1, Len0;->d:Lmp7;

    .line 81
    .line 82
    move-object/from16 v18, v1

    .line 83
    .line 84
    move-object/from16 v16, v2

    .line 85
    .line 86
    move-object/from16 v17, v3

    .line 87
    .line 88
    invoke-direct/range {v11 .. v18}, Len0;-><init>(Lxo0;Lyg4;Llc8;Ljava/text/DateFormat;Ljava/util/Locale;Lbl0;Lmp7;)V

    .line 89
    .line 90
    .line 91
    move-object v7, v11

    .line 92
    :goto_0
    new-instance v11, Lmp7;

    .line 93
    .line 94
    sget-object v1, Lqk4;->e:Lqk4;

    .line 95
    .line 96
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    new-instance v1, Luk1;

    .line 100
    .line 101
    new-instance v2, Ldj5;

    .line 102
    .line 103
    sget v2, Ldj5;->a:I

    .line 104
    .line 105
    new-array v2, v2, [I

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance v6, Lv77;

    .line 111
    .line 112
    sget-object v12, Lbd2;->a:Lcd2;

    .line 113
    .line 114
    invoke-direct/range {v6 .. v12}, Lv77;-><init>(Len0;Lun7;Ljg7;Lop6;Lmp7;Lcd2;)V

    .line 115
    .line 116
    .line 117
    iput-object v6, v0, Lqr5;->b:Lv77;

    .line 118
    .line 119
    new-instance v6, Lpi2;

    .line 120
    .line 121
    move-object v13, v12

    .line 122
    move-object v12, v1

    .line 123
    invoke-direct/range {v6 .. v13}, Lpi2;-><init>(Len0;Lun7;Ljg7;Lop6;Lmp7;Luk1;Lcd2;)V

    .line 124
    .line 125
    .line 126
    iput-object v6, v0, Lqr5;->e:Lpi2;

    .line 127
    .line 128
    iget-object v1, v0, Lqr5;->b:Lv77;

    .line 129
    .line 130
    sget-object v2, Lu65;->L:Lu65;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ls65;->i(Lu65;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_2

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v2, v1}, Lqr5;->b(Lu65;Z)V

    .line 140
    .line 141
    .line 142
    :cond_2
    new-instance v1, Luf2;

    .line 143
    .line 144
    invoke-direct {v1}, Lc87;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v1, v0, Lqr5;->c:Luf2;

    .line 148
    .line 149
    new-instance v1, Lwp4;

    .line 150
    .line 151
    const/16 v2, 0x1f4

    .line 152
    .line 153
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const/16 v3, 0x7d0

    .line 158
    .line 159
    invoke-direct {v1, v2, v3}, Lwp4;-><init>(II)V

    .line 160
    .line 161
    .line 162
    new-instance v1, Ljava/util/HashMap;

    .line 163
    .line 164
    const/16 v2, 0x8

    .line 165
    .line 166
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 172
    .line 173
    .line 174
    sget-object v1, Lrp0;->q:Lrp0;

    .line 175
    .line 176
    iput-object v1, v0, Lqr5;->d:Lrp0;

    .line 177
    .line 178
    return-void
.end method


# virtual methods
.method public final a(Lpw8;Lgc6;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lqr5;->b:Lv77;

    .line 2
    .line 3
    sget-object v1, Lx77;->q:Lx77;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lv77;->l(Lx77;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lqr5;->d:Lrp0;

    .line 10
    .line 11
    iget-object p0, p0, Lqr5;->c:Luf2;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    instance-of v1, p2, Ljava/io/Closeable;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    move-object v1, p2

    .line 20
    check-cast v1, Ljava/io/Closeable;

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v3, Luf2;

    .line 26
    .line 27
    invoke-direct {v3, p0, v0, v2}, Lc87;-><init>(Lc87;Lv77;Lji8;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1, p2}, Luf2;->G(Lpw8;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lpw8;->close()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const/4 v1, 0x0

    .line 42
    goto :goto_0

    .line 43
    :catch_1
    move-exception p0

    .line 44
    :goto_0
    sget-object p2, Lu81;->a:[Ljava/lang/annotation/Annotation;

    .line 45
    .line 46
    sget-object p2, Lek4;->d:Lek4;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lgk4;->r0(Lek4;)Lgk4;

    .line 49
    .line 50
    .line 51
    :try_start_2
    invoke-virtual {p1}, Lpw8;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_2
    move-exception p1

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    if-eqz v1, :cond_0

    .line 60
    .line 61
    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catch_3
    move-exception p1

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    :goto_2
    instance-of p1, p0, Ljava/io/IOException;

    .line 70
    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    invoke-static {p0}, Lu81;->v(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    check-cast p0, Ljava/io/IOException;

    .line 81
    .line 82
    throw p0

    .line 83
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v1, Luf2;

    .line 87
    .line 88
    invoke-direct {v1, p0, v0, v2}, Lc87;-><init>(Lc87;Lv77;Lji8;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1, p2}, Luf2;->G(Lpw8;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lpw8;->close()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catch_4
    move-exception p0

    .line 99
    sget-object p2, Lu81;->a:[Ljava/lang/annotation/Annotation;

    .line 100
    .line 101
    sget-object p2, Lek4;->d:Lek4;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lgk4;->r0(Lek4;)Lgk4;

    .line 104
    .line 105
    .line 106
    :try_start_5
    invoke-virtual {p1}, Lpw8;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catch_5
    move-exception p1

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :goto_3
    instance-of p1, p0, Ljava/io/IOException;

    .line 115
    .line 116
    if-nez p1, :cond_3

    .line 117
    .line 118
    invoke-static {p0}, Lu81;->v(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    check-cast p0, Ljava/io/IOException;

    .line 126
    .line 127
    throw p0
.end method

.method public final b(Lu65;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lqr5;->b:Lv77;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    filled-new-array {p1}, [Lu65;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-wide v3, v0, Ls65;->a:J

    .line 11
    .line 12
    aget-object v2, v2, v1

    .line 13
    .line 14
    iget-wide v5, v2, Lu65;->b:J

    .line 15
    .line 16
    or-long/2addr v5, v3

    .line 17
    cmp-long v2, v5, v3

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0, v5, v6}, Lv77;->j(J)Lt65;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    check-cast v0, Lv77;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    filled-new-array {p1}, [Lu65;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-wide v3, v0, Ls65;->a:J

    .line 34
    .line 35
    aget-object v2, v2, v1

    .line 36
    .line 37
    iget-wide v5, v2, Lu65;->b:J

    .line 38
    .line 39
    not-long v5, v5

    .line 40
    and-long/2addr v5, v3

    .line 41
    cmp-long v2, v5, v3

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0, v5, v6}, Lv77;->j(J)Lt65;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    iput-object v0, p0, Lqr5;->b:Lv77;

    .line 52
    .line 53
    iget-object v0, p0, Lqr5;->e:Lpi2;

    .line 54
    .line 55
    if-eqz p2, :cond_4

    .line 56
    .line 57
    filled-new-array {p1}, [Lu65;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-wide v2, v0, Ls65;->a:J

    .line 62
    .line 63
    aget-object p1, p1, v1

    .line 64
    .line 65
    iget-wide p1, p1, Lu65;->b:J

    .line 66
    .line 67
    or-long/2addr p1, v2

    .line 68
    cmp-long v1, p1, v2

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {v0, p1, p2}, Lpi2;->j(J)Lt65;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_2
    check-cast v0, Lpi2;

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    filled-new-array {p1}, [Lu65;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-wide v2, v0, Ls65;->a:J

    .line 85
    .line 86
    aget-object p1, p1, v1

    .line 87
    .line 88
    iget-wide p1, p1, Lu65;->b:J

    .line 89
    .line 90
    not-long p1, p1

    .line 91
    and-long/2addr p1, v2

    .line 92
    cmp-long v1, p1, v2

    .line 93
    .line 94
    if-nez v1, :cond_5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {v0, p1, p2}, Lpi2;->j(J)Lt65;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    goto :goto_2

    .line 102
    :goto_3
    iput-object v0, p0, Lqr5;->e:Lpi2;

    .line 103
    .line 104
    return-void
.end method

.method public final c(Lq67;)Lpw8;
    .locals 8

    .line 1
    iget-object v0, p0, Lqr5;->a:Lwj4;

    .line 2
    .line 3
    iget-object v1, v0, Lwj4;->e:Lay2;

    .line 4
    .line 5
    new-instance v2, Lvu1;

    .line 6
    .line 7
    invoke-direct {v2, p1, v1}, Lvu1;-><init>(Lq67;Lay2;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lq67;->a:Lv08;

    .line 11
    .line 12
    iget-object v1, v1, Lv08;->g:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lqw0;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move v5, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v5, v4

    .line 23
    :goto_0
    if-nez v1, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    iget v6, v0, Lwj4;->a:I

    .line 27
    .line 28
    invoke-static {v1, v6}, Leq3;->a(II)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    sget-object v1, Lvl4;->a:Lvl4;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v1, v0, Lwj4;->c:Lwl4;

    .line 38
    .line 39
    :goto_1
    invoke-interface {v1}, Lfg6;->u()Lqw0;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_2
    new-instance v6, Lc84;

    .line 44
    .line 45
    iget-object v7, v0, Lwj4;->f:Lmp7;

    .line 46
    .line 47
    invoke-direct {v6, v7, v1, v2}, Lc84;-><init>(Lmp7;Lqw0;Lvu1;)V

    .line 48
    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    iput-boolean v4, v6, Lc84;->c:Z

    .line 53
    .line 54
    :cond_3
    new-instance v1, Lpw8;

    .line 55
    .line 56
    iget v2, v0, Lwj4;->b:I

    .line 57
    .line 58
    iget-char v5, v0, Lwj4;->n:C

    .line 59
    .line 60
    invoke-direct {v1, v6, v2, p1, v5}, Lpw8;-><init>(Lc84;ILq67;C)V

    .line 61
    .line 62
    .line 63
    iget-object p1, v0, Lwj4;->k:Lz77;

    .line 64
    .line 65
    sget-object v0, Lwj4;->r:Lz77;

    .line 66
    .line 67
    if-eq p1, v0, :cond_4

    .line 68
    .line 69
    iput-object p1, v1, Lgk4;->r:Lz77;

    .line 70
    .line 71
    :cond_4
    iget-object p0, p0, Lqr5;->b:Lv77;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sget-object p1, Lx77;->d:Lx77;

    .line 77
    .line 78
    iget v0, p0, Lv77;->t:I

    .line 79
    .line 80
    iget p1, p1, Lx77;->b:I

    .line 81
    .line 82
    and-int/2addr p1, v0

    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object p1, v1, Lfk4;->a:Lr56;

    .line 86
    .line 87
    if-nez p1, :cond_6

    .line 88
    .line 89
    iget-object p0, p0, Lv77;->r:Lr56;

    .line 90
    .line 91
    instance-of p1, p0, Lkf2;

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    check-cast p0, Lkf2;

    .line 96
    .line 97
    new-instance p1, Lkf2;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    sget-object v2, Ljf2;->a:Ljf2;

    .line 103
    .line 104
    iput-object v2, p1, Lkf2;->a:Las5;

    .line 105
    .line 106
    sget-object v2, Lre2;->d:Lre2;

    .line 107
    .line 108
    iput-object v2, p1, Lkf2;->b:Las5;

    .line 109
    .line 110
    iget-object v2, p0, Lkf2;->c:Lz77;

    .line 111
    .line 112
    iput-object v2, p1, Lkf2;->c:Lz77;

    .line 113
    .line 114
    iget-object v2, p0, Lkf2;->a:Las5;

    .line 115
    .line 116
    iput-object v2, p1, Lkf2;->a:Las5;

    .line 117
    .line 118
    iget-object v2, p0, Lkf2;->b:Las5;

    .line 119
    .line 120
    iput-object v2, p1, Lkf2;->b:Las5;

    .line 121
    .line 122
    iget v2, p0, Lkf2;->d:I

    .line 123
    .line 124
    iput v2, p1, Lkf2;->d:I

    .line 125
    .line 126
    iget-object v2, p0, Lkf2;->e:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v2, p1, Lkf2;->e:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v2, p0, Lkf2;->f:Ljava/lang/String;

    .line 131
    .line 132
    iput-object v2, p1, Lkf2;->f:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v2, p0, Lkf2;->k:Ljava/lang/String;

    .line 135
    .line 136
    iput-object v2, p1, Lkf2;->k:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v2, p0, Lkf2;->n:Ljava/lang/String;

    .line 139
    .line 140
    iput-object v2, p1, Lkf2;->n:Ljava/lang/String;

    .line 141
    .line 142
    iget-object p0, p0, Lkf2;->p:Ljava/lang/String;

    .line 143
    .line 144
    iput-object p0, p1, Lkf2;->p:Ljava/lang/String;

    .line 145
    .line 146
    move-object p0, p1

    .line 147
    :cond_5
    if-eqz p0, :cond_6

    .line 148
    .line 149
    iput-object p0, v1, Lfk4;->a:Lr56;

    .line 150
    .line 151
    :cond_6
    sget-object p0, Lx77;->L:Lx77;

    .line 152
    .line 153
    iget p0, p0, Lx77;->b:I

    .line 154
    .line 155
    and-int/2addr p0, v0

    .line 156
    if-eqz p0, :cond_7

    .line 157
    .line 158
    move p0, v3

    .line 159
    goto :goto_2

    .line 160
    :cond_7
    move p0, v4

    .line 161
    :goto_2
    if-eqz p0, :cond_e

    .line 162
    .line 163
    if-eqz p0, :cond_8

    .line 164
    .line 165
    sget-object p0, Lek4;->q:Lek4;

    .line 166
    .line 167
    iget p0, p0, Lek4;->b:I

    .line 168
    .line 169
    :goto_3
    move p1, p0

    .line 170
    goto :goto_4

    .line 171
    :cond_8
    move p0, v4

    .line 172
    goto :goto_3

    .line 173
    :goto_4
    iget v0, v1, Lcv3;->b:I

    .line 174
    .line 175
    not-int v2, p1

    .line 176
    and-int/2addr v2, v0

    .line 177
    and-int/2addr p0, p1

    .line 178
    or-int/2addr p0, v2

    .line 179
    xor-int p1, v0, p0

    .line 180
    .line 181
    if-eqz p1, :cond_e

    .line 182
    .line 183
    iput p0, v1, Lcv3;->b:I

    .line 184
    .line 185
    sget v0, Lcv3;->k:I

    .line 186
    .line 187
    and-int/2addr v0, p1

    .line 188
    if-nez v0, :cond_9

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_9
    sget-object v0, Lek4;->p:Lek4;

    .line 192
    .line 193
    invoke-virtual {v0, p0}, Lek4;->a(I)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    iput-boolean v0, v1, Lcv3;->d:Z

    .line 198
    .line 199
    sget-object v0, Lek4;->n:Lek4;

    .line 200
    .line 201
    invoke-virtual {v0, p1}, Lek4;->a(I)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_b

    .line 206
    .line 207
    invoke-virtual {v0, p0}, Lek4;->a(I)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_a

    .line 212
    .line 213
    const/16 v0, 0x7f

    .line 214
    .line 215
    iput v0, v1, Lgk4;->q:I

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_a
    iput v4, v1, Lgk4;->q:I

    .line 219
    .line 220
    :cond_b
    :goto_5
    sget-object v0, Lek4;->r:Lek4;

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Lek4;->a(I)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_d

    .line 227
    .line 228
    invoke-virtual {v0, p0}, Lek4;->a(I)Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    iget-object v0, v1, Lcv3;->e:Lv08;

    .line 233
    .line 234
    if-eqz p1, :cond_c

    .line 235
    .line 236
    iget-object p1, v0, Lv08;->h:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast p1, Lf41;

    .line 239
    .line 240
    if-nez p1, :cond_d

    .line 241
    .line 242
    new-instance p1, Lf41;

    .line 243
    .line 244
    invoke-direct {p1, v1}, Lf41;-><init>(Lcv3;)V

    .line 245
    .line 246
    .line 247
    iput-object p1, v0, Lv08;->h:Ljava/lang/Object;

    .line 248
    .line 249
    iput-object v0, v1, Lcv3;->e:Lv08;

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_c
    const/4 p1, 0x0

    .line 253
    iput-object p1, v0, Lv08;->h:Ljava/lang/Object;

    .line 254
    .line 255
    iput-object v0, v1, Lcv3;->e:Lv08;

    .line 256
    .line 257
    :cond_d
    :goto_6
    sget-object p1, Lek4;->f:Lek4;

    .line 258
    .line 259
    invoke-virtual {p1, p0}, Lek4;->a(I)Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    xor-int/2addr p1, v3

    .line 264
    iput-boolean p1, v1, Lgk4;->t:Z

    .line 265
    .line 266
    sget-object p1, Lek4;->x:Lek4;

    .line 267
    .line 268
    invoke-virtual {p1, p0}, Lek4;->a(I)Z

    .line 269
    .line 270
    .line 271
    move-result p0

    .line 272
    iput-boolean p0, v1, Lgk4;->x:Z

    .line 273
    .line 274
    :cond_e
    return-object v1
.end method
