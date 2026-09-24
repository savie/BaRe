.class public final Ltt5;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lvt5;


# direct methods
.method public constructor <init>(Lvt5;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltt5;->a:Lvt5;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Ltt5;

    .line 2
    .line 3
    iget-object p0, p0, Ltt5;->a:Lvt5;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Ltt5;-><init>(Lvt5;Ljv1;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltt5;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ltt5;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ltt5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object p0, p0, Ltt5;->a:Lvt5;

    .line 2
    .line 3
    iget-object v1, p0, Lvt5;->f:Lix6;

    .line 4
    .line 5
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lnq5;->i:Ljq5;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljq5;->c()Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v2, Lbe8;->a:Lbe8;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 19
    .line 20
    iget-object v4, p0, La55;->b:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v7, 0x4

    .line 23
    const/4 v8, 0x0

    .line 24
    const-string v5, "OneDrive client null"

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 31
    .line 32
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const v0, 0x7f130581

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object v1, Lzn4;->a:Lzn4;

    .line 47
    .line 48
    new-instance v1, Lcv;

    .line 49
    .line 50
    const/16 v3, 0xe

    .line 51
    .line 52
    invoke-direct {v1, v3, p1, v0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lqo0;->d()V

    .line 59
    .line 60
    .line 61
    return-object v2

    .line 62
    :cond_0
    iput-object p1, p0, Lvt5;->e:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getCurrentAccount()Lcom/microsoft/identity/client/CurrentAccountResult;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/microsoft/identity/client/CurrentAccountResult;->getCurrentAccount()Lcom/microsoft/identity/client/Account;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplication;->getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-static {p1, v0, v4}, Loq5;->b(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/Account;Z)Lcom/microsoft/identity/client/AuthenticationResult;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 96
    .line 97
    iget-object v6, p0, La55;->b:Ljava/lang/String;

    .line 98
    .line 99
    const-string v7, "Successfully authenticated"

    .line 100
    .line 101
    const/4 v9, 0x4

    .line 102
    const/4 v10, 0x0

    .line 103
    const/4 v8, 0x0

    .line 104
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/microsoft/identity/client/AuthenticationResult;->getAccessToken()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-lez v0, :cond_1

    .line 119
    .line 120
    const/4 v4, 0x1

    .line 121
    :cond_1
    invoke-virtual {p0, v4, p1}, Lvt5;->j(ZLcom/microsoft/identity/client/AuthenticationResult;)V

    .line 122
    .line 123
    .line 124
    return-object v2

    .line 125
    :goto_0
    move-object v7, p1

    .line 126
    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    move-object p1, v0

    .line 129
    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_3

    .line 146
    .line 147
    invoke-virtual {v1, v3}, Lix6;->k(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return-object v2

    .line 151
    :cond_3
    invoke-virtual {v1, v3}, Lzy4;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    return-object v2

    .line 155
    :goto_1
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 156
    .line 157
    iget-object v5, p0, La55;->b:Ljava/lang/String;

    .line 158
    .line 159
    const/16 v9, 0x8

    .line 160
    .line 161
    const/4 v10, 0x0

    .line 162
    const-string v6, "OneDriveSignInVM.init error"

    .line 163
    .line 164
    const/4 v8, 0x0

    .line 165
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    sget-object p0, Lnq5;->i:Ljq5;

    .line 169
    .line 170
    invoke-static {}, Ljq5;->a()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-eqz p0, :cond_4

    .line 189
    .line 190
    invoke-virtual {v1, v3}, Lix6;->k(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    invoke-virtual {v1, v3}, Lzy4;->i(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :goto_2
    return-object v2
.end method
