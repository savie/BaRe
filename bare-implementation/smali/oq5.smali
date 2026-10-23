.class public abstract Loq5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final a(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Z)Z
    .locals 10

    .line 1
    const-string v1, "acquireTokenSilentBlocking: Invalid token="

    .line 2
    .line 3
    const-string v3, "ISAPCA"

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getCurrentAccount()Lcom/microsoft/identity/client/CurrentAccountResult;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/microsoft/identity/client/CurrentAccountResult;->getCurrentAccount()Lcom/microsoft/identity/client/Account;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 20
    .line 21
    const-string v4, "acquireTokenSilentBlocking: IAccount is null!"

    .line 22
    .line 23
    const/4 v6, 0x4

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return v9

    .line 30
    :catch_0
    move-exception v0

    .line 31
    move-object v5, v0

    .line 32
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 33
    .line 34
    const/16 v7, 0x8

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    const-string v4, "acquireTokenSilentBlocking: Error while getting current account"

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    if-nez p1, :cond_1

    .line 44
    .line 45
    sget-object v0, Lnq5;->i:Ljq5;

    .line 46
    .line 47
    invoke-static {}, Ljq5;->d()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 55
    .line 56
    const/4 v6, 0x4

    .line 57
    const/4 v7, 0x0

    .line 58
    const-string v4, "Refreshing OneDrive token silently..."

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :try_start_1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getCurrentAccount()Lcom/microsoft/identity/client/CurrentAccountResult;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/microsoft/identity/client/CurrentAccountResult;->getCurrentAccount()Lcom/microsoft/identity/client/Account;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p0, v0, p1}, Loq5;->b(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/Account;Z)Lcom/microsoft/identity/client/AuthenticationResult;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AuthenticationResult;->getAccessToken()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    sget-object v0, Lnq5;->i:Ljq5;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AuthenticationResult;->getExpiresOn()Ljava/util/Date;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p1, p0}, Ljq5;->e(Ljava/lang/String;Ljava/util/Date;)V

    .line 96
    .line 97
    .line 98
    const-string v4, "Token successfully acquired"

    .line 99
    .line 100
    const/4 v6, 0x4

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v5, 0x0

    .line 103
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    const/4 p0, 0x1

    .line 107
    return p0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    move-object p0, v0

    .line 110
    move-object v5, p0

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const/4 v6, 0x4

    .line 117
    const/4 v7, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :goto_1
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 124
    .line 125
    const/16 v7, 0x8

    .line 126
    .line 127
    const/4 v8, 0x0

    .line 128
    const-string v4, "acquireTokenSilentBlocking: Error while getting token"

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    return v9
.end method

.method public static final b(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/Account;Z)Lcom/microsoft/identity/client/AuthenticationResult;
    .locals 2

    .line 1
    sget-object v0, Led1;->a:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->forAccount(Lcom/microsoft/identity/client/Account;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 19
    .line 20
    invoke-static {v0}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withScopes(Ljava/util/List;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityUri()Ljava/net/URI;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/client/TokenParameters$Builder;->fromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->forceRefresh(Z)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    .line 56
    .line 57
    invoke-direct {p2, p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;-><init>(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->acquireTokenSilent(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)Lcom/microsoft/identity/client/AuthenticationResult;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    return-object p0
.end method
