.class public final Lnq5;
.super Ltb1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final i:Ljq5;

.field public static j:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

.field public static final k:Ljava/lang/Object;


# instance fields
.field public final g:Ldd1;

.field public final h:Lst5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljq5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnq5;->i:Ljq5;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lnq5;->k:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldd1;->OneDrive:Ldd1;

    .line 5
    .line 6
    iput-object v0, p0, Lnq5;->g:Ldd1;

    .line 7
    .line 8
    new-instance v0, Lst5;

    .line 9
    .line 10
    new-instance v1, Ljx;

    .line 11
    .line 12
    const/16 v2, 0xf

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljx;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lhc1;

    .line 18
    .line 19
    const/4 v3, 0x5

    .line 20
    invoke-direct {v2, v3}, Lhc1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Lst5;-><init>(Ljx;Lhc1;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lnq5;->h:Lst5;

    .line 27
    .line 28
    return-void
.end method

.method public static final q(Lnq5;Ljava/lang/String;)Lpt5;
    .locals 2

    .line 1
    iget-object p0, p0, Lnq5;->h:Lst5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Lfl4;

    .line 10
    .line 11
    invoke-direct {v0}, Lfl4;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "name"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "@microsoft.graph.conflictBehavior"

    .line 20
    .line 21
    const-string v1, "fail"

    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lfl4;

    .line 27
    .line 28
    invoke-direct {p1}, Lfl4;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "folder"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lokhttp3/Request$Builder;

    .line 37
    .line 38
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "/me/drive/root/children"

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lst5;->r(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p1, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 48
    .line 49
    sget-object v1, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 50
    .line 51
    invoke-virtual {v0}, Lqj4;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Lst5;->f:Lokhttp3/MediaType;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "POST"

    .line 62
    .line 63
    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lokhttp3/Request;

    .line 67
    .line 68
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lst5;->f(Lokhttp3/Request;)Lfl4;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Lst5;->q(Lfl4;)Lpt5;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public static final r(Lnq5;Ljava/lang/String;)Lpt5;
    .locals 2

    .line 1
    iget-object p0, p0, Lnq5;->h:Lst5;

    .line 2
    .line 3
    const-string v0, "name"

    .line 4
    .line 5
    const-string v1, "id"

    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v1, "/me/drive/root/children"

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lst5;->r(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v1, v0}, Lst5;->i(Lokhttp3/HttpUrl;Ljava/util/List;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v1, v0

    .line 43
    check-cast v1, Lpt5;

    .line 44
    .line 45
    iget-object v1, v1, Lpt5;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    :goto_0
    check-cast v0, Lpt5;

    .line 56
    .line 57
    return-object v0
.end method


# virtual methods
.method public final b(Lzv1;)Lxh2;
    .locals 8

    .line 1
    new-instance v0, Lpq5;

    .line 2
    .line 3
    new-instance v1, Lkq5;

    .line 4
    .line 5
    const-string v6, "ensureAccessToken(JZ)Z"

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    sget-object v3, Lnq5;->i:Ljq5;

    .line 10
    .line 11
    const-class v4, Ljq5;

    .line 12
    .line 13
    const-string v5, "ensureAccessToken"

    .line 14
    .line 15
    invoke-direct/range {v1 .. v7}, Lv9;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lnq5;->h:Lst5;

    .line 19
    .line 20
    invoke-direct {v0, v1, p0, p1}, Lpq5;-><init>(Lkq5;Lst5;Lzv1;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final c(Lfo2;)Lno2;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lqq5;

    .line 5
    .line 6
    new-instance v1, Llq5;

    .line 7
    .line 8
    const-string v6, "ensureAccessToken(JZ)Z"

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    sget-object v3, Lnq5;->i:Ljq5;

    .line 13
    .line 14
    const-class v4, Ljq5;

    .line 15
    .line 16
    const-string v5, "ensureAccessToken"

    .line 17
    .line 18
    invoke-direct/range {v1 .. v7}, Lv9;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lnq5;->h:Lst5;

    .line 22
    .line 23
    invoke-direct {v0, v1, p0, p1}, Lqq5;-><init>(Llq5;Lst5;Lfo2;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final d(Lrf8;)Lag8;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lwq5;

    .line 5
    .line 6
    new-instance v1, Lmq5;

    .line 7
    .line 8
    const-string v6, "ensureAccessToken(JZ)Z"

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    sget-object v3, Lnq5;->i:Ljq5;

    .line 13
    .line 14
    const-class v4, Ljq5;

    .line 15
    .line 16
    const-string v5, "ensureAccessToken"

    .line 17
    .line 18
    invoke-direct/range {v1 .. v7}, Lv9;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lnq5;->h:Lst5;

    .line 22
    .line 23
    invoke-direct {v0, v1, p0, p1}, Lwq5;-><init>(Lmq5;Lst5;Lrf8;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "deleteTaggedBackups: Deleting folder="

    .line 4
    .line 5
    iget-object v2, v0, Lnq5;->g:Ldd1;

    .line 6
    .line 7
    invoke-virtual {v2}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "/"

    .line 16
    .line 17
    invoke-static {v2, v4, v3}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    :try_start_0
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 23
    .line 24
    const-string v5, "OneDriveClient"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const/4 v8, 0x4

    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lnq5;->h:Lst5;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lst5;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    instance-of v1, v0, Lmt5;

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    move-object v2, v0

    .line 48
    check-cast v2, Lmt5;

    .line 49
    .line 50
    iget v2, v2, Lmt5;->a:I

    .line 51
    .line 52
    const/16 v4, 0x194

    .line 53
    .line 54
    if-ne v2, v4, :cond_0

    .line 55
    .line 56
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 57
    .line 58
    const/4 v9, 0x4

    .line 59
    const/4 v10, 0x0

    .line 60
    const-string v6, "OneDriveClient"

    .line 61
    .line 62
    const-string v7, "deleteTaggedBackups:: Item not found"

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return v3

    .line 69
    :cond_0
    if-eqz v1, :cond_1

    .line 70
    .line 71
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 72
    .line 73
    check-cast v0, Lmt5;

    .line 74
    .line 75
    invoke-static {v0}, Ll73;->E(Lmt5;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "deleteTaggedBackups:: "

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    const/4 v15, 0x4

    .line 86
    const/16 v16, 0x0

    .line 87
    .line 88
    const-string v12, "OneDriveClient"

    .line 89
    .line 90
    const/4 v14, 0x0

    .line 91
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    const/4 v3, 0x0

    .line 95
    :goto_0
    if-eqz v3, :cond_2

    .line 96
    .line 97
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 98
    .line 99
    const/4 v8, 0x4

    .line 100
    const/4 v9, 0x0

    .line 101
    const-string v5, "OneDriveClient"

    .line 102
    .line 103
    const-string v6, "deleteTaggedBackups: Successful"

    .line 104
    .line 105
    const/4 v7, 0x0

    .line 106
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    return v3
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
    invoke-virtual {p0, v0, v1}, Lnq5;->s(Ljava/lang/String;Z)Lui1;

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
    iget-object p0, p0, Lnq5;->g:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "OneDriveClient"

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
    invoke-virtual {p0, v0, v1}, Lnq5;->s(Ljava/lang/String;Z)Lui1;

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
    invoke-virtual {p0, v0, v1}, Lnq5;->s(Ljava/lang/String;Z)Lui1;

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
    invoke-virtual {p0, v0, v1}, Lnq5;->s(Ljava/lang/String;Z)Lui1;

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
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    sget-object v2, Lnq5;->i:Ljq5;

    .line 4
    .line 5
    invoke-static {v2, v0, v1}, Ljq5;->b(Ljq5;ZI)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lxa1;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "OneDrive access token is unavailable"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lxa1;-><init>(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    iget-object v0, p0, Lnq5;->g:Ldd1;

    .line 25
    .line 26
    invoke-virtual {v0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lqf1;->CASE_INSENSITIVE_PATH:Lqf1;

    .line 31
    .line 32
    new-instance v2, Lw20;

    .line 33
    .line 34
    const/16 v3, 0x13

    .line 35
    .line 36
    invoke-direct {v2, p0, v3}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Ltc1;

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    invoke-direct {p0, v3}, Ltc1;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v2, p0}, Lk55;->i(Ljava/lang/String;Lqf1;Lmt3;Lqt3;)Ljm1;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final n()Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;
    .locals 15

    .line 1
    iget-object v1, p0, Lnq5;->h:Lst5;

    .line 2
    .line 3
    const-string v0, "startCheckAccess()"

    .line 4
    .line 5
    const-string v2, "OneDriveClient"

    .line 6
    .line 7
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 11
    .line 12
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lai8;->i(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lqi1;->a:Lqi1;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object v0, Lnq5;->i:Ljq5;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljq5;->c()Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lqb1;->a()V

    .line 34
    .line 35
    .line 36
    new-instance p0, Lri1;

    .line 37
    .line 38
    invoke-direct {p0}, Lri1;-><init>()V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    const/4 v3, 0x3

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static {v0, v4, v3}, Ljq5;->b(Ljq5;ZI)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_b

    .line 49
    .line 50
    const-string v0, "startCheckAccess: OneDrive token available"

    .line 51
    .line 52
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v2, 0x0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lnq5;->p()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    move-object v8, v0

    .line 81
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 82
    .line 83
    const/16 v10, 0x8

    .line 84
    .line 85
    const/4 v11, 0x0

    .line 86
    const-string v6, "OneDriveClient"

    .line 87
    .line 88
    const-string v7, "startCheckAccess.getOrCreateMainFolder"

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    invoke-static/range {v5 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    instance-of p0, v8, Lmt5;

    .line 95
    .line 96
    if-eqz p0, :cond_4

    .line 97
    .line 98
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 99
    .line 100
    move-object v0, v8

    .line 101
    check-cast v0, Lmt5;

    .line 102
    .line 103
    invoke-static {v0}, Ll73;->E(Lmt5;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    const/4 v13, 0x4

    .line 108
    const/4 v14, 0x0

    .line 109
    const-string v10, "OneDriveClient"

    .line 110
    .line 111
    const/4 v12, 0x0

    .line 112
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    move-object p0, v2

    .line 116
    :goto_1
    if-eqz p0, :cond_a

    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_5
    invoke-static {p0}, Lqb1;->s(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :try_start_1
    invoke-virtual {v1}, Lst5;->g()Lot5;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    iget-object p0, p0, Lot5;->a:Lqt5;

    .line 133
    .line 134
    new-instance v0, Lni1;

    .line 135
    .line 136
    if-eqz p0, :cond_6

    .line 137
    .line 138
    iget-object v3, p0, Lqt5;->a:Ljava/lang/Long;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    move-object v3, v2

    .line 142
    :goto_2
    if-eqz p0, :cond_7

    .line 143
    .line 144
    iget-object v2, p0, Lqt5;->b:Ljava/lang/Long;

    .line 145
    .line 146
    :cond_7
    invoke-direct {v0, v3, v2}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lst5;->h()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    if-eqz p0, :cond_8

    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    invoke-static {p0}, Lqb1;->q(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v1, Lsi1;

    .line 165
    .line 166
    invoke-direct {v1, v0, p0}, Lsi1;-><init>(Lni1;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :catch_1
    move-exception v0

    .line 171
    move-object p0, v0

    .line 172
    move-object v8, p0

    .line 173
    goto :goto_3

    .line 174
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 175
    .line 176
    const-string v0, "startCheckAccess: Email address null to uniquely identify the cloud drive!"

    .line 177
    .line 178
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    :goto_3
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 183
    .line 184
    const/16 v10, 0x8

    .line 185
    .line 186
    const/4 v11, 0x0

    .line 187
    const-string v6, "OneDriveClient"

    .line 188
    .line 189
    const-string v7, "startCheckAccess:.Getting quota"

    .line 190
    .line 191
    const/4 v9, 0x0

    .line 192
    invoke-static/range {v5 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    instance-of p0, v8, Lmt5;

    .line 196
    .line 197
    if-eqz p0, :cond_9

    .line 198
    .line 199
    move-object p0, v8

    .line 200
    check-cast p0, Lmt5;

    .line 201
    .line 202
    invoke-static {p0}, Ll73;->E(Lmt5;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    const/4 v13, 0x4

    .line 207
    const/4 v14, 0x0

    .line 208
    const-string v10, "OneDriveClient"

    .line 209
    .line 210
    const/4 v12, 0x0

    .line 211
    move-object v9, v5

    .line 212
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_9
    new-instance v1, Loi1;

    .line 216
    .line 217
    invoke-direct {v1, v8, v4}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 218
    .line 219
    .line 220
    :goto_4
    return-object v1

    .line 221
    :cond_a
    :goto_5
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 222
    .line 223
    const/4 v6, 0x4

    .line 224
    const/4 v7, 0x0

    .line 225
    const-string v3, "OneDriveClient"

    .line 226
    .line 227
    const-string v4, "startCheckAccess: Null folder id!"

    .line 228
    .line 229
    const/4 v5, 0x0

    .line 230
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    sget-object p0, Lpi1;->a:Lpi1;

    .line 234
    .line 235
    return-object p0

    .line 236
    :cond_b
    new-instance p0, Ljava/lang/Exception;

    .line 237
    .line 238
    const-string v0, "Acquiring token silently failed, signing out OneDrive!"

    .line 239
    .line 240
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 244
    .line 245
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-string v1, "startCheckAccess: "

    .line 250
    .line 251
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    const/4 v9, 0x4

    .line 256
    const/4 v10, 0x0

    .line 257
    const-string v6, "OneDriveClient"

    .line 258
    .line 259
    const/4 v8, 0x0

    .line 260
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Lqb1;->a()V

    .line 264
    .line 265
    .line 266
    new-instance v0, Loi1;

    .line 267
    .line 268
    invoke-direct {v0, p0, v4}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 269
    .line 270
    .line 271
    return-object v0
.end method

.method public final o(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    sget-object v2, Lnq5;->i:Ljq5;

    .line 4
    .line 5
    invoke-static {v2, v0, v1}, Ljq5;->b(Ljq5;ZI)Z

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lnq5;->h:Lst5;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lokhttp3/Request$Builder;

    .line 14
    .line 15
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lst5;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "/me/drive/root:/"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ":/thumbnails/0"

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lst5;->r(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 46
    .line 47
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lokhttp3/Request;

    .line 51
    .line 52
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lst5;->f(Lokhttp3/Request;)Lfl4;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "large"

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/4 p1, 0x0

    .line 66
    if-eqz p0, :cond_1

    .line 67
    .line 68
    instance-of v0, p0, Lfl4;

    .line 69
    .line 70
    if-nez v0, :cond_0

    .line 71
    .line 72
    move-object p0, p1

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :goto_0
    if-eqz p0, :cond_1

    .line 79
    .line 80
    const-string v0, "url"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_1

    .line 87
    .line 88
    invoke-static {p0}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_1
    return-object p1
.end method

.method public final declared-synchronized p()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "Main folder created: "

    .line 2
    .line 3
    const-string v1, "Main folder already exists: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v3, "OneDriveClient: getOrCreateMainFolder"

    .line 7
    .line 8
    iget-object v2, p0, Lnq5;->g:Ldd1;

    .line 9
    .line 10
    invoke-virtual {v2}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v8

    .line 14
    invoke-static {p0, v8}, Lnq5;->r(Lnq5;Ljava/lang/String;)Lpt5;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v0, v2, Lpt5;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, v2, Lpt5;->a:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", id:"

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object v0, v2, Lpt5;->a:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 53
    .line 54
    const-string v4, "Main folder not found, Creating folder"

    .line 55
    .line 56
    const/4 v6, 0x4

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    move-object v2, v1

    .line 60
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v8}, Lnq5;->q(Lnq5;Ljava/lang/String;)Lpt5;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v7, v2, Lpt5;->a:Ljava/lang/String;

    .line 68
    .line 69
    const-string v2, "OneDriveClient"

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, ", id:"

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v5, 0x4

    .line 92
    const/4 v6, 0x0

    .line 93
    const/4 v4, 0x0

    .line 94
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    move-object v0, v7

    .line 98
    :goto_0
    monitor-exit p0

    .line 99
    return-object v0

    .line 100
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw v0
.end method

.method public final s(Ljava/lang/String;Z)Lui1;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "name, id, parentReference, size, createdDateTime, lastModifiedDateTime"

    .line 4
    .line 5
    const-string v2, "/"

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lnq5;->g:Ldd1;

    .line 13
    .line 14
    invoke-virtual {v4}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x0

    .line 19
    :try_start_0
    sget-object v6, Lnq5;->i:Ljq5;

    .line 20
    .line 21
    const/4 v7, 0x3

    .line 22
    invoke-static {v6, v5, v7}, Ljq5;->b(Ljq5;ZI)Z

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    move-object v9, v0

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    :goto_0
    iget-object v0, v0, Lnq5;->h:Lst5;

    .line 54
    .line 55
    const-string v6, ","

    .line 56
    .line 57
    filled-new-array {v6}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const/4 v7, 0x6

    .line 62
    invoke-static {v1, v6, v7}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v6, Ljava/util/ArrayList;

    .line 67
    .line 68
    const/16 v7, 0xa

    .line 69
    .line 70
    invoke-static {v1, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_1

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v7}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v0, v4, v6}, Lst5;->j(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    const/4 v0, 0x0

    .line 113
    goto :goto_3

    .line 114
    :goto_2
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 115
    .line 116
    const/16 v11, 0x8

    .line 117
    .line 118
    const/4 v12, 0x0

    .line 119
    const-string v7, "OneDriveClient"

    .line 120
    .line 121
    const-string v8, "search: "

    .line 122
    .line 123
    const/4 v10, 0x0

    .line 124
    invoke-static/range {v6 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    instance-of v0, v9, Lmt5;

    .line 128
    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    move-object v0, v9

    .line 132
    check-cast v0, Lmt5;

    .line 133
    .line 134
    invoke-static {v0}, Ll73;->E(Lmt5;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    const/4 v14, 0x4

    .line 139
    const/4 v15, 0x0

    .line 140
    const-string v11, "OneDriveClient"

    .line 141
    .line 142
    const/4 v13, 0x0

    .line 143
    move-object v10, v6

    .line 144
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    move-object v0, v9

    .line 148
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    :cond_3
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_4

    .line 162
    .line 163
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    move-object v7, v6

    .line 168
    check-cast v7, Lpt5;

    .line 169
    .line 170
    iget-object v7, v7, Lpt5;->b:Ljava/lang/String;

    .line 171
    .line 172
    move-object/from16 v8, p1

    .line 173
    .line 174
    invoke-static {v7, v8, v5}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_3

    .line 179
    .line 180
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    const-string v5, "search: "

    .line 193
    .line 194
    const-string v6, " valid drive files found"

    .line 195
    .line 196
    invoke-static {v5, v4, v2, v6, v3}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const-string v3, "OneDriveClient"

    .line 201
    .line 202
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_5

    .line 210
    .line 211
    sget-object v1, Lov2;->a:Lov2;

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_5
    invoke-static {v1}, Log1;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    :goto_5
    new-instance v2, Lui1;

    .line 219
    .line 220
    invoke-direct {v2, v0, v1}, Lui1;-><init>(Ljava/lang/Exception;Ljava/util/List;)V

    .line 221
    .line 222
    .line 223
    return-object v2
.end method
