.class public final Lov5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljh1;


# instance fields
.field public a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

.field public final b:Ldd1;

.field public c:Lmv5;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 5
    .line 6
    const/16 v5, 0xf

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct/range {v0 .. v6}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lov5;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 17
    .line 18
    sget-object v0, Ldd1;->PCloud:Ldd1;

    .line 19
    .line 20
    iput-object v0, p0, Lov5;->b:Ldd1;

    .line 21
    .line 22
    return-void
.end method

.method public static w(Ljava/lang/String;)Z
    .locals 6

    .line 1
    sget-char v0, Lmc3;->a:C

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    const/16 v4, 0x5c

    .line 7
    .line 8
    if-ne v0, v4, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sget-char v5, Lmc3;->b:C

    .line 15
    .line 16
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-ne v0, v3, :cond_1

    .line 21
    .line 22
    if-ne v5, v3, :cond_0

    .line 23
    .line 24
    move v5, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/2addr v5, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    if-ne v5, v3, :cond_2

    .line 29
    .line 30
    :goto_0
    add-int/lit8 v5, v0, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    const/16 v0, 0x3a

    .line 39
    .line 40
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ne v0, v3, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    const-string p0, "NTFS ADS separator (\':\') in file name is forbidden."

    .line 48
    .line 49
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v1

    .line 53
    :cond_4
    :goto_2
    const/16 v0, 0x2e

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v5, 0x2f

    .line 60
    .line 61
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-le v4, v0, :cond_5

    .line 74
    .line 75
    move v0, v3

    .line 76
    :cond_5
    if-ne v0, v3, :cond_6

    .line 77
    .line 78
    const-string p0, ""

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    add-int/2addr v0, v2

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_7

    .line 91
    .line 92
    move v1, v2

    .line 93
    :cond_7
    xor-int/lit8 p0, v1, 0x1

    .line 94
    .line 95
    return p0
.end method

