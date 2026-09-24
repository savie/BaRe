.class public Lns0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmr8;
.implements Lcj8;
.implements Lv79;
.implements Lt83;
.implements Lal6;
.implements Lw74;
.implements Ldh5;
.implements Let9;
.implements Lcs9;
.implements Lgt9;
.implements Les9;
.implements Ly1a;


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final c:Lns0;

.field public static final d:Lns0;

.field public static final e:Lns0;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v0, Lns0;->b:[Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Lns0;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {v0, v1}, Lns0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lns0;->c:Lns0;

    .line 13
    .line 14
    new-instance v0, Lns0;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-direct {v0, v1}, Lns0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lns0;->d:Lns0;

    .line 21
    .line 22
    new-instance v0, Lns0;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    invoke-direct {v0, v1}, Lns0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lns0;->e:Lns0;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iput v0, p0, Lns0;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance p0, Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 14
    iput p1, p0, Lns0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lro;Landroidx/fragment/app/z;)V
    .locals 0

    const/16 p1, 0xc

    iput p1, p0, Lns0;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Lc70;JZ)V
    .locals 6

    .line 1
    sget-object v0, Lc70;->h:Li66;

    .line 2
    .line 3
    sget-object v0, Lc70;->i:Lc70;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lc70;

    .line 9
    .line 10
    invoke-direct {v0}, Lc70;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lc70;->i:Lc70;

    .line 14
    .line 15
    new-instance v0, Lb70;

    .line 16
    .line 17
    const-string v2, "Okio Watchdog"

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    cmp-long v0, p1, v4

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lf48;->c()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    sub-long/2addr v4, v2

    .line 45
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    add-long/2addr p1, v2

    .line 50
    iput-wide p1, p0, Lc70;->g:J

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-eqz v0, :cond_2

    .line 54
    .line 55
    add-long/2addr v2, p1

    .line 56
    iput-wide v2, p0, Lc70;->g:J

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-eqz p3, :cond_5

    .line 60
    .line 61
    invoke-virtual {p0}, Lf48;->c()J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    iput-wide p1, p0, Lc70;->g:J

    .line 66
    .line 67
    :goto_0
    sget-object p1, Lc70;->h:Li66;

    .line 68
    .line 69
    iget p2, p1, Li66;->a:I

    .line 70
    .line 71
    add-int/2addr p2, v1

    .line 72
    iput p2, p1, Li66;->a:I

    .line 73
    .line 74
    iget-object p3, p1, Li66;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p3, [Lc70;

    .line 77
    .line 78
    array-length v0, p3

    .line 79
    if-ne p2, v0, :cond_3

    .line 80
    .line 81
    mul-int/lit8 v0, p2, 0x2

    .line 82
    .line 83
    new-array v0, v0, [Lc70;

    .line 84
    .line 85
    const/16 v2, 0xe

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-static {v3, v3, v2, p3, v0}, Lx50;->i0(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p1, Li66;->b:Ljava/lang/Object;

    .line 92
    .line 93
    :cond_3
    invoke-virtual {p1, p2, p0}, Li66;->a(ILc70;)V

    .line 94
    .line 95
    .line 96
    iget p0, p0, Lc70;->f:I

    .line 97
    .line 98
    if-ne p0, v1, :cond_4

    .line 99
    .line 100
    sget-object p0, Lc70;->k:Ljava/util/concurrent/locks/Condition;

    .line 101
    .line 102
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void

    .line 106
    :cond_5
    invoke-static {}, Ld6;->n()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public static h()Lc70;
    .locals 9

    .line 1
    sget-object v0, Lc70;->h:Li66;

    .line 2
    .line 3
    iget-object v1, v0, Li66;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [Lc70;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    sget-object v1, Lc70;->k:Ljava/util/concurrent/locks/Condition;

    .line 18
    .line 19
    sget-wide v6, Lc70;->l:J

    .line 20
    .line 21
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    invoke-interface {v1, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Li66;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, [Lc70;

    .line 29
    .line 30
    aget-object v0, v0, v2

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    sub-long/2addr v0, v4

    .line 39
    sget-wide v4, Lc70;->m:J

    .line 40
    .line 41
    cmp-long v0, v0, v4

    .line 42
    .line 43
    if-ltz v0, :cond_0

    .line 44
    .line 45
    sget-object v0, Lc70;->i:Lc70;

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_0
    return-object v3

    .line 49
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    iget-wide v6, v1, Lc70;->g:J

    .line 54
    .line 55
    sub-long/2addr v6, v4

    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    cmp-long v2, v6, v4

    .line 59
    .line 60
    if-lez v2, :cond_2

    .line 61
    .line 62
    sget-object v0, Lc70;->k:Ljava/util/concurrent/locks/Condition;

    .line 63
    .line 64
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    .line 66
    invoke-interface {v0, v6, v7, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 67
    .line 68
    .line 69
    return-object v3

    .line 70
    :cond_2
    invoke-virtual {v0, v1}, Li66;->b(Lc70;)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    iput v0, v1, Lc70;->e:I

    .line 75
    .line 76
    return-object v1
.end method

.method public static j(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/util/ArrayList;)V
    .locals 14

    .line 1
    new-instance v0, Lc7;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, v1}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lel1;->h1(Ljava/util/ArrayList;Lmt3;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getBlackListType()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sget-object v0, Lis0;->Hide:Lis0;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    .line 23
    move p0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    sget-object v0, Lgs0;->a:Lgs0;

    .line 27
    .line 28
    sget-object v2, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->Companion:Lds0;

    .line 29
    .line 30
    invoke-static {p1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lds0;->a(Ljava/util/List;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1, v1}, Lgs0;->d(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;Z)V

    .line 42
    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    sget-object v2, Lkz4;->g:Lkz4;

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    const/16 v7, 0xa

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x1

    .line 54
    invoke-static/range {v2 .. v7}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 55
    .line 56
    .line 57
    sget-object v8, Lua1;->g:Lua1;

    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    const/16 v13, 0xa

    .line 61
    .line 62
    const/4 v9, 0x1

    .line 63
    const/4 v10, 0x0

    .line 64
    const/4 v11, 0x1

    .line 65
    invoke-static/range {v8 .. v13}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public static l(Lzm;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/util/ArrayList;Lxi;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lis0;->Companion:Lhs0;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lis0;->getEntries()Ljx2;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Lz3;

    .line 25
    .line 26
    invoke-virtual {v0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    move-object v2, v0

    .line 31
    check-cast v2, Lw3;

    .line 32
    .line 33
    invoke-virtual {v2}, Lw3;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2}, Lw3;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lis0;

    .line 44
    .line 45
    invoke-virtual {v2}, Lis0;->getDisplayString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    new-array v2, v0, [Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, [Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getBlackListType()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/4 v5, 0x0

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    move-object v6, v4

    .line 82
    check-cast v6, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 83
    .line 84
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-static {v6, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object v4, v5

    .line 100
    :goto_1
    check-cast v4, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 101
    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getBlackListType()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    move-object v10, v3

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    move-object v10, v5

    .line 115
    :goto_2
    if-eqz v10, :cond_4

    .line 116
    .line 117
    const/4 v0, 0x1

    .line 118
    :cond_4
    new-instance v8, Ljh6;

    .line 119
    .line 120
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    iput v2, v8, Ljh6;->a:I

    .line 124
    .line 125
    new-instance v3, Lhv1;

    .line 126
    .line 127
    const v4, 0x7f140160

    .line 128
    .line 129
    .line 130
    invoke-direct {v3, p0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 131
    .line 132
    .line 133
    new-instance v12, Ls35;

    .line 134
    .line 135
    invoke-direct {v12, p0, v4, v3, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    iget-object v3, v12, Lva;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v3, Lra;

    .line 145
    .line 146
    iput-object p0, v3, Lra;->d:Ljava/lang/CharSequence;

    .line 147
    .line 148
    check-cast v1, [Ljava/lang/CharSequence;

    .line 149
    .line 150
    new-instance p0, Ljs0;

    .line 151
    .line 152
    invoke-direct {p0, v8}, Ljs0;-><init>(Ljh6;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12, v1, v2, p0}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    new-instance v6, Lks0;

    .line 159
    .line 160
    move-object v7, p1

    .line 161
    move-object v9, p2

    .line 162
    move-object/from16 v11, p3

    .line 163
    .line 164
    invoke-direct/range {v6 .. v11}, Lks0;-><init>(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljh6;Ljava/util/ArrayList;Ljava/lang/Integer;Lbt3;)V

    .line 165
    .line 166
    .line 167
    const p0, 0x7f1303e6

    .line 168
    .line 169
    .line 170
    invoke-virtual {v12, p0, v6}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    const p0, 0x7f1300f1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v12, p0, v5}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    if-eqz v0, :cond_5

    .line 180
    .line 181
    new-instance p0, Lls0;

    .line 182
    .line 183
    move-object/from16 v11, p3

    .line 184
    .line 185
    invoke-direct {p0, p1, p2, v11}, Lls0;-><init>(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/util/ArrayList;Lbt3;)V

    .line 186
    .line 187
    .line 188
    const p1, 0x7f13044c

    .line 189
    .line 190
    .line 191
    invoke-virtual {v12, p1, p0}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    :cond_5
    invoke-virtual {v12}, Ls35;->m()Lwa;

    .line 195
    .line 196
    .line 197
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Ljava/lang/String;)Ll15;
    .locals 0

    .line 1
    sget-object p0, Lrj5;->a:Lrj5;

    .line 2
    .line 3
    return-object p0
.end method

.method public createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "This should never happen, if this method was called it means we\'re trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public synthetic e(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public f(Lvm4;)Lpt9;
    .locals 3

    .line 1
    check-cast p1, Lvq9;

    .line 2
    .line 3
    invoke-static {p1}, Lrq9;->b(Lvq9;)Lgz9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lrq9;->g:Lot9;

    .line 12
    .line 13
    iget-object v1, p1, Lvq9;->d:Llq9;

    .line 14
    .line 15
    iget-object v1, v1, Llq9;->d:Liq9;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lr0a;

    .line 22
    .line 23
    iget-object p1, p1, Lvq9;->k:Ljava/lang/Integer;

    .line 24
    .line 25
    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-static {v1, p0, v2, v0, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public g(Lot9;)Lbd9;
    .locals 2

    .line 1
    iget p0, p0, Lns0;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p1, Lot9;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lmz9;

    .line 10
    .line 11
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v1, Lf79;->a:Lf79;

    .line 28
    .line 29
    invoke-static {p1, v1}, Lg1a;->u(Lt69;Lf79;)Lg1a;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-virtual {p1}, Lg1a;->t()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lao9;->a(Lr0a;)Lsg9;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance v0, Lik9;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lik9;-><init>(Lsg9;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string p0, "Only version 0 parameters are accepted"

    .line 54
    .line 55
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 61
    .line 62
    const-string v0, "Parsing XChaCha20Poly1305Parameters failed: "

    .line 63
    .line 64
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_1
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseParameters: "

    .line 73
    .line 74
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    iget-object p0, p1, Lot9;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Lmz9;

    .line 85
    .line 86
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    :try_start_1
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    sget-object v0, Lf79;->a:Lf79;

    .line 103
    .line 104
    invoke-static {p1, v0}, Lo0a;->u(Lt69;Lf79;)Lo0a;

    .line 105
    .line 106
    .line 107
    move-result-object p1
    :try_end_1
    .catch Lp79; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p1, p0}, Lki9;->a(Lo0a;Lr0a;)Ldi9;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    goto :goto_1

    .line 117
    :catch_1
    move-exception p0

    .line 118
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 119
    .line 120
    const-string v0, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    .line 121
    .line 122
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_2
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string p1, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: "

    .line 131
    .line 132
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    return-object v0

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "This should never happen, if this method was called it means we\'re trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public i(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Ln36;

    .line 2
    .line 3
    return p0
.end method

.method public declared-synchronized k(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance v1, Lek;

    .line 16
    .line 17
    const/4 v2, 0x6

    .line 18
    invoke-direct {v1, p1, v2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    new-instance v6, Lgv7;

    .line 22
    .line 23
    invoke-direct {v6, v1}, Lgv7;-><init>(Lbt3;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/List;

    .line 31
    .line 32
    invoke-static {v1}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-lez v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-le v3, v2, :cond_1

    .line 52
    .line 53
    move-object v5, v1

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    move-object p1, v0

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    move-object v5, v0

    .line 59
    :goto_0
    new-instance v0, Lix;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-direct {v0, p1, v1}, Lix;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    new-instance v8, Lgv7;

    .line 66
    .line 67
    invoke-direct {v8, v0}, Lgv7;-><init>(Lbt3;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Ljx;

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljx;-><init>(I)V

    .line 73
    .line 74
    .line 75
    new-instance v7, Lgv7;

    .line 76
    .line 77
    invoke-direct {v7, v0}, Lgv7;-><init>(Lbt3;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lll1;

    .line 81
    .line 82
    invoke-direct {v0, p2}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 83
    .line 84
    .line 85
    new-instance v3, Lkx;

    .line 86
    .line 87
    move-object v4, p1

    .line 88
    invoke-direct/range {v3 .. v8}, Lkx;-><init>(Ljava/lang/String;Ljava/lang/String;Lgv7;Lgv7;Lgv7;)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Lq98;

    .line 92
    .line 93
    invoke-direct {p1, v0, v3}, Lq98;-><init>(Lf77;Lmt3;)V

    .line 94
    .line 95
    .line 96
    new-instance p2, Lnx;

    .line 97
    .line 98
    invoke-direct {p2, v1}, Lnx;-><init>(I)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Ll77;

    .line 102
    .line 103
    invoke-direct {v0, p1, p2}, Ll77;-><init>(Lf77;Ljava/util/Comparator;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lnu;

    .line 107
    .line 108
    invoke-direct {p1, v2}, Lnu;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0, p1}, Lh77;->A0(Lf77;Lmt3;)Lme3;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    .line 120
    return-object p1

    .line 121
    :cond_2
    :goto_1
    monitor-exit p0

    .line 122
    return-object v0

    .line 123
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    throw p1
.end method

.method public m(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public n(Lpt9;)Lvm4;
    .locals 3

    .line 1
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 13
    .line 14
    sget-object v1, Lf79;->a:Lf79;

    .line 15
    .line 16
    invoke-static {p0, v1}, Lcw9;->u(Lt69;Lf79;)Lcw9;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lcw9;->t()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lsf9;->b()Lju7;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcw9;->z()Lt69;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lt69;->d()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Lju7;->k(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcw9;->y()Liw9;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Liw9;->t()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v1, v2}, Lju7;->j(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lju7;->l()V

    .line 53
    .line 54
    .line 55
    iget-object v2, p1, Lpt9;->e:Lr0a;

    .line 56
    .line 57
    invoke-static {v2}, Lsk9;->a(Lr0a;)Lrf9;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iput-object v2, v1, Lju7;->e:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {v1}, Lju7;->i()Lsf9;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Ls02;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, v2, Ls02;->b:Ljava/lang/Object;

    .line 73
    .line 74
    iput-object v0, v2, Ls02;->c:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object v1, v2, Ls02;->a:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcw9;->z()Lt69;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lt69;->w()[B

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance v1, Lkm8;

    .line 87
    .line 88
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-direct {v1, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, v2, Ls02;->b:Ljava/lang/Object;

    .line 96
    .line 97
    iget-object p0, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 98
    .line 99
    iput-object p0, v2, Ls02;->c:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-virtual {v2}, Ls02;->d()Lhf9;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 107
    .line 108
    const-string p1, "Only version 0 keys are accepted"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    const-string p0, "Parsing AesEaxKey failed"

    .line 115
    .line 116
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_1
    const-string p0, "Wrong type URL in call to AesEaxProtoSerialization.parseKey"

    .line 121
    .line 122
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-object v0
.end method

.method public p(Lbd9;)Lot9;
    .locals 4

    .line 1
    iget p0, p0, Lns0;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Leu9;

    .line 7
    .line 8
    invoke-static {}, Lmz9;->t()Llz9;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lfv9;->x()Lev9;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Liv9;->v()Lhv9;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget v2, p1, Leu9;->b:I

    .line 26
    .line 27
    invoke-virtual {v1}, Lj79;->c()V

    .line 28
    .line 29
    .line 30
    iget-object v3, v1, Lj79;->b:Lk79;

    .line 31
    .line 32
    check-cast v3, Liv9;

    .line 33
    .line 34
    invoke-static {v3, v2}, Liv9;->u(Liv9;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Liv9;

    .line 42
    .line 43
    invoke-virtual {v0}, Lj79;->c()V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 47
    .line 48
    check-cast v2, Lfv9;

    .line 49
    .line 50
    invoke-static {v2, v1}, Lfv9;->w(Lfv9;Liv9;)V

    .line 51
    .line 52
    .line 53
    iget v1, p1, Leu9;->a:I

    .line 54
    .line 55
    invoke-virtual {v0}, Lj79;->c()V

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 59
    .line 60
    check-cast v2, Lfv9;

    .line 61
    .line 62
    invoke-static {v2, v1}, Lfv9;->v(Lfv9;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lfv9;

    .line 70
    .line 71
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Leu9;->c:Ldu9;

    .line 79
    .line 80
    invoke-static {p1}, Lqu9;->b(Ldu9;)Lr0a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lmz9;

    .line 92
    .line 93
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_0
    check-cast p1, Lah9;

    .line 99
    .line 100
    invoke-static {}, Lmz9;->t()Llz9;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lhx9;->u()Lhx9;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p1, Lah9;->a:Lef9;

    .line 121
    .line 122
    invoke-static {p1}, Lpm9;->b(Lef9;)Lr0a;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Lmz9;

    .line 134
    .line 135
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public q()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lns0;->b:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public r(Lul4;F)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lul4;->v()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Lgn4;->b(Lul4;F)Landroid/graphics/PointF;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 v0, 0x3

    .line 14
    if-ne p0, v0, :cond_1

    .line 15
    .line 16
    invoke-static {p1, p2}, Lgn4;->b(Lul4;F)Landroid/graphics/PointF;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    const/4 v0, 0x7

    .line 22
    if-ne p0, v0, :cond_3

    .line 23
    .line 24
    new-instance p0, Landroid/graphics/PointF;

    .line 25
    .line 26
    invoke-virtual {p1}, Lul4;->q()D

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    double-to-float v0, v0

    .line 31
    mul-float/2addr v0, p2

    .line 32
    invoke-virtual {p1}, Lul4;->q()D

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    double-to-float v1, v1

    .line 37
    mul-float/2addr v1, p2

    .line 38
    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1}, Lul4;->m()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lul4;->G()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object p0

    .line 52
    :cond_3
    invoke-static {p0}, Leq3;->t(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, "Cannot convert json to point. Next token is "

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return-object p0
.end method

.method public y(Lai5;)Lch5;
    .locals 2

    .line 1
    new-instance p0, Leq7;

    .line 2
    .line 3
    const-class v0, Landroid/net/Uri;

    .line 4
    .line 5
    const-class v1, Landroid/content/res/AssetFileDescriptor;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lai5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lch5;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Leq7;-><init>(Lch5;I)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public zza(Ljava/lang/Class;)Ld89;
    .locals 2

    .line 1
    const-class p0, Lk79;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lk79;->f(Ljava/lang/Class;)Lk79;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x3

    .line 19
    invoke-virtual {p0, v0}, Lk79;->d(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ld89;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    return-object p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "Unable to get message info for "

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "Unsupported message type: "

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v1
.end method

.method public zzb(Ljava/lang/Class;)Z
    .locals 0

    .line 1
    const-class p0, Lk79;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
