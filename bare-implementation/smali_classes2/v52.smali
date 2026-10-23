.class public final Lv52;
.super Ltb1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final g:Ljh1;

.field public final h:Lbt3;

.field public final i:Lmt3;

.field public final j:Ldd1;

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljh1;)V
    .locals 3

    .line 1
    new-instance v0, Lfj;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lnk;

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    invoke-direct {v1, v2}, Lnk;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lv52;->g:Ljh1;

    .line 18
    .line 19
    iput-object v0, p0, Lv52;->h:Lbt3;

    .line 20
    .line 21
    iput-object v1, p0, Lv52;->i:Lmt3;

    .line 22
    .line 23
    invoke-interface {p1}, Ljh1;->g()Ldd1;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lv52;->j:Ldd1;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "CsClient."

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lv52;->k:Ljava/lang/String;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final b(Lzv1;)Lxh2;
    .locals 1

    .line 1
    new-instance v0, Lw52;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p1}, Lw52;-><init>(Ljh1;Lzv1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final c(Lfo2;)Lno2;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, La62;

    .line 5
    .line 6
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0, p1}, La62;-><init>(Ljh1;Lfo2;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final d(Lrf8;)Lag8;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lg62;

    .line 5
    .line 6
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0, p1}, Lg62;-><init>(Ljh1;Lrf8;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 9

    .line 1
    const-string p1, "deleteTaggedBackups: Deleting folder="

    .line 2
    .line 3
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Luz4;->b(Ljh1;)Lzz4;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "deleteTaggedBackups: "

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v2, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v7, 0x4

    .line 27
    const/4 v8, 0x0

    .line 28
    iget-object v4, p0, Lv52;->k:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return v1

    .line 35
    :cond_0
    iget-object v0, p0, Lv52;->j:Ldd1;

    .line 36
    .line 37
    invoke-virtual {v0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "/"

    .line 46
    .line 47
    invoke-static {v0, v4, v3, v4}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :try_start_0
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 52
    .line 53
    iget-object v4, p0, Lv52;->k:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const/4 v7, 0x4

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1, v0}, Ljh1;->r(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1, v0}, Ljh1;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    move-object p1, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 87
    goto :goto_2

    .line 88
    :goto_1
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0, p1}, Luz4;->d(Ljh1;Ljava/lang/Exception;)Lzz4;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    move-object p1, v0

    .line 99
    :cond_2
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 100
    .line 101
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const/4 v7, 0x4

    .line 110
    const/4 v8, 0x0

    .line 111
    iget-object v4, p0, Lv52;->k:Ljava/lang/String;

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :goto_2
    if-eqz v1, :cond_3

    .line 118
    .line 119
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 120
    .line 121
    const/4 v6, 0x4

    .line 122
    const/4 v7, 0x0

    .line 123
    iget-object v3, p0, Lv52;->k:Ljava/lang/String;

    .line 124
    .line 125
    const-string v4, "deleteTaggedBackups: Successful"

    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    return v1
.end method

