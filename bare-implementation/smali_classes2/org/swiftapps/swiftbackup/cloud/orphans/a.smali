.class public final Lorg/swiftapps/swiftbackup/cloud/orphans/a;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;
    }
.end annotation


# instance fields
.field public final e:Lex6;

.field public final f:Lix6;

.field public g:Lorg/swiftapps/swiftbackup/cloud/orphans/b;

.field public h:Lkc;

.field public i:Ljava/lang/String;

.field public j:Lqh4;

.field public k:J

.field public l:Ljava/lang/Long;

.field public m:J

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->e:Lex6;

    .line 10
    .line 11
    new-instance v0, Lix6;

    .line 12
    .line 13
    invoke-direct {v0}, Lix6;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->f:Lix6;

    .line 17
    .line 18
    return-void
.end method

.method public static final j(Lpe4;Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V
    .locals 1

    .line 1
    sget-object v0, Lgi1;->m:Lgi1;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lnk;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lnk;-><init>(Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->s(Lmt3;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    instance-of v0, p0, Lhi1;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lhj;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lhj;-><init>(Lpe4;Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->s(Lmt3;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    instance-of v0, p0, Lii1;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    new-instance v0, Lox;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1}, Lox;-><init>(Lpe4;Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->s(Lmt3;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static final k(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLqh4;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->l:Ljava/lang/Long;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    cmp-long p1, v0, p1

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->j:Lqh4;

    .line 16
    .line 17
    if-ne p1, p3, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->l:Ljava/lang/Long;

    .line 21
    .line 22
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->j:Lqh4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    monitor-exit p0

    .line 28
    sget-object p0, Lbe8;->a:Lbe8;

    .line 29
    .line 30
    invoke-virtual {p3, p0}, Lci4;->G(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit p0

    .line 35
    throw p1
.end method

.method public static final l(Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;Lbt3;Lkv1;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p5, Lyh1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lyh1;

    .line 7
    .line 8
    iget v1, v0, Lyh1;->d:I

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
    iput v1, v0, Lyh1;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lyh1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lyh1;-><init>(Lorg/swiftapps/swiftbackup/cloud/orphans/a;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lyh1;->b:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lyh1;->d:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lyh1;->a:Lih6;

    .line 35
    .line 36
    invoke-static {p5}, Llg7;->H(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p5}, Llg7;->H(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Lih6;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    sget-object p5, Lzn4;->a:Lzn4;

    .line 56
    .line 57
    new-instance v3, Lrh1;

    .line 58
    .line 59
    move-object v5, p0

    .line 60
    move-wide v6, p1

    .line 61
    move-object v8, p3

    .line 62
    move-object v9, p4

    .line 63
    invoke-direct/range {v3 .. v9}, Lrh1;-><init>(Lih6;Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;Lbt3;)V

    .line 64
    .line 65
    .line 66
    iput-object v4, v0, Lyh1;->a:Lih6;

    .line 67
    .line 68
    iput v2, v0, Lyh1;->d:I

    .line 69
    .line 70
    invoke-static {v3, v0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    sget-object p1, Lyx1;->a:Lyx1;

    .line 75
    .line 76
    if-ne p0, p1, :cond_3

    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_3
    move-object p0, v4

    .line 80
    :goto_1
    iget-boolean p0, p0, Lih6;->a:Z

    .line 81
    .line 82
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method

.method public static n(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;
    .locals 15

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v7

    .line 7
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v7, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v3, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/a;->b(Ldd1;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2, v0, v3}, Lvm4;->i(Ldd1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Lki1;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v0, v1

    .line 33
    :goto_0
    const v3, 0x7f1303c5

    .line 34
    .line 35
    .line 36
    if-eqz v7, :cond_2

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v4, v0, Lki1;->a:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    :cond_1
    invoke-virtual {v2}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 50
    .line 51
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :cond_3
    :goto_1
    if-eqz v7, :cond_5

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iget v5, v0, Lki1;->b:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    invoke-virtual {v2}, Ldd1;->getBrandingIconRes()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    goto :goto_2

    .line 67
    :cond_5
    const v5, 0x7f080117

    .line 68
    .line 69
    .line 70
    :goto_2
    if-eqz v0, :cond_6

    .line 71
    .line 72
    iget-boolean v0, v0, Lki1;->c:Z

    .line 73
    .line 74
    :goto_3
    move v6, v0

    .line 75
    goto :goto_4

    .line 76
    :cond_6
    const/4 v0, 0x0

    .line 77
    goto :goto_3

    .line 78
    :goto_4
    if-eqz v7, :cond_a

    .line 79
    .line 80
    :try_start_0
    invoke-static {}, Lqb1;->g()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    goto :goto_5

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    new-instance v8, Lbn6;

    .line 87
    .line 88
    invoke-direct {v8, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    move-object v0, v8

    .line 92
    :goto_5
    nop

    .line 93
    instance-of v8, v0, Lbn6;

    .line 94
    .line 95
    if-eqz v8, :cond_7

    .line 96
    .line 97
    move-object v0, v1

    .line 98
    :cond_7
    check-cast v0, Ljava/lang/String;

    .line 99
    .line 100
    if-eqz v0, :cond_9

    .line 101
    .line 102
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-nez v8, :cond_8

    .line 107
    .line 108
    move-object v1, v0

    .line 109
    :cond_8
    if-eqz v1, :cond_9

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 113
    .line 114
    const v0, 0x7f1301b9

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    goto :goto_6

    .line 122
    :cond_a
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 123
    .line 124
    const v0, 0x7f1301b5

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    :goto_6
    sget-object v9, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->IDLE:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 132
    .line 133
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 134
    .line 135
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v7, :cond_b

    .line 140
    .line 141
    const v3, 0x7f13017c

    .line 142
    .line 143
    .line 144
    :cond_b
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    move-object v3, v4

    .line 149
    move v4, v5

    .line 150
    move v5, v6

    .line 151
    move-object v6, v1

    .line 152
    new-instance v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 153
    .line 154
    const/4 v13, 0x0

    .line 155
    const/4 v14, 0x0

    .line 156
    sget-object v10, Lov2;->a:Lov2;

    .line 157
    .line 158
    sget-object v11, Lsv2;->a:Lsv2;

    .line 159
    .line 160
    move-object v8, p0

    .line 161
    invoke-direct/range {v1 .. v14}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;-><init>(Ldd1;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;II)V

    .line 162
    .line 163
    .line 164
    return-object v1
.end method

.method public static o()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    :try_start_0
    const-string v0, "CloudOrphanCleanerVM"

    .line 15
    .line 16
    sget-object v4, Lre3;->a:Lzc2;

    .line 17
    .line 18
    invoke-static {v0}, Lqb1;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lre3;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    new-instance v4, Lbn6;

    .line 29
    .line 30
    invoke-direct {v4, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    move-object v0, v4

    .line 34
    :goto_0
    nop

    .line 35
    instance-of v4, v0, Lbn6;

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    move-object v0, v3

    .line 40
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    :try_start_1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 45
    .line 46
    invoke-static {}, Lqb1;->g()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    new-instance v4, Lbn6;

    .line 53
    .line 54
    invoke-direct {v4, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    move-object v0, v4

    .line 58
    :goto_1
    nop

    .line 59
    instance-of v4, v0, Lbn6;

    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    move-object v0, v3

    .line 64
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 65
    .line 66
    :cond_2
    move-object v4, v0

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move-object v4, v3

    .line 69
    :goto_2
    if-eqz v1, :cond_4

    .line 70
    .line 71
    sget-object v0, Ltb1;->a:Ltb1;

    .line 72
    .line 73
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_4
    :try_start_2
    sget-object v0, Ltb1;->a:Ltb1;

    .line 78
    .line 79
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    goto :goto_3

    .line 92
    :catchall_2
    move-exception v0

    .line 93
    new-instance v5, Lbn6;

    .line 94
    .line 95
    invoke-direct {v5, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    move-object v0, v5

    .line 99
    :goto_3
    const/4 v5, 0x0

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    instance-of v6, v0, Lbn6;

    .line 105
    .line 106
    if-eqz v6, :cond_5

    .line 107
    .line 108
    move-object v0, v5

    .line 109
    :cond_5
    check-cast v0, Ljava/lang/Number;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v2}, Ldd1;->getConstant()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const-string v5, ""

    .line 124
    .line 125
    if-nez v4, :cond_6

    .line 126
    .line 127
    move-object v4, v5

    .line 128
    :cond_6
    if-nez v3, :cond_7

    .line 129
    .line 130
    move-object v3, v5

    .line 131
    :cond_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    filled-new-array {v1, v2, v4, v3, v0}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const/4 v5, 0x0

    .line 144
    const/16 v6, 0x3e

    .line 145
    .line 146
    const-string v2, "\u0000"

    .line 147
    .line 148
    const/4 v3, 0x0

    .line 149
    const/4 v4, 0x0

    .line 150
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->l:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->j:Lqh4;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->j:Lqh4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, La55;->b()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public final declared-synchronized m()Lpw5;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->k:J

    .line 3
    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->k:J

    .line 8
    .line 9
    new-instance v2, Lqh4;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, v3}, Lqh4;-><init>(Loh4;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iput-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->l:Ljava/lang/Long;

    .line 20
    .line 21
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->j:Lqh4;

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lpw5;

    .line 28
    .line 29
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-object v1

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v0
.end method

.method public final p(Lorg/swiftapps/swiftbackup/cloud/orphans/b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->h:Lkc;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->i:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->g:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->g:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->o()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->n:Ljava/lang/String;

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final declared-synchronized q()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->g:Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 3
    .line 4
    invoke-static {}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->o()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->r(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->g:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->n:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-wide/16 v2, 0x1

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->n:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-wide v4, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 48
    .line 49
    add-long/2addr v4, v2

    .line 50
    iput-wide v4, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 51
    .line 52
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->n:Ljava/lang/String;

    .line 53
    .line 54
    :cond_2
    new-instance v0, Lpx;

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    invoke-direct {v0, p0, v1}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->s(Lmt3;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :cond_3
    :try_start_3
    iget-wide v4, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 66
    .line 67
    add-long/2addr v4, v2

    .line 68
    iput-wide v4, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->r(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    throw v0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->n:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->h:Lkc;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->i:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->n(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->t(Lorg/swiftapps/swiftbackup/cloud/orphans/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final declared-synchronized s(Lmt3;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->g:Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->t(Lorg/swiftapps/swiftbackup/cloud/orphans/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    const-string p1, "Required value was null."

    .line 20
    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public final declared-synchronized t(Lorg/swiftapps/swiftbackup/cloud/orphans/b;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->g:Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->e:Lex6;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lex6;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method