.method public static x(Ljava/lang/Exception;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lqe;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lqe;

    .line 6
    .line 7
    iget p0, p0, Lqe;->a:I

    .line 8
    .line 9
    const/16 v0, 0x807

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x7d5

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v1, "move"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lov5;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p2}, Lov5;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Llv5;

    .line 12
    .line 13
    invoke-direct {v3, p0, p2, v2, v0}, Llv5;-><init>(Lov5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    const/4 v0, 0x0

    .line 18
    move v2, v0

    .line 19
    :goto_0
    const/4 v0, 0x5

    .line 20
    if-ge v2, v0, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v3}, Llv5;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    move-object p0, v0

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-eqz p0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "Failed action with tag="

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " after retries="

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :catch_1
    move-exception v0

    .line 63
    move-object p0, v0

    .line 64
    const-string v0, "move: Error while moving file from path="

    .line 65
    .line 66
    const-string v1, " to newPath="

    .line 67
    .line 68
    invoke-static {v0, p1, v1, p2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string p2, "PCloudService"

    .line 73
    .line 74
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 78
    .line 79
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string p2, ": "

    .line 84
    .line 85
    invoke-static {p1, p2, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const/4 v4, 0x4

    .line 90
    const/4 v5, 0x0

    .line 91
    const-string v1, "PCloudService"

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final B(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    new-array p0, p0, [C

    .line 6
    .line 7
    const/16 v0, 0x2f

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-char v0, p0, v1

    .line 11
    .line 12
    invoke-static {p1, p0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "/"

    .line 17
    .line 18
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;Lt15;)Ltc4;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v1, Lw01;

    .line 5
    .line 6
    const/16 v0, 0xd

    .line 7
    .line 8
    invoke-direct {v1, v0, p0, p1}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    move v2, p0

    .line 13
    :goto_0
    const/4 v0, 0x4

    .line 14
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v1}, Lw01;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    :try_start_2
    check-cast v1, Luf6;

    .line 21
    .line 22
    sget-object v2, Ltb1;->a:Ltb1;

    .line 23
    .line 24
    iget-object v1, v1, Luf6;->b:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/net/URL;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p2}, Lqb1;->k(Ljava/lang/String;Lt15;)Lokhttp3/Response;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object p0, v3, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 44
    .line 45
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-instance p2, Ltc4;

    .line 50
    .line 51
    new-instance v1, Lji1;

    .line 52
    .line 53
    const-class v4, Lokhttp3/Response;

    .line 54
    .line 55
    const-string v5, "close"

    .line 56
    .line 57
    const-string v6, "close()V"

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x3

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-direct/range {v1 .. v8}, Lji1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, p0, v1, v0}, Ltc4;-><init>(Ljava/io/InputStream;Lbt3;I)V

    .line 66
    .line 67
    .line 68
    return-object p2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    move-object p0, v0

    .line 71
    goto :goto_1

    .line 72
    :catch_1
    move-exception v0

    .line 73
    instance-of v3, v0, Lqe;

    .line 74
    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    move-object v3, v0

    .line 78
    check-cast v3, Lqe;

    .line 79
    .line 80
    iget v3, v3, Lqe;->a:I

    .line 81
    .line 82
    const/16 v4, 0x7d9

    .line 83
    .line 84
    if-ne v3, v4, :cond_0

    .line 85
    .line 86
    const/4 v3, 0x3

    .line 87
    if-eq v2, v3, :cond_0

    .line 88
    .line 89
    const-wide/16 v3, 0x1f4

    .line 90
    .line 91
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    throw v0

    .line 98
    :cond_1
    const-string p0, "Unreachable retry state"

    .line 99
    .line 100
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    :goto_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 107
    .line 108
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    const-string v1, "get: Error when calling get(path: \'"

    .line 113
    .line 114
    const-string v2, "\'): "

    .line 115
    .line 116
    invoke-static {v1, p1, v2, p2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const/4 v4, 0x4

    .line 121
    const/4 v5, 0x0

    .line 122
    const-string v1, "PCloudService"

    .line 123
    .line 124
    const/4 v3, 0x0

    .line 125
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method public final d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lov5;->z()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final e(Lc62;Ljava/lang/String;JLcz;)V
    .locals 13

    .line 1
    const/4 v1, 0x1

    .line 2
    new-array v2, v1, [C

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    const/16 v4, 0x2f

    .line 6
    .line 7
    aput-char v4, v2, v3

    .line 8
    .line 9
    invoke-static {p2, v2}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v5, ""

    .line 14
    .line 15
    invoke-static {v4, v2, v5}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v6, ".tmp"

    .line 20
    .line 21
    invoke-virtual {p2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    :try_start_0
    new-array v7, v1, [C

    .line 26
    .line 27
    aput-char v4, v7, v3

    .line 28
    .line 29
    invoke-static {v6, v7}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-static {v4, v7, v5}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-lez v7, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v5}, Lov5;->t(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    new-instance v10, Lnv5;

    .line 47
    .line 48
    move-wide/from16 v7, p3

    .line 49
    .line 50
    invoke-direct {v10, v7, v8, p1}, Lnv5;-><init>(JLc62;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-virtual {p0}, Lov5;->u()Lpe;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, v2}, Lov5;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-static {v6, v4}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-array v1, v1, [C

    .line 66
    .line 67
    aput-char v4, v1, v3

    .line 68
    .line 69
    invoke-static {v2, v1}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    new-instance v11, Ljava/util/Date;

    .line 74
    .line 75
    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v12, Le11;

    .line 79
    .line 80
    const/4 v1, 0x4

    .line 81
    move-object/from16 v2, p5

    .line 82
    .line 83
    invoke-direct {v12, v2, v1}, Le11;-><init>(Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    move-object v7, p1

    .line 87
    check-cast v7, Lcom/pcloud/sdk/internal/a;

    .line 88
    .line 89
    invoke-virtual/range {v7 .. v12}, Lcom/pcloud/sdk/internal/a;->a(Ljava/lang/String;Ljava/lang/String;Lnv5;Ljava/util/Date;Le11;)Lks5;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lks5;->a()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Laj6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    :try_start_2
    invoke-virtual {v10}, Lnv5;->close()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v6, p2}, Lov5;->A(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    move-object p1, v0

    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    move-object p1, v0

    .line 111
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    :try_start_4
    invoke-static {v10, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 117
    :goto_0
    invoke-virtual {p0, v6}, Lov5;->j(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 121
    .line 122
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    const-string v1, "put: "

    .line 127
    .line 128
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    const/4 v4, 0x4

    .line 133
    const/4 v5, 0x0

    .line 134
    const-string v1, "PCloudService"

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method

.method public final f(Ljava/lang/String;)Lpg1;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-array v0, v0, [C

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x2f

    .line 10
    .line 11
    aput-char v3, v0, v2

    .line 12
    .line 13
    invoke-static {p1, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-static {v3, v0, v2}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    :try_start_1
    invoke-virtual {p0, p1}, Lov5;->v(Ljava/lang/String;)Lzi6;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    move-object p0, v0

    .line 30
    :try_start_2
    invoke-static {p0}, Lov5;->x(Ljava/lang/Exception;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    move-object p0, v1

    .line 37
    :goto_0
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-static {p0, v2}, Log1;->d(Lzi6;Ljava/lang/String;)Lpg1;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :catch_1
    move-exception v0

    .line 45
    move-object p0, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    return-object v1

    .line 48
    :cond_1
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 49
    :goto_1
    const-string v0, "getFile: Error while getting file at path="

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "PCloudService"

    .line 56
    .line 57
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 61
    .line 62
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string v0, ": "

    .line 67
    .line 68
    invoke-static {p1, v0, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const/4 v6, 0x4

    .line 73
    const/4 v7, 0x0

    .line 74
    const-string v3, "PCloudService"

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-object v1
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lov5;->b:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized h(Ljava/lang/String;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    const-string v2, "createDirectory"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {p0, p1}, Lov5;->t(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    move-object p1, v0

    .line 13
    goto :goto_1

    .line 14
    :catch_0
    move-exception v0

    .line 15
    move-object v3, v0

    .line 16
    :try_start_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    const-string v1, "PCloudService"

    .line 19
    .line 20
    const/16 v5, 0x8

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    .line 27
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    throw p1
.end method

.method public final i()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->Companion:Li58;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lov5;->b:Ldd1;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Li58;->a(Ldd1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const-string p0, "prefs"

    .line 25
    .line 26
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "Deleting "

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lov5;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "PCloudService"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lov5;->w(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lov5;->u()Lpe;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/pcloud/sdk/internal/a;->c(Ljava/lang/String;)Lks5;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lks5;->a()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Boolean;

    .line 40
    .line 41
    return-void

    .line 42
    :goto_0
    move-object v3, p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lov5;->u()Lpe;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/pcloud/sdk/internal/a;->d(Ljava/lang/String;)Lks5;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lks5;->a()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    move-object p0, v0

    .line 63
    goto :goto_0

    .line 64
    :goto_1
    invoke-static {v3}, Lov5;->x(Ljava/lang/Exception;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_1

    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 72
    .line 73
    const/16 v5, 0x8

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    const-string v1, "PCloudService"

    .line 77
    .line 78
    const-string v2, "delete"

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->Companion:Li58;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lov5;->b:Ldd1;

    .line 7
    .line 8
    invoke-static {v0}, Li58;->b(Ldd1;)Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lov5;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getToken()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-lez p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final l()Lni1;
    .locals 9

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    const-string v4, "getUserInfo"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    .line 4
    :try_start_1
    invoke-virtual {p0}, Lov5;->u()Lpe;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/pcloud/sdk/internal/a;->g()Lks5;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lks5;->a()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lwf6;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    move-object p0, v0

    .line 23
    move-object v5, p0

    .line 24
    :try_start_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 25
    .line 26
    const-string v3, "PCloudService"

    .line 27
    .line 28
    const/16 v7, 0x8

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object p0, v1

    .line 36
    :goto_0
    if-eqz p0, :cond_0

    .line 37
    .line 38
    iget-wide v2, p0, Lwf6;->e:J

    .line 39
    .line 40
    iget-wide v4, p0, Lwf6;->d:J

    .line 41
    .line 42
    new-instance p0, Lni1;

    .line 43
    .line 44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {p0, v0, v2}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catch_1
    move-exception v0

    .line 57
    move-object p0, v0

    .line 58
    move-object v5, p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 61
    .line 62
    const-string v0, "Unable to get user info"

    .line 63
    .line 64
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 68
    :goto_1
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 69
    .line 70
    const/16 v7, 0x8

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    const-string v3, "PCloudService"

    .line 74
    .line 75
    const-string v4, "getQuota"

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-instance p0, Lni1;

    .line 82
    .line 83
    invoke-direct {p0, v1, v1}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    return-object p0
.end method

.method public final m()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lov5;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "PCloudService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lih1;
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lov5;->v(Ljava/lang/String;)Lzi6;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lih1;->Exists:Lih1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    return-object p0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    move-object p0, v0

    .line 9
    move-object v3, p0

    .line 10
    invoke-static {v3}, Lov5;->x(Ljava/lang/Exception;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    sget-object p0, Lih1;->Missing:Lih1;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 20
    .line 21
    const-string p0, "getMetadataPathExistence: Unable to check metadata path="

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/16 v5, 0x8

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const-string v1, "PCloudService"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lih1;->Unknown:Lih1;

    .line 37
    .line 38
    :goto_0
    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lov5;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getEmailAddressValue()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lhh1;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lgh1;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lov5;->y(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0}, Lgh1;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    move-object p0, v0

    .line 16
    invoke-static {p0}, Lov5;->x(Ljava/lang/Exception;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p0, Lgh1;

    .line 23
    .line 24
    sget-object p1, Lov2;->a:Lov2;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lgh1;-><init>(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "PCloudService"

    .line 31
    .line 32
    const-string v0, "listMetadataDirectory"

    .line 33
    .line 34
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 38
    .line 39
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "listMetadataDirectory: "

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v5, 0x4

    .line 50
    const/4 v6, 0x0

    .line 51
    const-string v2, "PCloudService"

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lfh1;->a:Lfh1;

    .line 58
    .line 59
    :goto_0
    return-object p0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lov5;->v(Ljava/lang/String;)Lzi6;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    move-object p0, v0

    .line 11
    :try_start_1
    invoke-static {p0}, Lov5;->x(Ljava/lang/Exception;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :goto_0
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    :catch_1
    move-exception v0

    .line 24
    move-object p0, v0

    .line 25
    move-object v3, p0

    .line 26
    invoke-static {v3}, Lov5;->x(Ljava/lang/Exception;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 33
    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v1, "PCloudService"

    .line 38
    .line 39
    const-string v2, "exists"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method public final s(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lov5;->y(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    move-object p0, v0

    .line 11
    invoke-static {p0}, Lov5;->x(Ljava/lang/Exception;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "PCloudService"

    .line 18
    .line 19
    const-string v0, "list"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 25
    .line 26
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "list: "

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v5, 0x4

    .line 37
    const/4 v6, 0x0

    .line 38
    const-string v2, "PCloudService"

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    sget-object p0, Lov2;->a:Lov2;

    .line 45
    .line 46
    return-object p0
.end method

.method public final declared-synchronized t(Ljava/lang/String;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lov5;->v(Ljava/lang/String;)Lzi6;

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v1

    .line 9
    :try_start_1
    invoke-static {v1}, Lov5;->x(Ljava/lang/Exception;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_7

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    :goto_0
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Lzi6;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    if-ne v1, v3, :cond_0

    .line 25
    .line 26
    move v1, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_1
    if-eqz v1, :cond_1

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :cond_1
    :try_start_2
    new-array v1, v3, [C

    .line 34
    .line 35
    const/16 v4, 0x2f

    .line 36
    .line 37
    aput-char v4, v1, v2

    .line 38
    .line 39
    const/4 v4, 0x6

    .line 40
    invoke-static {p1, v1, v4}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-le v4, v3, :cond_5

    .line 49
    .line 50
    const-string p1, ""

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_6

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/String;

    .line 67
    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, "/"

    .line 77
    .line 78
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    invoke-virtual {p0, p1}, Lov5;->v(Ljava/lang/String;)Lzi6;

    .line 89
    .line 90
    .line 91
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    goto :goto_3

    .line 93
    :catch_1
    move-exception v4

    .line 94
    :try_start_4
    invoke-static {v4}, Lov5;->x(Ljava/lang/Exception;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    move-object v4, v0

    .line 101
    :goto_3
    if-eqz v4, :cond_2

    .line 102
    .line 103
    invoke-interface {v4}, Lzi6;->b()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-ne v4, v3, :cond_2

    .line 108
    .line 109
    move v4, v3

    .line 110
    goto :goto_4

    .line 111
    :cond_2
    move v4, v2

    .line 112
    :goto_4
    if-eqz v4, :cond_3

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual {p0, p1}, Lov5;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {p0}, Lov5;->u()Lpe;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Lcom/pcloud/sdk/internal/a;

    .line 124
    .line 125
    invoke-virtual {v5, v4}, Lcom/pcloud/sdk/internal/a;->b(Ljava/lang/String;)Lks5;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Lks5;->a()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catchall_0
    move-exception p1

    .line 134
    goto :goto_5

    .line 135
    :cond_4
    throw v4

    .line 136
    :cond_5
    invoke-virtual {p0, p1}, Lov5;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0}, Lov5;->u()Lpe;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lcom/pcloud/sdk/internal/a;

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Lcom/pcloud/sdk/internal/a;->b(Ljava/lang/String;)Lks5;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lks5;->a()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    .line 152
    .line 153
    :cond_6
    monitor-exit p0

    .line 154
    return-void

    .line 155
    :cond_7
    :try_start_5
    throw v1

    .line 156
    :goto_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    throw p1
.end method

.method public final u()Lpe;
    .locals 6

    .line 1
    iget-object v0, p0, Lov5;->c:Lmv5;

    .line 2
    .line 3
    new-instance v1, Lmv5;

    .line 4
    .line 5
    iget-object v2, p0, Lov5;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 6
    .line 7
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "pcloud_api_host"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v3, "prefs"

    .line 24
    .line 25
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    :goto_0
    if-nez v4, :cond_1

    .line 30
    .line 31
    const-string v4, "api.pcloud.com"

    .line 32
    .line 33
    :cond_1
    invoke-direct {v1, v2, v4}, Lmv5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget-object p0, v0, Lmv5;->c:Lgv7;

    .line 43
    .line 44
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    check-cast p0, Lpe;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_2
    const-string v0, "PCloudService"

    .line 55
    .line 56
    const-string v2, "Generated new pCloud client"

    .line 57
    .line 58
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lov5;->c:Lmv5;

    .line 62
    .line 63
    iget-object p0, v1, Lmv5;->c:Lgv7;

    .line 64
    .line 65
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    check-cast p0, Lpe;

    .line 73
    .line 74
    return-object p0
.end method

.method public final v(Ljava/lang/String;)Lzi6;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lov5;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lov5;->w(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "path"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lov5;->u()Lpe;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 19
    .line 20
    invoke-static {p1, v2}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 24
    .line 25
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "stat"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/pcloud/sdk/internal/a;->i()Lokhttp3/Request$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p1, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 46
    .line 47
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lokhttp3/Request;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lsn1;

    .line 56
    .line 57
    const/4 v1, 0x6

    .line 58
    invoke-direct {p1, p0, v1}, Lsn1;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/pcloud/sdk/internal/a;->h(Lokhttp3/Request;Lhm6;)Lks5;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lks5;->a()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Laj6;

    .line 70
    .line 71
    invoke-interface {p0}, Lzi6;->c()Laj6;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lov5;->u()Lpe;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 81
    .line 82
    invoke-static {p1, v2}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 86
    .line 87
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v2, "listfolder"

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string p1, "nofiles"

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, p1, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/pcloud/sdk/internal/a;->i()Lokhttp3/Request$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p1, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 118
    .line 119
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lokhttp3/Request;

    .line 123
    .line 124
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 125
    .line 126
    .line 127
    new-instance p1, Lnb;

    .line 128
    .line 129
    invoke-direct {p1, p0, v1}, Lnb;-><init>(Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v0, p1}, Lcom/pcloud/sdk/internal/a;->h(Lokhttp3/Request;Lhm6;)Lks5;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lks5;->a()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Lbj6;

    .line 141
    .line 142
    check-cast p0, Lcom/pcloud/sdk/internal/d;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    return-object p0
.end method

.method public final y(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lov5;->u()Lpe;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lov5;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast v0, Lcom/pcloud/sdk/internal/a;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v1}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 16
    .line 17
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "listfolder"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "path"

    .line 27
    .line 28
    invoke-virtual {v1, v2, p0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/pcloud/sdk/internal/a;->i()Lokhttp3/Request$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 40
    .line 41
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->b()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lokhttp3/Request;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 47
    .line 48
    .line 49
    new-instance p0, Lcb;

    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcb;-><init>(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, p0}, Lcom/pcloud/sdk/internal/a;->h(Lokhttp3/Request;Lhm6;)Lks5;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lks5;->a()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lbj6;

    .line 63
    .line 64
    check-cast p0, Lcom/pcloud/sdk/internal/d;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/pcloud/sdk/internal/d;->g()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    const/16 v1, 0xa

    .line 76
    .line 77
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    .line 94
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lzi6;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {v1, p1}, Log1;->d(Lzi6;Ljava/lang/String;)Lpg1;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    return-object v0
.end method

.method public final z()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    .locals 9

    .line 1
    const-string v1, "pcloud_api_host"

    .line 2
    .line 3
    iget-object v0, p0, Lov5;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getToken()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lov5;->u()Lpe;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/pcloud/sdk/internal/a;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/pcloud/sdk/internal/a;->g()Lks5;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lks5;->a()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 32
    .line 33
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    move-object v5, v0

    .line 39
    nop

    .line 40
    instance-of v0, v5, Lqe;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    move-object v0, v5

    .line 45
    check-cast v0, Lqe;

    .line 46
    .line 47
    iget v0, v0, Lqe;->a:I

    .line 48
    .line 49
    const/16 v2, 0x82e

    .line 50
    .line 51
    if-ne v0, v2, :cond_5

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    :try_start_1
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v2, "prefs"

    .line 64
    .line 65
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :catch_1
    move-object v2, v0

    .line 70
    :goto_0
    const-string v3, "api.pcloud.com"

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    move-object v2, v3

    .line 75
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    const-string v3, "eapi.pcloud.com"

    .line 82
    .line 83
    :cond_3
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lov5;->z()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :cond_4
    const-string p0, "editor"

    .line 100
    .line 101
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_5
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 106
    .line 107
    const/16 v7, 0x8

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    const-string v3, "PCloudService"

    .line 111
    .line 112
    const-string v4, "login"

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 119
    .line 120
    invoke-direct {p0, v5}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 121
    .line 122
    .line 123
    return-object p0
.end method
