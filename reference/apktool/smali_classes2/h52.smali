.class public final Lh52;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh52;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

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
    new-instance p1, Lh52;

    .line 2
    .line 3
    iget-object p0, p0, Lh52;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lh52;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lh52;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lh52;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lh52;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lh52;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_1
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lh52;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 26
    .line 27
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v6, v4, Lm62;->e:Lmj1;

    .line 39
    .line 40
    if-nez v6, :cond_2

    .line 41
    .line 42
    iput-object v5, v4, Lm62;->f:Ldd1;

    .line 43
    .line 44
    invoke-virtual {v5}, Ldd1;->getClient()Ltb1;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    check-cast v5, Lv52;

    .line 52
    .line 53
    invoke-virtual {v5}, Lv52;->o()Ljh1;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lmj1;

    .line 58
    .line 59
    iput-object v5, v4, Lm62;->e:Lmj1;

    .line 60
    .line 61
    :cond_2
    new-instance v4, Llh6;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget-object v5, v5, Lm62;->g:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 71
    .line 72
    if-nez v5, :cond_3

    .line 73
    .line 74
    sget-object v5, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 75
    .line 76
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {v6}, Lorg/swiftapps/swiftbackup/cloud/protocols/a;->b(Ldd1;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    :cond_3
    iput-object v5, v4, Llh6;->a:Ljava/lang/Object;

    .line 88
    .line 89
    if-nez v5, :cond_5

    .line 90
    .line 91
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Ldd1;->isEmailPasswordBasedWebDav()Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_5

    .line 100
    .line 101
    sget-object v5, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 102
    .line 103
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v5, Lgd1;->a:[I

    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    aget v5, v5, v7

    .line 120
    .line 121
    if-ne v5, v3, :cond_4

    .line 122
    .line 123
    new-instance v7, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 124
    .line 125
    invoke-virtual {v6}, Ldd1;->getConstant()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-virtual {v6}, Ldd1;->getProtocols()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-static {v5}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    move-object v9, v5

    .line 138
    check-cast v9, Lfd1;

    .line 139
    .line 140
    const/16 v5, 0x1bb

    .line 141
    .line 142
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    const/16 v22, 0x1b20

    .line 147
    .line 148
    const/16 v23, 0x0

    .line 149
    .line 150
    const-string v10, "webdav.cloud.mail.ru"

    .line 151
    .line 152
    const/4 v11, 0x0

    .line 153
    const/4 v13, 0x0

    .line 154
    const/4 v14, 0x0

    .line 155
    const/4 v15, 0x0

    .line 156
    const/16 v16, 0x0

    .line 157
    .line 158
    const/16 v17, 0x0

    .line 159
    .line 160
    const/16 v18, 0x0

    .line 161
    .line 162
    const/16 v19, 0x0

    .line 163
    .line 164
    const/16 v20, 0x0

    .line 165
    .line 166
    const/16 v21, 0x0

    .line 167
    .line 168
    invoke-direct/range {v7 .. v23}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;-><init>(Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 169
    .line 170
    .line 171
    iput-object v7, v4, Llh6;->a:Ljava/lang/Object;

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_4
    const-string v0, "CloudCredentials.forEmailBasedWebDav hasn\'t handled cloud type "

    .line 175
    .line 176
    invoke-static {v6, v0}, Lc6;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-object v2

    .line 180
    :cond_5
    :goto_0
    iget-object v5, v4, Llh6;->a:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v5, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 183
    .line 184
    if-eqz v5, :cond_6

    .line 185
    .line 186
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudServiceId()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-static {v6}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-eqz v6, :cond_6

    .line 195
    .line 196
    move-object v2, v5

    .line 197
    :cond_6
    iput-object v2, v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->O0:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 198
    .line 199
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iget-object v5, v4, Llh6;->a:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v5, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 206
    .line 207
    invoke-virtual {v2, v5}, Lm62;->l(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V

    .line 208
    .line 209
    .line 210
    sget-object v2, Lzn4;->a:Lzn4;

    .line 211
    .line 212
    new-instance v2, Lg52;

    .line 213
    .line 214
    const/4 v5, 0x0

    .line 215
    invoke-direct {v2, v5, v1, v4}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iput v3, v0, Lh52;->a:I

    .line 219
    .line 220
    invoke-static {v2, v0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    sget-object v1, Lyx1;->a:Lyx1;

    .line 225
    .line 226
    if-ne v0, v1, :cond_7

    .line 227
    .line 228
    return-object v1

    .line 229
    :cond_7
    :goto_1
    sget-object v0, Lbe8;->a:Lbe8;

    .line 230
    .line 231
    return-object v0
.end method
