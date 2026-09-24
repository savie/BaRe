.class public final Lx95;
.super Ltb1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Lx95;

.field public static final h:Ldd1;

.field public static final i:Lnb5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx95;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx95;->g:Lx95;

    .line 7
    .line 8
    sget-object v0, Ldd1;->MegaNz:Ldd1;

    .line 9
    .line 10
    sput-object v0, Lx95;->h:Ldd1;

    .line 11
    .line 12
    sget-object v0, Lnb5;->a:Lnb5;

    .line 13
    .line 14
    sput-object v0, Lx95;->i:Lnb5;

    .line 15
    .line 16
    return-void
.end method

.method public static o()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getOrCreateMainFolder"

    .line 2
    .line 3
    const-string v1, "MegaClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lx95;->h:Ldd1;

    .line 9
    .line 10
    invoke-virtual {v0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Lx95;->i:Lnb5;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object v2, Lnb5;->b:Lgt7;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Lgt7;->c(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    const-string v2, "Main folder already exists"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    const-string v3, "Main folder not found, Creating folder"

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Lgt7;->b(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const-string v2, "Main folder created: "

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    return-object v0
.end method

.method public static p()Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;
    .locals 6

    .line 1
    const-string v0, "mega_credentials"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v2, Ly32;->a:Lgv7;

    .line 23
    .line 24
    invoke-static {v0}, Ly32;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v0, v1

    .line 30
    :goto_1
    new-instance v2, Lv95;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, v0, v3}, Lv95;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const/16 v0, 0xc

    .line 37
    .line 38
    const-string v4, "MegaClient"

    .line 39
    .line 40
    const-string v5, "savedCredentials"

    .line 41
    .line 42
    invoke-static {v4, v5, v3, v2, v0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 51
    .line 52
    const/4 v2, 0x3

    .line 53
    invoke-direct {v0, v1, v1, v2, v1}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->getEmail()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x2

    .line 70
    invoke-static {v0, v2, v1, v3, v1}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public static q(Ljava/lang/String;Z)Lui1;
    .locals 10

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lx95;->h:Ldd1;

    .line 7
    .line 8
    invoke-virtual {v0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "search: "

    .line 13
    .line 14
    const-string v3, "/"

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    sget-object p1, Lx95;->i:Lnb5;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lnb5;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    goto :goto_2

    .line 58
    :goto_1
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 59
    .line 60
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const/4 v8, 0x4

    .line 69
    const/4 v9, 0x0

    .line 70
    const-string v5, "MegaClient"

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    :cond_1
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_2

    .line 90
    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    move-object v6, v5

    .line 96
    check-cast v6, Lpg1;

    .line 97
    .line 98
    iget-object v6, v6, Lpg1;->a:Ljava/lang/String;

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    invoke-static {v6, p0, v7}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_1

    .line 106
    .line 107
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const-string v4, " valid drive files found"

    .line 120
    .line 121
    invoke-static {v2, p0, v3, v4, v1}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string v1, "MegaClient"

    .line 126
    .line 127
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    new-instance p0, Lui1;

    .line 131
    .line 132
    invoke-direct {p0, p1, v0}, Lui1;-><init>(Ljava/lang/Exception;Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    return-object p0
.end method

.method public static r(Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->getEmail()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p0, v0, v2, v1, v2}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object v0, Lw14;->a:Lgv7;

    .line 24
    .line 25
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object v0, Ly32;->a:Lgv7;

    .line 34
    .line 35
    invoke-static {p0}, Ly32;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const-string v1, "mega_credentials"

    .line 44
    .line 45
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    const-string p0, "editor"

    .line 54
    .line 55
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v2
.end method

.method public static s(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "mega_swift_session"

    .line 6
    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "editor"

    .line 16
    .line 17
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0
.end method


# virtual methods
.method public final b(Lzv1;)Lxh2;
    .locals 1

    .line 1
    new-instance p0, Ly95;

    .line 2
    .line 3
    sget-object v0, Lx95;->i:Lnb5;

    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Ly95;-><init>(Lnb5;Lzv1;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final c(Lfo2;)Lno2;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Laa5;

    .line 5
    .line 6
    sget-object v0, Lx95;->i:Lnb5;

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Laa5;-><init>(Lnb5;Lfo2;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final d(Lrf8;)Lag8;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lvb5;

    .line 5
    .line 6
    sget-object v0, Lx95;->i:Lnb5;

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lvb5;-><init>(Lnb5;Lrf8;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string p0, "deleteTaggedBackups: Deleting folder="

    .line 2
    .line 3
    sget-object p1, Lx95;->h:Ldd1;

    .line 4
    .line 5
    invoke-virtual {p1}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "/"

    .line 14
    .line 15
    invoke-static {p1, v1, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :try_start_0
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 20
    .line 21
    const-string v1, "MegaClient"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v4, 0x4

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lx95;->i:Lnb5;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object p0, Lnb5;->b:Lgt7;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lgt7;->c(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    invoke-static {p1}, Lnb5;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :cond_0
    const/4 p0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    move-object p0, v0

    .line 53
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 54
    .line 55
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "deleteTaggedBackups: "

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v4, 0x4

    .line 66
    const/4 v5, 0x0

    .line 67
    const-string v1, "MegaClient"

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    :goto_0
    if-eqz p0, :cond_1

    .line 75
    .line 76
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 77
    .line 78
    const/4 v4, 0x4

    .line 79
    const/4 v5, 0x0

    .line 80
    const-string v1, "MegaClient"

    .line 81
    .line 82
    const-string v2, "deleteTaggedBackups: Successful"

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return p0
.end method

.method public final f()Lui1;
    .locals 2

    .line 1
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, ".cls ("

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, ")"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-static {p0, v0}, Lx95;->q(Ljava/lang/String;Z)Lui1;

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
    sget-object p0, Lx95;->h:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "MegaClient"

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()Lui1;
    .locals 2

    .line 1
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, ".msg ("

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, ")"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-static {p0, v0}, Lx95;->q(Ljava/lang/String;Z)Lui1;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final k()Lui1;
    .locals 1

    .line 1
    const-string p0, ".wal"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lx95;->q(Ljava/lang/String;Z)Lui1;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final l()Lui1;
    .locals 1

    .line 1
    const-string p0, ".wfi"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lx95;->q(Ljava/lang/String;Z)Lui1;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final m()Ljm1;
    .locals 3

    .line 1
    sget-object p0, Lx95;->h:Ldd1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lqf1;->CASE_SENSITIVE_PATH:Lqf1;

    .line 8
    .line 9
    new-instance v1, Lhc1;

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-direct {v1, v2}, Lhc1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lw95;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Lk55;->i(Ljava/lang/String;Lqf1;Lmt3;Lqt3;)Ljm1;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final n()Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;
    .locals 12

    .line 1
    const-string p0, "startCheckAccess()"

    .line 2
    .line 3
    const-string v1, "MegaClient"

    .line 4
    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lx95;->p()Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->isValid()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v2, Lx95;->i:Lnb5;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v0, "Valid creds available, setting credentials"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v0, Lnb5;->b:Lgt7;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sput-object p0, Lgt7;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 36
    .line 37
    sget-object v0, Lgt7;->h:Lgh;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, v0, Lgh;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, [B

    .line 44
    .line 45
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 46
    .line 47
    .line 48
    :cond_0
    sput-object v4, Lgt7;->h:Lgh;

    .line 49
    .line 50
    sput-object v4, Lgt7;->i:Lvq;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "Invalid creds, not setting credentials"

    .line 54
    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :goto_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 59
    .line 60
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lai8;->i(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    const-string p0, "Network not available!"

    .line 71
    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    sget-object p0, Lqi1;->a:Lqi1;

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_2
    invoke-static {}, Lqb1;->m()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const-string v5, "startCheckAccess: "

    .line 83
    .line 84
    if-eqz v0, :cond_a

    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->isValid()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_a

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v0, Lnb5;->b:Lgt7;

    .line 96
    .line 97
    invoke-virtual {v0, v4}, Lgt7;->e(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    instance-of v6, v2, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Success;

    .line 102
    .line 103
    if-eqz v6, :cond_7

    .line 104
    .line 105
    const-string v2, "startCheckAccess: Login successful"

    .line 106
    .line 107
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-nez v2, :cond_3

    .line 115
    .line 116
    invoke-static {}, Lx95;->o()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :cond_3
    if-eqz v2, :cond_6

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-nez v6, :cond_4

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    invoke-static {v2}, Lqb1;->s(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    :try_start_1
    sget-object v2, Lgt7;->f:Lgv7;

    .line 136
    .line 137
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Lba5;

    .line 142
    .line 143
    invoke-virtual {v0}, Lgt7;->f()Lgh;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v2, v0}, Lba5;->a(Lgh;)Lni1;

    .line 148
    .line 149
    .line 150
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    goto :goto_1

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    :try_start_2
    new-instance v2, Lbn6;

    .line 154
    .line 155
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    move-object v0, v2

    .line 159
    :goto_1
    new-instance v2, Lni1;

    .line 160
    .line 161
    invoke-direct {v2, v4, v4}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 162
    .line 163
    .line 164
    instance-of v4, v0, Lbn6;

    .line 165
    .line 166
    if-eqz v4, :cond_5

    .line 167
    .line 168
    move-object v0, v2

    .line 169
    :cond_5
    check-cast v0, Lni1;

    .line 170
    .line 171
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->getEmail()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p0}, Lqb1;->q(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance v2, Lsi1;

    .line 179
    .line 180
    invoke-direct {v2, v0, p0}, Lsi1;-><init>(Lni1;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    .line 182
    .line 183
    return-object v2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    move-object p0, v0

    .line 186
    const-string v0, "startCheckAccess:"

    .line 187
    .line 188
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .line 190
    .line 191
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 192
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    const/4 v10, 0x4

    .line 206
    const/4 v11, 0x0

    .line 207
    const-string v7, "MegaClient"

    .line 208
    .line 209
    const/4 v9, 0x0

    .line 210
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Loi1;

    .line 214
    .line 215
    invoke-direct {v0, p0, v3}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 216
    .line 217
    .line 218
    return-object v0

    .line 219
    :cond_6
    :goto_2
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 220
    .line 221
    const/4 v8, 0x4

    .line 222
    const/4 v9, 0x0

    .line 223
    const-string v5, "MegaClient"

    .line 224
    .line 225
    const-string v6, "startCheckAccess: Null folder id!"

    .line 226
    .line 227
    const/4 v7, 0x0

    .line 228
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    sget-object p0, Lpi1;->a:Lpi1;

    .line 232
    .line 233
    return-object p0

    .line 234
    :cond_7
    instance-of p0, v2, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;

    .line 235
    .line 236
    if-eqz p0, :cond_8

    .line 237
    .line 238
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 239
    .line 240
    check-cast v2, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;

    .line 241
    .line 242
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;->getE()Ljava/lang/Exception;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    const-string v0, "Failed exception = "

    .line 251
    .line 252
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    const/4 v9, 0x4

    .line 257
    const/4 v10, 0x0

    .line 258
    const-string v6, "MegaClient"

    .line 259
    .line 260
    const/4 v8, 0x0

    .line 261
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-static {}, Lqb1;->a()V

    .line 265
    .line 266
    .line 267
    new-instance p0, Loi1;

    .line 268
    .line 269
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;->getE()Ljava/lang/Exception;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-direct {p0, v0, v3}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 274
    .line 275
    .line 276
    return-object p0

    .line 277
    :cond_8
    instance-of p0, v2, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;

    .line 278
    .line 279
    if-eqz p0, :cond_9

    .line 280
    .line 281
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 282
    .line 283
    check-cast v2, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;

    .line 284
    .line 285
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;->getE()Ljava/lang/Exception;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    const-string v0, "2FA required exception = "

    .line 294
    .line 295
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    const/4 v9, 0x4

    .line 300
    const/4 v10, 0x0

    .line 301
    const-string v6, "MegaClient"

    .line 302
    .line 303
    const/4 v8, 0x0

    .line 304
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    invoke-static {}, Lqb1;->a()V

    .line 308
    .line 309
    .line 310
    new-instance p0, Loi1;

    .line 311
    .line 312
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;->getE()Ljava/lang/Exception;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-direct {p0, v0, v3}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 317
    .line 318
    .line 319
    return-object p0

    .line 320
    :cond_9
    invoke-static {}, Lq;->j()V

    .line 321
    .line 322
    .line 323
    return-object v4

    .line 324
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 325
    .line 326
    invoke-static {}, Lqb1;->m()Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    const-class v2, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 331
    .line 332
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->isValid()Z

    .line 337
    .line 338
    .line 339
    move-result p0

    .line 340
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v7, "isConnected="

    .line 347
    .line 348
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v1, ", "

    .line 355
    .line 356
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v1, ".isValid="

    .line 363
    .line 364
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string p0, ". Signing out "

    .line 371
    .line 372
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string p0, "!"

    .line 379
    .line 380
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    invoke-static {v5, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    const/4 v10, 0x4

    .line 401
    const/4 v11, 0x0

    .line 402
    const-string v7, "MegaClient"

    .line 403
    .line 404
    const/4 v9, 0x0

    .line 405
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    invoke-static {}, Lqb1;->a()V

    .line 409
    .line 410
    .line 411
    new-instance p0, Loi1;

    .line 412
    .line 413
    invoke-direct {p0, v0, v3}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 414
    .line 415
    .line 416
    return-object p0
.end method
