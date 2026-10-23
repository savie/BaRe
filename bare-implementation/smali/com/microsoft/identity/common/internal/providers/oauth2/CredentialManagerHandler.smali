.class public final Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final activity:Landroidx/fragment/app/u;

.field private final mCredMan:Lu22;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;->activity:Landroidx/fragment/app/u;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lu22;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lu22;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;->mCredMan:Lu22;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final createPasskey(Ljava/lang/String;Lkv1;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p2, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$createPasskey$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$createPasskey$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$createPasskey$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$createPasskey$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$createPasskey$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$createPasskey$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$createPasskey$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$createPasskey$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$createPasskey$1;->L$0:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_2
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v1, 0x1c

    .line 54
    .line 55
    const-string v4, "CredentialManagerHandler:createPasskey"

    .line 56
    .line 57
    if-lt p2, v1, :cond_6

    .line 58
    .line 59
    new-instance v5, Le22;

    .line 60
    .line 61
    const/16 v11, 0x1e

    .line 62
    .line 63
    const/4 v12, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    move-object v6, p1

    .line 69
    invoke-direct/range {v5 .. v12}, Le22;-><init>(Ljava/lang/String;[BZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 70
    .line 71
    .line 72
    iput-object v4, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$createPasskey$1;->L$0:Ljava/lang/String;

    .line 73
    .line 74
    iput v3, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$createPasskey$1;->label:I

    .line 75
    .line 76
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;->mCredMan:Lu22;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance p2, Lo21;

    .line 82
    .line 83
    invoke-static {v0}, Lnc8;->D(Ljv1;)Ljv1;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p2, v3, v0}, Lo21;-><init>(ILjv1;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lo21;->u()V

    .line 91
    .line 92
    .line 93
    new-instance v8, Landroid/os/CancellationSignal;

    .line 94
    .line 95
    invoke-direct {v8}, Landroid/os/CancellationSignal;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lr22;

    .line 99
    .line 100
    invoke-direct {v0, v8}, Lr22;-><init>(Landroid/os/CancellationSignal;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0}, Lo21;->w(Lmt3;)V

    .line 104
    .line 105
    .line 106
    new-instance v10, Lvk9;

    .line 107
    .line 108
    const/4 v0, 0x4

    .line 109
    invoke-direct {v10, p2, v0}, Lvk9;-><init>(Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    new-instance v9, Lp22;

    .line 113
    .line 114
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lln5;

    .line 118
    .line 119
    iget-object p1, p1, Lu22;->a:Landroid/content/Context;

    .line 120
    .line 121
    invoke-direct {v0, p1}, Lln5;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v5}, Lln5;->m(Lln5;Ljava/lang/Object;)Lx22;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    new-instance p0, Lg12;

    .line 131
    .line 132
    const-string p1, "createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    .line 133
    .line 134
    invoke-direct {p0, p1}, Lg12;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10, p0}, Lvk9;->onError(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    iget-object v6, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;->activity:Landroidx/fragment/app/u;

    .line 142
    .line 143
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    const-string v0, "android.hardware.type.watch"

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_4

    .line 154
    .line 155
    new-instance p0, Lm12;

    .line 156
    .line 157
    const-string p1, "createCredential is not supported on this device"

    .line 158
    .line 159
    invoke-direct {p0, p1}, Lm12;-><init>(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v10, p0}, Lvk9;->onError(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    move-object v7, v5

    .line 167
    move-object v5, p1

    .line 168
    invoke-interface/range {v5 .. v10}, Lx22;->onCreateCredential(Landroid/content/Context;Li12;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V

    .line 169
    .line 170
    .line 171
    :goto_1
    invoke-virtual {p2}, Lo21;->s()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    sget-object p0, Lyx1;->a:Lyx1;

    .line 176
    .line 177
    if-ne p2, p0, :cond_5

    .line 178
    .line 179
    return-object p0

    .line 180
    :cond_5
    move-object p0, v4

    .line 181
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    check-cast p2, Lf22;

    .line 185
    .line 186
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 187
    .line 188
    const-string p1, "Passkey created successfully."

    .line 189
    .line 190
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-object p2

    .line 194
    :cond_6
    const-string p0, "Passkey creation is not supported on Android versions below 9 (Pie). Current version: "

    .line 195
    .line 196
    invoke-static {p2, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 201
    .line 202
    invoke-static {v4, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string p0, "Passkey creation requires Android 9 or higher."

    .line 206
    .line 207
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-object v2
.end method

.method public final getPasskey(Ljava/lang/String;Lkv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$getPasskey$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$getPasskey$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$getPasskey$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$getPasskey$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$getPasskey$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$getPasskey$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$getPasskey$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$getPasskey$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$getPasskey$1;->L$0:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Lzv3;

    .line 51
    .line 52
    new-instance v1, Lww3;

    .line 53
    .line 54
    invoke-direct {v1, p1}, Lww3;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v1, 0x0

    .line 62
    const/16 v3, 0x1e

    .line 63
    .line 64
    invoke-direct {p2, v3, p1, v1}, Lzv3;-><init>(ILjava/util/List;Z)V

    .line 65
    .line 66
    .line 67
    const-string p1, "CredentialManagerHandler:getPasskey"

    .line 68
    .line 69
    iput-object p1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$getPasskey$1;->L$0:Ljava/lang/String;

    .line 70
    .line 71
    iput v2, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler$getPasskey$1;->label:I

    .line 72
    .line 73
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;->mCredMan:Lu22;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;->activity:Landroidx/fragment/app/u;

    .line 79
    .line 80
    invoke-static {p0, p2, v0}, Lu22;->b(Landroid/content/Context;Lzv3;Lkv1;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    sget-object p0, Lyx1;->a:Lyx1;

    .line 85
    .line 86
    if-ne p2, p0, :cond_3

    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_3
    move-object p0, p1

    .line 90
    :goto_1
    move-object p1, p2

    .line 91
    check-cast p1, Lbw3;

    .line 92
    .line 93
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 94
    .line 95
    const-string p1, "Passkey retrieved successfully."

    .line 96
    .line 97
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object p2
.end method
