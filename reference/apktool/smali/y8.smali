.class public final Ly8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lv8;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Ly8;->b:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Ly8;->c:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v0, p0, Ly8;->a:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v1, Lw8;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {v1, p0, v2}, Lw8;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 39
    iput-object p1, p0, Ly8;->a:Ljava/lang/Object;

    iput-object p2, p0, Ly8;->b:Ljava/lang/Object;

    iput-object p3, p0, Ly8;->c:Ljava/lang/Object;

    iput-object p4, p0, Ly8;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lun8;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ly8;->a:Ljava/lang/Object;

    .line 40
    iget v0, p1, Lun8;->a:I

    .line 41
    new-instance v1, Lva;

    .line 42
    iget-object p1, p1, Lun8;->d:Lf1;

    .line 43
    invoke-direct {v1, v0, p1}, Lva;-><init>(ILf1;)V

    iput-object v1, p0, Ly8;->b:Ljava/lang/Object;

    new-array p1, v0, [B

    iput-object p1, p0, Ly8;->c:Ljava/lang/Object;

    new-array p1, v0, [B

    iput-object p1, p0, Ly8;->d:Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "params == null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Landroid/view/View;)Ly8;
    .locals 4

    .line 1
    const v0, 0x7f0a02b7

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0a04e2

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const v0, 0x7f0a05ba

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    new-instance v0, Ly8;

    .line 35
    .line 36
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    invoke-direct {v0, p0, v1, v2, v3}, Ly8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v0, "Missing required view with ID: "

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Ljo4;Lfx2;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lx8;

    .line 3
    .line 4
    iget-object v1, p0, Ly8;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, v1}, Lx8;-><init>(Ljo4;Lfx2;Ljava/lang/ref/ReferenceQueue;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Ly8;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lx8;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput-object p2, p1, Lx8;->c:Lll6;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1
.end method

.method public c([BILuq5;)[B
    .locals 8

    .line 1
    iget-object v0, p0, Ly8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lva;

    .line 4
    .line 5
    iget-object v1, p0, Ly8;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lun8;

    .line 8
    .line 9
    iget v2, v1, Lun8;->a:I

    .line 10
    .line 11
    array-length v3, p1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-ne v3, v2, :cond_5

    .line 14
    .line 15
    invoke-virtual {p3}, Luq5;->a()[B

    .line 16
    .line 17
    .line 18
    iget v1, v1, Lun8;->b:I

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    sub-int/2addr v1, v3

    .line 22
    if-gt p2, v1, :cond_4

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    add-int/lit8 v1, p2, -0x1

    .line 28
    .line 29
    invoke-virtual {p0, p1, v1, p3}, Ly8;->c([BILuq5;)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Ltq5;

    .line 34
    .line 35
    invoke-direct {v1}, Ltq5;-><init>()V

    .line 36
    .line 37
    .line 38
    iget v5, p3, Lgx8;->a:I

    .line 39
    .line 40
    iput v5, v1, Lgx8;->c:I

    .line 41
    .line 42
    iget-wide v5, p3, Lgx8;->b:J

    .line 43
    .line 44
    iput-wide v5, v1, Lgx8;->b:J

    .line 45
    .line 46
    iget v5, p3, Luq5;->e:I

    .line 47
    .line 48
    iput v5, v1, Ltq5;->e:I

    .line 49
    .line 50
    iget p3, p3, Luq5;->f:I

    .line 51
    .line 52
    iput p3, v1, Ltq5;->f:I

    .line 53
    .line 54
    sub-int/2addr p2, v3

    .line 55
    iput p2, v1, Ltq5;->g:I

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    iput p2, v1, Lgx8;->d:I

    .line 59
    .line 60
    new-instance p3, Luq5;

    .line 61
    .line 62
    invoke-direct {p3, v1}, Luq5;-><init>(Ltq5;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Ly8;->d:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, [B

    .line 68
    .line 69
    invoke-virtual {p3}, Luq5;->a()[B

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v0, v1, v5}, Lva;->a([B[B)[B

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v5, Ltq5;

    .line 78
    .line 79
    invoke-direct {v5}, Ltq5;-><init>()V

    .line 80
    .line 81
    .line 82
    iget v6, p3, Lgx8;->a:I

    .line 83
    .line 84
    iput v6, v5, Lgx8;->c:I

    .line 85
    .line 86
    iget-wide v6, p3, Lgx8;->b:J

    .line 87
    .line 88
    iput-wide v6, v5, Lgx8;->b:J

    .line 89
    .line 90
    iget v6, p3, Luq5;->e:I

    .line 91
    .line 92
    iput v6, v5, Ltq5;->e:I

    .line 93
    .line 94
    iget v6, p3, Luq5;->f:I

    .line 95
    .line 96
    iput v6, v5, Ltq5;->f:I

    .line 97
    .line 98
    iget p3, p3, Luq5;->g:I

    .line 99
    .line 100
    iput p3, v5, Ltq5;->g:I

    .line 101
    .line 102
    iput v3, v5, Lgx8;->d:I

    .line 103
    .line 104
    new-instance p3, Luq5;

    .line 105
    .line 106
    invoke-direct {p3, v5}, Luq5;-><init>(Ltq5;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Ly8;->d:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, [B

    .line 112
    .line 113
    invoke-virtual {p3}, Luq5;->a()[B

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {v0, p0, p3}, Lva;->a([B[B)[B

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    new-array p3, v2, [B

    .line 122
    .line 123
    move v3, p2

    .line 124
    :goto_0
    if-ge v3, v2, :cond_1

    .line 125
    .line 126
    aget-byte v5, p1, v3

    .line 127
    .line 128
    aget-byte v6, p0, v3

    .line 129
    .line 130
    xor-int/2addr v5, v6

    .line 131
    int-to-byte v5, v5

    .line 132
    aput-byte v5, p3, v3

    .line 133
    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    array-length p0, v1

    .line 138
    iget p1, v0, Lva;->a:I

    .line 139
    .line 140
    if-ne p0, p1, :cond_3

    .line 141
    .line 142
    if-ne v2, p1, :cond_2

    .line 143
    .line 144
    invoke-virtual {v0, p2, v1, p3}, Lva;->b(I[B[B)[B

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :cond_2
    const-string p0, "wrong in length"

    .line 150
    .line 151
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-object v4

    .line 155
    :cond_3
    const-string p0, "wrong key length"

    .line 156
    .line 157
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-object v4

    .line 161
    :cond_4
    const-string p0, "max chain length must not be greater than w"

    .line 162
    .line 163
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-object v4

    .line 167
    :cond_5
    const-string p0, "startHash needs to be "

    .line 168
    .line 169
    const-string p1, "bytes"

    .line 170
    .line 171
    invoke-static {v2, p0, p1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-object v4
.end method

.method public d(Lx8;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ly8;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p1, Lx8;->a:Ljo4;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p1, Lx8;->b:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v2, p1, Lx8;->c:Lll6;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    new-instance v1, Lfx2;

    .line 22
    .line 23
    iget-object v5, p1, Lx8;->a:Ljo4;

    .line 24
    .line 25
    iget-object v0, p0, Ly8;->d:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v6, v0

    .line 28
    check-cast v6, Lzw2;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct/range {v1 .. v6}, Lfx2;-><init>(Lll6;ZZLjo4;Lzw2;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Ly8;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lzw2;

    .line 38
    .line 39
    iget-object p1, p1, Lx8;->a:Ljo4;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v1}, Lzw2;->e(Ljo4;Lfx2;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    move-object p1, v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p1
.end method

.method public e(Luq5;)Lty3;
    .locals 9

    .line 1
    iget-object v0, p0, Ly8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lun8;

    .line 4
    .line 5
    iget v1, v0, Lun8;->c:I

    .line 6
    .line 7
    new-array v1, v1, [[B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    iget v4, v0, Lun8;->c:I

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-ge v3, v4, :cond_1

    .line 15
    .line 16
    new-instance v6, Ltq5;

    .line 17
    .line 18
    invoke-direct {v6}, Ltq5;-><init>()V

    .line 19
    .line 20
    .line 21
    iget v7, p1, Lgx8;->a:I

    .line 22
    .line 23
    iput v7, v6, Lgx8;->c:I

    .line 24
    .line 25
    iget-wide v7, p1, Lgx8;->b:J

    .line 26
    .line 27
    iput-wide v7, v6, Lgx8;->b:J

    .line 28
    .line 29
    iget v7, p1, Luq5;->e:I

    .line 30
    .line 31
    iput v7, v6, Ltq5;->e:I

    .line 32
    .line 33
    iput v3, v6, Ltq5;->f:I

    .line 34
    .line 35
    iget v7, p1, Luq5;->g:I

    .line 36
    .line 37
    iput v7, v6, Ltq5;->g:I

    .line 38
    .line 39
    iget p1, p1, Lgx8;->d:I

    .line 40
    .line 41
    iput p1, v6, Lgx8;->d:I

    .line 42
    .line 43
    new-instance p1, Luq5;

    .line 44
    .line 45
    invoke-direct {p1, v6}, Luq5;-><init>(Ltq5;)V

    .line 46
    .line 47
    .line 48
    if-ltz v3, :cond_0

    .line 49
    .line 50
    if-ge v3, v4, :cond_0

    .line 51
    .line 52
    iget-object v4, p0, Ly8;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v4, Lva;

    .line 55
    .line 56
    iget-object v5, p0, Ly8;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v5, [B

    .line 59
    .line 60
    int-to-long v6, v3

    .line 61
    const/16 v8, 0x20

    .line 62
    .line 63
    invoke-static {v8, v6, v7}, Ljd4;->J(IJ)[B

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v4, v5, v6}, Lva;->a([B[B)[B

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iget v5, v0, Lun8;->b:I

    .line 72
    .line 73
    add-int/lit8 v5, v5, -0x1

    .line 74
    .line 75
    invoke-virtual {p0, v4, v5, p1}, Ly8;->c([BILuq5;)[B

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    aput-object v4, v1, v3

    .line 80
    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const-string p0, "index out of bounds"

    .line 85
    .line 86
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v5

    .line 90
    :cond_1
    new-instance p0, Lty3;

    .line 91
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    move p1, v2

    .line 98
    :goto_1
    array-length v3, v1

    .line 99
    if-ge p1, v3, :cond_3

    .line 100
    .line 101
    aget-object v3, v1, p1

    .line 102
    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    add-int/lit8 p1, p1, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    const-string p0, "publicKey byte array == null"

    .line 109
    .line 110
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v5

    .line 114
    :cond_3
    array-length p1, v1

    .line 115
    iget v3, v0, Lun8;->c:I

    .line 116
    .line 117
    if-ne p1, v3, :cond_6

    .line 118
    .line 119
    :goto_2
    array-length p1, v1

    .line 120
    if-ge v2, p1, :cond_5

    .line 121
    .line 122
    aget-object p1, v1, v2

    .line 123
    .line 124
    array-length p1, p1

    .line 125
    iget v3, v0, Lun8;->a:I

    .line 126
    .line 127
    if-ne p1, v3, :cond_4

    .line 128
    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    const-string p0, "wrong publicKey format"

    .line 133
    .line 134
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v5

    .line 138
    :cond_5
    invoke-static {v1}, Ljd4;->h([[B)[[B

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iput-object p1, p0, Lty3;->a:Ljava/lang/Object;

    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_6
    const-string p0, "wrong publicKey size"

    .line 146
    .line 147
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v5

    .line 151
    :cond_7
    const-string p0, "params == null"

    .line 152
    .line 153
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v5
.end method

.method public f([BLuq5;)[B
    .locals 3

    .line 1
    new-instance v0, Ltq5;

    .line 2
    .line 3
    invoke-direct {v0}, Ltq5;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p2, Lgx8;->a:I

    .line 7
    .line 8
    iput v1, v0, Lgx8;->c:I

    .line 9
    .line 10
    iget-wide v1, p2, Lgx8;->b:J

    .line 11
    .line 12
    iput-wide v1, v0, Lgx8;->b:J

    .line 13
    .line 14
    iget p2, p2, Luq5;->e:I

    .line 15
    .line 16
    iput p2, v0, Ltq5;->e:I

    .line 17
    .line 18
    new-instance p2, Luq5;

    .line 19
    .line 20
    invoke-direct {p2, v0}, Luq5;-><init>(Ltq5;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Ly8;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lva;

    .line 26
    .line 27
    invoke-virtual {p2}, Luq5;->a()[B

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0, p1, p2}, Lva;->a([B[B)[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public g([B[B)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Ly8;->a:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Lun8;

    .line 5
    .line 6
    iget v1, v1, Lun8;->a:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    array-length v0, p2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Ly8;->c:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p2, p0, Ly8;->d:Ljava/lang/Object;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "size of publicSeed needs to be equal to size of digest"

    .line 21
    .line 22
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string p0, "publicSeed == null"

    .line 27
    .line 28
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const-string p0, "size of secretKeySeed needs to be equal to size of digest"

    .line 33
    .line 34
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Ly8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    return-object p0
.end method
