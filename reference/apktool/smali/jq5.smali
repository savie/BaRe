.class public final Ljq5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a()V
    .locals 8

    .line 1
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "editor"

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    const-string v3, "onedrive_access_token"

    .line 9
    .line 10
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    const-string v1, "onedrive_access_token_expiry"

    .line 22
    .line 23
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    .line 29
    .line 30
    const-string v0, "onedrive_conformance_credential_mode"

    .line 31
    .line 32
    invoke-static {v0}, Lcz4;->i(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "onedrive_conformance_client_id"

    .line 36
    .line 37
    invoke-static {v0}, Lcz4;->i(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "onedrive_conformance_refresh_token"

    .line 41
    .line 42
    invoke-static {v0}, Lcz4;->i(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "onedrive_conformance_msal_token_share_mode"

    .line 46
    .line 47
    invoke-static {v0}, Lcz4;->i(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 51
    .line 52
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    const-string v1, "shared_prefs"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lnc3;->U(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    array-length v2, v0

    .line 84
    const/4 v3, 0x0

    .line 85
    move v4, v3

    .line 86
    :goto_0
    if-ge v4, v2, :cond_1

    .line 87
    .line 88
    aget-object v5, v0, v4

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    const-string v7, "com.microsoft"

    .line 98
    .line 99
    invoke-static {v6, v7, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_0

    .line 104
    .line 105
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Ljava/io/File;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    sget-object v0, Lzn4;->a:Lzn4;

    .line 132
    .line 133
    new-instance v0, Lqm;

    .line 134
    .line 135
    const/16 v1, 0x10

    .line 136
    .line 137
    invoke-direct {v0, v1}, Lqm;-><init>(I)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_3
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v1

    .line 148
    :cond_4
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v1
.end method

.method public static b(Ljq5;ZI)Z
    .locals 2

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    const/4 p2, 0x1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljq5;->d()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    return p2

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    :cond_2
    sget-object p0, Lnq5;->k:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    :try_start_0
    sget-object v1, Lnq5;->i:Ljq5;

    .line 29
    .line 30
    invoke-static {}, Ljq5;->d()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    move v0, p2

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    sget-object p2, Lnq5;->i:Ljq5;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljq5;->c()Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_4

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    invoke-static {p2, p1}, Loq5;->a(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    monitor-exit p0

    .line 54
    return v0

    .line 55
    :goto_1
    monitor-exit p0

    .line 56
    throw p1
.end method

.method public static d()Z
    .locals 7

    .line 1
    const-string v0, "prefs"

    .line 2
    .line 3
    const-string v1, "onedrive_access_token"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-object v1, v2

    .line 20
    :goto_0
    const-string v3, "onedrive_access_token_expiry"

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    :try_start_1
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    invoke-interface {v6, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    :catch_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    cmp-long v0, v2, v4

    .line 51
    .line 52
    if-gez v0, :cond_3

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 57
    :goto_3
    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/util/Date;)V
    .locals 6

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-static {v1, p0}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "saveAccessToken: token="

    .line 17
    .line 18
    const-string v4, ", expiry="

    .line 19
    .line 20
    invoke-static {v3, v1, v4, v2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const-string v1, "OClient"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v0 .. v5}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const-string v2, "editor"

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string v3, "onedrive_access_token"

    .line 40
    .line 41
    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide p0

    .line 52
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const-string v1, "onedrive_access_token_expiry"

    .line 57
    .line 58
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :cond_1
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1
.end method


# virtual methods
.method public final declared-synchronized c()Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;
    .locals 10

    .line 1
    const-string v0, "Setting OneDrive client application with Authorization Agent: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v1, Lnq5;->j:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplication;->getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, "onedrive_auth_agent"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    :try_start_1
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v3, "prefs"

    .line 29
    .line 30
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :catch_0
    move-object v3, v2

    .line 35
    :goto_0
    if-eqz v3, :cond_2

    .line 36
    .line 37
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    :try_start_3
    invoke-static {v3}, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 45
    .line 46
    .line 47
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-object v3, v2

    .line 50
    :goto_1
    if-eqz v3, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    :goto_2
    :try_start_4
    sget-object v3, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 54
    .line 55
    :goto_3
    if-eq v1, v3, :cond_5

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_7

    .line 60
    :cond_3
    :goto_4
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 61
    .line 62
    const-string v4, "OClient"

    .line 63
    .line 64
    invoke-static {}, Lbs4;->a()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const/4 v7, 0x4

    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    .line 85
    .line 86
    :try_start_5
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 87
    .line 88
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lbs4;->a()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sget-object v3, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 97
    .line 98
    if-ne v1, v3, :cond_4

    .line 99
    .line 100
    const v1, 0x7f12000b

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_4
    const v1, 0x7f12000a

    .line 105
    .line 106
    .line 107
    :goto_5
    invoke-static {v0, v1}, Lcom/microsoft/identity/client/PublicClientApplication;->createSingleAccountPublicClientApplication(Landroid/content/Context;I)Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 108
    .line 109
    .line 110
    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    goto :goto_6

    .line 112
    :catch_2
    move-exception v0

    .line 113
    move-object v6, v0

    .line 114
    :try_start_6
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 115
    .line 116
    const-string v4, "OClient"

    .line 117
    .line 118
    const-string v5, "getClientApplication"

    .line 119
    .line 120
    const/16 v8, 0x8

    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    invoke-static/range {v3 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :goto_6
    sput-object v2, Lnq5;->j:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 128
    .line 129
    :cond_5
    sget-object v0, Lnq5;->j:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    .line 131
    monitor-exit p0

    .line 132
    return-object v0

    .line 133
    :goto_7
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 134
    throw v0
.end method
