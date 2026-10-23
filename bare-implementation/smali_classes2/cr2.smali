.class public final Lcr2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;

.field public final synthetic c:Lg90;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;Lg90;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcr2;->b:Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcr2;->c:Lg90;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance p1, Lcr2;

    .line 2
    .line 3
    iget-object v0, p0, Lcr2;->b:Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lcr2;->c:Lg90;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lcr2;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;Lg90;Ljv1;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcr2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcr2;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcr2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lcr2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, Lcr2;->b:Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;

    .line 7
    .line 8
    sget-object v5, Lyx1;->a:Lyx1;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eq v0, v3, :cond_1

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :catch_0
    move-exception v0

    .line 33
    move-object p1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :try_start_1
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->P:I

    .line 39
    .line 40
    iget-object p1, v4, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->M:Lgv7;

    .line 41
    .line 42
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Luj;

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v6, p0, Lcr2;->c:Lg90;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Lg90;->I()Ll58;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {p1, v0, v6}, Luj;->d(Landroid/content/Context;Ll58;)Lvj;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v6, Lnq2;

    .line 69
    .line 70
    iget-object v7, p1, Lvj;->a:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v8, p1, Lvj;->b:Ljava/lang/Long;

    .line 73
    .line 74
    iget-object v9, p1, Lvj;->c:Ljava/lang/String;

    .line 75
    .line 76
    const-string v10, "mzc5bxvbe0960q1"

    .line 77
    .line 78
    const/4 v11, 0x0

    .line 79
    invoke-direct/range {v6 .. v11}, Lnq2;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Lb82;->i:Ljava/lang/Object;

    .line 83
    .line 84
    const-string v0, "dropbox_credential"

    .line 85
    .line 86
    invoke-virtual {v6}, Lnq2;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    sget-object v8, Lcz4;->k:Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .line 92
    const-string v9, "editor"

    .line 93
    .line 94
    if-eqz v8, :cond_4

    .line 95
    .line 96
    :try_start_2
    invoke-interface {v8, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    .line 102
    .line 103
    invoke-static {v4, p1}, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->N(Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;Lvj;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string v0, "dropbox_user_id"

    .line 108
    .line 109
    sget-object v7, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 110
    .line 111
    if-eqz v7, :cond_3

    .line 112
    .line 113
    invoke-interface {v7, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    .line 119
    .line 120
    sget-object p1, Lzn4;->a:Lzn4;

    .line 121
    .line 122
    new-instance p1, Lqf;

    .line 123
    .line 124
    const/16 v0, 0xb

    .line 125
    .line 126
    invoke-direct {p1, v0, v4, v6}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iput v3, p0, Lcr2;->a:I

    .line 130
    .line 131
    invoke-static {p1, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    if-ne p0, v5, :cond_5

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    invoke-static {v9}, Lpe4;->F(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v1

    .line 142
    :cond_4
    invoke-static {v9}, Lpe4;->F(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    :goto_0
    invoke-virtual {v4}, Lk28;->r()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v1, "Error in exchangeAuthCode"

    .line 151
    .line 152
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .line 154
    .line 155
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 160
    .line 161
    invoke-virtual {v4}, Lk28;->r()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    const/4 v10, 0x4

    .line 166
    const/4 v11, 0x0

    .line 167
    const/4 v9, 0x0

    .line 168
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    sget-object p1, Lzn4;->a:Lzn4;

    .line 172
    .line 173
    new-instance p1, Lw01;

    .line 174
    .line 175
    const/16 v0, 0x8

    .line 176
    .line 177
    invoke-direct {p1, v0, v4, v8}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    iput v2, p0, Lcr2;->a:I

    .line 181
    .line 182
    invoke-static {p1, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    if-ne p0, v5, :cond_5

    .line 187
    .line 188
    :goto_1
    return-object v5

    .line 189
    :cond_5
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 190
    .line 191
    return-object p0
.end method
