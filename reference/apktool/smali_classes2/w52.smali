.class public final Lw52;
.super Lxh2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Ljh1;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljh1;Lzv1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lxh2;-><init>(Lzv1;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lw52;->c:Ljh1;

    .line 8
    .line 9
    const-string p1, "CsDeleteSession"

    .line 10
    .line 11
    iput-object p1, p0, Lw52;->d:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)Z
    .locals 10

    .line 1
    sget-object v2, Ldz5;->a:Ldz5;

    .line 2
    .line 3
    const-string v0, "android.permission.ACCESS_LOCAL_NETWORK"

    .line 4
    .line 5
    invoke-static {v0}, Ldz5;->h(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 12
    .line 13
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 22
    .line 23
    new-instance v0, Ltz4;

    .line 24
    .line 25
    const-string v5, "grantLocalNetworkPermissionWithRootOrShizuku()Z"

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    const-class v3, Ldz5;

    .line 30
    .line 31
    const-string v4, "grantLocalNetworkPermissionWithRootOrShizuku"

    .line 32
    .line 33
    invoke-direct/range {v0 .. v6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lw52;->c:Ljh1;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Ljh1;->g()Ldd1;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {p0}, Luz4;->e(Ljh1;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    move v5, v7

    .line 50
    move v6, v8

    .line 51
    move v7, v9

    .line 52
    move-object v8, v0

    .line 53
    invoke-static/range {v3 .. v8}, Luz4;->a(Ldd1;Ljava/lang/String;ZIILbt3;)Lzz4;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v2, v1

    .line 79
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-lez v2, :cond_0

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {p0, v0}, Ljh1;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    move-object p1, v0

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    const/4 p0, 0x1

    .line 115
    return p0

    .line 116
    :goto_2
    invoke-static {p0, p1}, Luz4;->d(Ljh1;Ljava/lang/Exception;)Lzz4;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-eqz p0, :cond_3

    .line 121
    .line 122
    move-object p1, p0

    .line 123
    :cond_3
    throw p1

    .line 124
    :cond_4
    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lw52;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
