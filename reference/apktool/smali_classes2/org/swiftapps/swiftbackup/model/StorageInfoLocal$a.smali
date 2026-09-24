.class public final Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final _get_savedStorageInfo_$lambda$0(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;
    .locals 2

    .line 1
    sget-object v0, Lw14;->a:Lgv7;

    .line 2
    .line 3
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final _set_savedStorageInfo_$lambda$0(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;)Lbe8;
    .locals 2

    .line 1
    sget-object v0, Lw14;->a:Lgv7;

    .line 2
    .line 3
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v1, "saved_storage_info_local"

    .line 16
    .line 17
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lbe8;->a:Lbe8;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string p0, "editor"

    .line 28
    .line 29
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method

.method public static synthetic a(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;->_set_savedStorageInfo_$lambda$0(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;->_get_savedStorageInfo_$lambda$0(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic create$default(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;Lq63;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;->create(Lq63;Z)Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final create(Lq63;Z)Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x0

    .line 17
    if-nez p0, :cond_7

    .line 18
    .line 19
    sget-object p0, Lry5;->u:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    cmp-long v1, v1, v3

    .line 40
    .line 41
    if-lez v1, :cond_0

    .line 42
    .line 43
    move-object v0, p0

    .line 44
    :cond_0
    if-eqz v0, :cond_6

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    invoke-static {p1}, Lqy5;->c(Lq63;)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_5

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    sub-long v8, v6, v0

    .line 61
    .line 62
    const-wide/16 v0, 0x64

    .line 63
    .line 64
    mul-long/2addr v0, v8

    .line 65
    div-long/2addr v0, v6

    .line 66
    long-to-int v10, v0

    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    sget-boolean p0, Lmp6;->g:Z

    .line 70
    .line 71
    if-eqz p0, :cond_1

    .line 72
    .line 73
    sget-object p0, Lp93;->a:Lp93;

    .line 74
    .line 75
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {p0, v0}, Lp93;->g(Lp93;Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    :goto_0
    move-wide v11, v0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    sget-object p0, Lp93;->a:Lp93;

    .line 86
    .line 87
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lp93;->f(Ljava/lang/String;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const-wide/16 v0, -0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :goto_1
    if-eqz p2, :cond_4

    .line 100
    .line 101
    cmp-long p0, v6, v3

    .line 102
    .line 103
    if-nez p0, :cond_3

    .line 104
    .line 105
    const/4 p0, 0x0

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    long-to-float p0, v11

    .line 108
    long-to-float v0, v6

    .line 109
    div-float/2addr p0, v0

    .line 110
    const/high16 v0, 0x42c80000    # 100.0f

    .line 111
    .line 112
    mul-float/2addr p0, v0

    .line 113
    :goto_2
    move v13, p0

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    const/high16 p0, -0x40800000    # -1.0f

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :goto_3
    new-instance v5, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 119
    .line 120
    invoke-direct/range {v5 .. v13}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;-><init>(JJIJF)V

    .line 121
    .line 122
    .line 123
    return-object v5

    .line 124
    :cond_5
    sget-object p0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$b;->INSTANCE:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$b;

    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_6
    sget-object p0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$b;->INSTANCE:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$b;

    .line 128
    .line 129
    return-object p0

    .line 130
    :cond_7
    invoke-static {}, Ld6;->o()V

    .line 131
    .line 132
    .line 133
    return-object v0
.end method

.method public final getSavedStorageInfo()Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;
    .locals 4

    .line 1
    const-string p0, "saved_storage_info_local"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "prefs"

    .line 14
    .line 15
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-object p0, v0

    .line 20
    :goto_0
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance v1, Lto5;

    .line 30
    .line 31
    const/16 v2, 0x9

    .line 32
    .line 33
    invoke-direct {v1, p0, v2}, Lto5;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x2

    .line 37
    const-string v2, "StorageInfoLocal"

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-static {v2, v0, v3, v1, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    :goto_1
    return-object v0
.end method

.method public final setSavedStorageInfo(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;)V
    .locals 3

    .line 1
    new-instance p0, Lyi5;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lyi5;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    const-string v0, "StorageInfoLocal"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, v1, v2, p0, p1}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method