.method public final f()Lui1;
    .locals 3

    .line 1
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, ".cls ("

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ")"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v0, v1}, Lv52;->p(Ljava/lang/String;Z)Lui1;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lv52;->j:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lv52;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()Lui1;
    .locals 3

    .line 1
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, ".msg ("

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ")"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v0, v1}, Lv52;->p(Ljava/lang/String;Z)Lui1;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final k()Lui1;
    .locals 2

    .line 1
    const-string v0, ".wal"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv52;->p(Ljava/lang/String;Z)Lui1;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final l()Lui1;
    .locals 2

    .line 1
    const-string v0, ".wfi"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv52;->p(Ljava/lang/String;Z)Lui1;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final m()Ljm1;
    .locals 4

    .line 1
    iget-object v0, p0, Lv52;->i:Lmt3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Exception;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance p0, Lxa1;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lxa1;-><init>(Ljava/lang/Exception;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    iget-object v0, p0, Lv52;->h:Lbt3;

    .line 22
    .line 23
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    sget-object v1, Lqf1;->CASE_SENSITIVE_PATH:Lqf1;

    .line 30
    .line 31
    new-instance v2, Lhj;

    .line 32
    .line 33
    const/16 v3, 0xc

    .line 34
    .line 35
    invoke-direct {v2, p0, v3}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Lwc1;

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    invoke-direct {p0, v3}, Lwc1;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1, v2, p0}, Lk55;->i(Ljava/lang/String;Lqf1;Lmt3;Lqt3;)Ljm1;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public final n()Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;
    .locals 14

    .line 1
    const-string v0, "startCheckAccess()"

    .line 2
    .line 3
    iget-object v1, p0, Lv52;->k:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v0, p0, Lv52;->g:Ljh1;

    .line 10
    .line 11
    invoke-interface {v0}, Ljh1;->k()Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    const-string v3, "startCheckAccess: "

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v4}, Luz4;->b(Ljh1;)Lzz4;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v3, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const/4 v9, 0x4

    .line 40
    const/4 v10, 0x0

    .line 41
    iget-object v6, p0, Lv52;->k:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance p0, Lti1;

    .line 48
    .line 49
    invoke-direct {p0, v4}, Lti1;-><init>(Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_0
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 54
    .line 55
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4}, Lai8;->i(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    const-string p0, "Network not available!"

    .line 66
    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    sget-object p0, Lqi1;->a:Lqi1;

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_1
    invoke-static {}, Lqb1;->m()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_10

    .line 78
    .line 79
    if-eqz v0, :cond_10

    .line 80
    .line 81
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-interface {v0, v4}, Ljh1;->d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    instance-of v4, v0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 91
    .line 92
    if-eqz v4, :cond_6

    .line 93
    .line 94
    const-string v0, "startCheckAccess: Login successful"

    .line 95
    .line 96
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Leh1;->d(Ljh1;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :cond_2
    if-eqz v0, :cond_5

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_3

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    invoke-static {v0}, Lqb1;->s(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :try_start_1
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljh1;->l()Lni1;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljh1;->p()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2}, Lqb1;->q(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v4, Lsi1;

    .line 145
    .line 146
    invoke-direct {v4, v0, v2}, Lsi1;-><init>(Lni1;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .line 148
    .line 149
    return-object v4

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string v2, "startCheckAccess:"

    .line 152
    .line 153
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .line 155
    .line 156
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 157
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const/4 v8, 0x4

    .line 171
    const/4 v9, 0x0

    .line 172
    iget-object v5, p0, Lv52;->k:Ljava/lang/String;

    .line 173
    .line 174
    const/4 v7, 0x0

    .line 175
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v1, v0}, Luz4;->d(Ljh1;Ljava/lang/Exception;)Lzz4;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-eqz v1, :cond_4

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v3, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    const/4 v8, 0x4

    .line 197
    const/4 v9, 0x0

    .line 198
    iget-object v5, p0, Lv52;->k:Ljava/lang/String;

    .line 199
    .line 200
    const/4 v7, 0x0

    .line 201
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    new-instance p0, Lti1;

    .line 205
    .line 206
    invoke-direct {p0, v1}, Lti1;-><init>(Ljava/lang/Exception;)V

    .line 207
    .line 208
    .line 209
    return-object p0

    .line 210
    :cond_4
    new-instance p0, Lti1;

    .line 211
    .line 212
    invoke-direct {p0, v0}, Lti1;-><init>(Ljava/lang/Exception;)V

    .line 213
    .line 214
    .line 215
    return-object p0

    .line 216
    :cond_5
    :goto_0
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 217
    .line 218
    const/4 v5, 0x4

    .line 219
    const/4 v6, 0x0

    .line 220
    iget-object v2, p0, Lv52;->k:Ljava/lang/String;

    .line 221
    .line 222
    const-string v3, "startCheckAccess: Null folder id!"

    .line 223
    .line 224
    const/4 v4, 0x0

    .line 225
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    sget-object p0, Lpi1;->a:Lpi1;

    .line 229
    .line 230
    return-object p0

    .line 231
    :cond_6
    instance-of v1, v0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Failed;

    .line 232
    .line 233
    const/4 v4, 0x0

    .line 234
    if-eqz v1, :cond_8

    .line 235
    .line 236
    new-instance v1, Ljava/lang/Exception;

    .line 237
    .line 238
    const-string v5, "Login failed!"

    .line 239
    .line 240
    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-static {v3, v5}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    const/4 v10, 0x4

    .line 254
    const/4 v11, 0x0

    .line 255
    iget-object v7, p0, Lv52;->k:Ljava/lang/String;

    .line 256
    .line 257
    const/4 v9, 0x0

    .line 258
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;->getE()Ljava/lang/Exception;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    if-eqz v0, :cond_7

    .line 266
    .line 267
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    :cond_7
    const-string v0, "Failed exception = "

    .line 272
    .line 273
    invoke-static {v0, v4}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    const/4 v10, 0x4

    .line 278
    const/4 v11, 0x0

    .line 279
    iget-object v7, p0, Lv52;->k:Ljava/lang/String;

    .line 280
    .line 281
    const/4 v9, 0x0

    .line 282
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-static {}, Lqb1;->a()V

    .line 286
    .line 287
    .line 288
    new-instance p0, Loi1;

    .line 289
    .line 290
    invoke-direct {p0, v1, v2}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 291
    .line 292
    .line 293
    return-object p0

    .line 294
    :cond_8
    instance-of v1, v0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 295
    .line 296
    if-eqz v1, :cond_a

    .line 297
    .line 298
    new-instance v1, Lzf4;

    .line 299
    .line 300
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 301
    .line 302
    .line 303
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 304
    .line 305
    const/4 v9, 0x4

    .line 306
    const/4 v10, 0x0

    .line 307
    iget-object v6, p0, Lv52;->k:Ljava/lang/String;

    .line 308
    .line 309
    const-string v7, "startCheckAccess: Invalid login details!"

    .line 310
    .line 311
    const/4 v8, 0x0

    .line 312
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;->getE()Ljava/lang/Exception;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    if-eqz v0, :cond_9

    .line 320
    .line 321
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    :cond_9
    const-string v0, "InvalidCredentials exception = "

    .line 326
    .line 327
    invoke-static {v0, v4}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    const/4 v9, 0x4

    .line 332
    const/4 v10, 0x0

    .line 333
    iget-object v6, p0, Lv52;->k:Ljava/lang/String;

    .line 334
    .line 335
    const/4 v8, 0x0

    .line 336
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    invoke-static {}, Lqb1;->a()V

    .line 340
    .line 341
    .line 342
    new-instance p0, Loi1;

    .line 343
    .line 344
    invoke-direct {p0, v1, v2}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 345
    .line 346
    .line 347
    return-object p0

    .line 348
    :cond_a
    instance-of v1, v0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UnknownError;

    .line 349
    .line 350
    const-string v5, "Unknown error"

    .line 351
    .line 352
    if-eqz v1, :cond_d

    .line 353
    .line 354
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 355
    .line 356
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;->getE()Ljava/lang/Exception;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    if-eqz v1, :cond_b

    .line 361
    .line 362
    invoke-static {v1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    :cond_b
    invoke-static {v3, v4}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    const/4 v10, 0x4

    .line 371
    const/4 v11, 0x0

    .line 372
    iget-object v7, p0, Lv52;->k:Ljava/lang/String;

    .line 373
    .line 374
    const/4 v9, 0x0

    .line 375
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    invoke-static {}, Lqb1;->a()V

    .line 379
    .line 380
    .line 381
    new-instance p0, Loi1;

    .line 382
    .line 383
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;->getE()Ljava/lang/Exception;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    if-nez v0, :cond_c

    .line 388
    .line 389
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 390
    .line 391
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    :cond_c
    invoke-direct {p0, v0, v2}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 395
    .line 396
    .line 397
    return-object p0

    .line 398
    :cond_d
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;->getE()Ljava/lang/Exception;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    if-nez v0, :cond_e

    .line 403
    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 405
    .line 406
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    :cond_e
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 410
    .line 411
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    const/4 v8, 0x4

    .line 420
    const/4 v9, 0x0

    .line 421
    iget-object v5, p0, Lv52;->k:Ljava/lang/String;

    .line 422
    .line 423
    const/4 v7, 0x0

    .line 424
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-static {v1, v0}, Luz4;->d(Ljh1;Ljava/lang/Exception;)Lzz4;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    if-eqz v1, :cond_f

    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-static {v3, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    const/4 v8, 0x4

    .line 446
    const/4 v9, 0x0

    .line 447
    iget-object v5, p0, Lv52;->k:Ljava/lang/String;

    .line 448
    .line 449
    const/4 v7, 0x0

    .line 450
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    new-instance p0, Lti1;

    .line 454
    .line 455
    invoke-direct {p0, v1}, Lti1;-><init>(Ljava/lang/Exception;)V

    .line 456
    .line 457
    .line 458
    return-object p0

    .line 459
    :cond_f
    new-instance p0, Lti1;

    .line 460
    .line 461
    invoke-direct {p0, v0}, Lti1;-><init>(Ljava/lang/Exception;)V

    .line 462
    .line 463
    .line 464
    return-object p0

    .line 465
    :cond_10
    new-instance v1, Ljava/lang/RuntimeException;

    .line 466
    .line 467
    invoke-static {}, Lqb1;->m()Z

    .line 468
    .line 469
    .line 470
    move-result v4

    .line 471
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    invoke-interface {v5}, Ljh1;->g()Ldd1;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    new-instance v6, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    const-string v7, "isConnected="

    .line 482
    .line 483
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v4, ", validCredentials="

    .line 490
    .line 491
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v0, ". Signing out "

    .line 498
    .line 499
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string v0, "!"

    .line 506
    .line 507
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 518
    .line 519
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-static {v3, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v6

    .line 527
    const/4 v8, 0x4

    .line 528
    const/4 v9, 0x0

    .line 529
    iget-object v5, p0, Lv52;->k:Ljava/lang/String;

    .line 530
    .line 531
    const/4 v7, 0x0

    .line 532
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    invoke-static {}, Lqb1;->a()V

    .line 536
    .line 537
    .line 538
    new-instance p0, Loi1;

    .line 539
    .line 540
    invoke-direct {p0, v1, v2}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 541
    .line 542
    .line 543
    return-object p0

    .line 544
    :catch_1
    move-exception v0

    .line 545
    move-object v6, v0

    .line 546
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 547
    .line 548
    const/16 v8, 0x8

    .line 549
    .line 550
    const/4 v9, 0x0

    .line 551
    iget-object v4, p0, Lv52;->k:Ljava/lang/String;

    .line 552
    .line 553
    const-string v5, "startCheckAccess: Failed loading saved credentials"

    .line 554
    .line 555
    const/4 v7, 0x0

    .line 556
    invoke-static/range {v3 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    :try_start_2
    invoke-static {}, Lqb1;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 560
    .line 561
    .line 562
    goto :goto_1

    .line 563
    :catch_2
    move-exception v0

    .line 564
    move-object v10, v0

    .line 565
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 566
    .line 567
    const/16 v12, 0x8

    .line 568
    .line 569
    const/4 v13, 0x0

    .line 570
    iget-object v8, p0, Lv52;->k:Ljava/lang/String;

    .line 571
    .line 572
    const-string v9, "startCheckAccess: Failed clearing cloud prefs after credential load failure"

    .line 573
    .line 574
    const/4 v11, 0x0

    .line 575
    invoke-static/range {v7 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    :goto_1
    new-instance p0, Loi1;

    .line 579
    .line 580
    invoke-direct {p0, v6, v2}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 581
    .line 582
    .line 583
    return-object p0
.end method

.method public final o()Ljh1;
    .locals 9

    .line 1
    iget-object v1, p0, Lv52;->g:Ljh1;

    .line 2
    .line 3
    invoke-interface {v1}, Ljh1;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Ljh1;->i()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-interface {v1}, Ljh1;->k()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    move-object v5, v0

    .line 21
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 22
    .line 23
    const/16 v7, 0x8

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    iget-object v3, p0, Lv52;->k:Ljava/lang/String;

    .line 27
    .line 28
    const-string v4, "service: Failed loading saved credentials"

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-object v1
.end method

.method public final p(Ljava/lang/String;Z)Lui1;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Luz4;->b(Ljh1;)Lzz4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "search: "

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v1, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x4

    .line 24
    const/4 v7, 0x0

    .line 25
    iget-object v3, p0, Lv52;->k:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Lui1;

    .line 32
    .line 33
    sget-object p1, Lov2;->a:Lov2;

    .line 34
    .line 35
    invoke-direct {p0, v0, p1}, Lui1;-><init>(Ljava/lang/Exception;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lv52;->j:Ldd1;

    .line 45
    .line 46
    invoke-virtual {v0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v3, "/"

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    :try_start_0
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    move-object p2, v0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-interface {p2, v0}, Ljh1;->s(Ljava/lang/String;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    const/4 p2, 0x0

    .line 92
    goto :goto_2

    .line 93
    :goto_1
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 94
    .line 95
    invoke-static {p2}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const/4 v8, 0x4

    .line 104
    const/4 v9, 0x0

    .line 105
    iget-object v5, p0, Lv52;->k:Ljava/lang/String;

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lv52;->o()Ljh1;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0, p2}, Luz4;->d(Ljh1;Ljava/lang/Exception;)Lzz4;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    move-object p2, v0

    .line 122
    :cond_2
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_4

    .line 136
    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    move-object v6, v5

    .line 142
    check-cast v6, Lpg1;

    .line 143
    .line 144
    iget-object v6, v6, Lpg1;->a:Ljava/lang/String;

    .line 145
    .line 146
    const/4 v7, 0x0

    .line 147
    invoke-static {v6, p1, v7}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_3

    .line 152
    .line 153
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    const-string v4, " valid drive files found"

    .line 166
    .line 167
    invoke-static {v1, p1, v3, v4, v2}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object p0, p0, Lv52;->k:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    new-instance p0, Lui1;

    .line 177
    .line 178
    invoke-direct {p0, p2, v0}, Lui1;-><init>(Ljava/lang/Exception;Ljava/util/List;)V

    .line 179
    .line 180
    .line 181
    return-object p0
.end method
