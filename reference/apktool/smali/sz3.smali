.class public abstract Lsz3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Landroid/content/ComponentName;

.field public static final c:Lu50;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "com.google.work"

    .line 2
    .line 3
    const-string v1, "cn.google"

    .line 4
    .line 5
    const-string v2, "com.google"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lsz3;->a:[Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Landroid/content/ComponentName;

    .line 14
    .line 15
    const-string v1, "com.google.android.gms"

    .line 16
    .line 17
    const-string v2, "com.google.android.gms.auth.GetToken"

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lsz3;->b:Landroid/content/ComponentName;

    .line 23
    .line 24
    const-string v0, "GoogleAuthUtil"

    .line 25
    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lu50;

    .line 31
    .line 32
    const-string v2, "Auth"

    .line 33
    .line 34
    invoke-direct {v1, v2, v0}, Lu50;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lsz3;->c:Lu50;

    .line 38
    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "Calling this from your main thread can lead to deadlock"

    .line 2
    .line 3
    invoke-static {v0}, Lly8;->g(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lsz3;->f(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1}, Lsz3;->g(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lje9;->c(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Ldn9;->b:Ldn9;

    .line 21
    .line 22
    iget-object v0, v0, Ldn9;->a:Lxe9;

    .line 23
    .line 24
    invoke-interface {v0}, Lxe9;->zza()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lgn9;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lgn9;->b:Lrd9;

    .line 34
    .line 35
    invoke-virtual {v0}, Lje9;->b()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-static {p0}, Lsz3;->i(Landroid/content/Context;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    new-instance v2, Lz39;

    .line 54
    .line 55
    sget-object v5, Lz39;->k:Loe;

    .line 56
    .line 57
    sget-object v7, Ljz3;->c:Ljz3;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    sget-object v6, Lme;->g:Lle;

    .line 61
    .line 62
    move-object v3, p0

    .line 63
    invoke-direct/range {v2 .. v7}, Lkz3;-><init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V

    .line 64
    .line 65
    .line 66
    new-instance p0, Lka9;

    .line 67
    .line 68
    invoke-direct {p0}, Lka9;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lka9;->b:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {}, Lr19;->a()Lby7;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v4, Lzv1;->i:Ly53;

    .line 78
    .line 79
    filled-new-array {v4}, [Ly53;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iput-object v4, v0, Lby7;->c:[Ly53;

    .line 84
    .line 85
    new-instance v4, Ls79;

    .line 86
    .line 87
    invoke-direct {v4, v2, p0}, Ls79;-><init>(Lz39;Lka9;)V

    .line 88
    .line 89
    .line 90
    iput-object v4, v0, Lby7;->a:Lyi6;

    .line 91
    .line 92
    const/16 p0, 0x5e9

    .line 93
    .line 94
    iput p0, v0, Lby7;->d:I

    .line 95
    .line 96
    invoke-virtual {v0}, Lby7;->a()Lr19;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const/4 v0, 0x1

    .line 101
    invoke-virtual {v2, v0, p0}, Lkz3;->b(ILr19;)Lcom/google/android/gms/tasks/Task;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const-string v2, "clear token"

    .line 106
    .line 107
    :try_start_0
    invoke-static {p0, v2}, Lsz3;->e(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lre; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    move-object p0, v0

    .line 113
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string v0, "%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s"

    .line 122
    .line 123
    sget-object v2, Lsz3;->c:Lu50;

    .line 124
    .line 125
    invoke-virtual {v2, v0, p0}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    move-object v3, p0

    .line 130
    :goto_0
    new-instance p0, Lw00;

    .line 131
    .line 132
    const/16 v0, 0xc

    .line 133
    .line 134
    invoke-direct {p0, v0, p1, v1}, Lw00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    sget-object p1, Lsz3;->b:Landroid/content/ComponentName;

    .line 138
    .line 139
    invoke-static {v3, p1, p0}, Lsz3;->d(Landroid/content/Context;Landroid/content/ComponentName;Lqp9;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v1, Lsz3;->c:Lu50;

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lsz3;->h(Landroid/accounts/Account;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "Calling this from your main thread can lead to deadlock"

    .line 12
    .line 13
    invoke-static {v2}, Lly8;->g(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "Scope cannot be empty or null."

    .line 17
    .line 18
    const-string v3, "oauth2:https://www.googleapis.com/auth/drive.file"

    .line 19
    .line 20
    invoke-static {v3, v2}, Lly8;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lsz3;->h(Landroid/accounts/Account;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lsz3;->f(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v2}, Lsz3;->g(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lje9;->c(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Ldn9;->b:Ldn9;

    .line 41
    .line 42
    iget-object v0, v0, Ldn9;->a:Lxe9;

    .line 43
    .line 44
    invoke-interface {v0}, Lxe9;->zza()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lgn9;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sget-object v0, Lgn9;->b:Lrd9;

    .line 54
    .line 55
    invoke-virtual {v0}, Lje9;->b()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-static {p0}, Lsz3;->i(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    new-instance v4, Lz39;

    .line 74
    .line 75
    sget-object v7, Lz39;->k:Loe;

    .line 76
    .line 77
    sget-object v9, Ljz3;->c:Ljz3;

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    sget-object v8, Lme;->g:Lle;

    .line 81
    .line 82
    move-object v5, p0

    .line 83
    invoke-direct/range {v4 .. v9}, Lkz3;-><init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V

    .line 84
    .line 85
    .line 86
    const-string p0, "Scope cannot be null!"

    .line 87
    .line 88
    invoke-static {v3, p0}, Lly8;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lr19;->a()Lby7;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    sget-object v0, Lzv1;->i:Ly53;

    .line 96
    .line 97
    filled-new-array {v0}, [Ly53;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lby7;->c:[Ly53;

    .line 102
    .line 103
    new-instance v0, Lw00;

    .line 104
    .line 105
    invoke-direct {v0, v4, p1, v2}, Lw00;-><init>(Lz39;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lby7;->a:Lyi6;

    .line 109
    .line 110
    const/16 v0, 0x5e8

    .line 111
    .line 112
    iput v0, p0, Lby7;->d:I

    .line 113
    .line 114
    invoke-virtual {p0}, Lby7;->a()Lr19;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const/4 v0, 0x1

    .line 119
    invoke-virtual {v4, v0, p0}, Lkz3;->b(ILr19;)Lcom/google/android/gms/tasks/Task;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    const-string v3, "token retrieval"

    .line 124
    .line 125
    :try_start_0
    invoke-static {p0, v3}, Lsz3;->e(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Landroid/os/Bundle;

    .line 130
    .line 131
    if-eqz p0, :cond_0

    .line 132
    .line 133
    invoke-static {v5, p0}, Lsz3;->c(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    move-object p0, v0

    .line 140
    goto :goto_0

    .line 141
    :cond_0
    const-string p0, "Service call returned null."

    .line 142
    .line 143
    const/4 v0, 0x0

    .line 144
    new-array v0, v0, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-virtual {v1, p0, v0}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    new-instance p0, Ljava/io/IOException;

    .line 150
    .line 151
    const-string v0, "Service unavailable."

    .line 152
    .line 153
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0
    :try_end_0
    .catch Lre; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    filled-new-array {v3, p0}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    const-string v0, "%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s"

    .line 166
    .line 167
    invoke-virtual {v1, v0, p0}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_1
    move-object v5, p0

    .line 172
    :goto_1
    new-instance p0, Lka;

    .line 173
    .line 174
    invoke-direct {p0, p1, v2, v5}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    sget-object p1, Lsz3;->b:Landroid/content/ComponentName;

    .line 178
    .line 179
    invoke-static {v5, p1, p0}, Lsz3;->d(Landroid/content/Context;Landroid/content/ComponentName;Lqp9;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    check-cast p0, Lcom/google/android/gms/auth/TokenData;

    .line 184
    .line 185
    :goto_2
    iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->b:Ljava/lang/String;

    .line 186
    .line 187
    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-class v1, Lcom/google/android/gms/auth/TokenData;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const-string v2, "tokenDetails"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    move-object v1, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    const-string v1, "TokenData"

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/google/android/gms/auth/TokenData;

    .line 37
    .line 38
    :goto_0
    if-eqz v1, :cond_3

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_3
    const-string v1, "Error"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "userRecoveryIntent"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/content/Intent;

    .line 54
    .line 55
    const-string v4, "userRecoveryPendingIntent"

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/app/PendingIntent;

    .line 62
    .line 63
    const/16 v4, 0x3d

    .line 64
    .line 65
    invoke-static {v4}, Ldj7;->C(I)[I

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    array-length v5, v4

    .line 70
    const/4 v6, 0x0

    .line 71
    move v7, v6

    .line 72
    :goto_1
    const-string v8, "BAD_REQUEST"

    .line 73
    .line 74
    const-string v9, "INVALID_SCOPE"

    .line 75
    .line 76
    const-string v10, "RESTRICTED_CLIENT"

    .line 77
    .line 78
    const-string v11, "INVALID_AUDIENCE"

    .line 79
    .line 80
    const-string v12, "UNREGISTERED_ON_API_CONSOLE"

    .line 81
    .line 82
    const-string v13, "ALREADY_HAS_GMAIL"

    .line 83
    .line 84
    if-ge v7, v5, :cond_5

    .line 85
    .line 86
    aget v14, v4, v7

    .line 87
    .line 88
    packed-switch v14, :pswitch_data_0

    .line 89
    .line 90
    .line 91
    throw v3

    .line 92
    :pswitch_0
    const-string v15, "AppSuspended"

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :pswitch_1
    const-string v15, "AccountNotPresent"

    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :pswitch_2
    const-string v15, "AuthBindingError"

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :pswitch_3
    const-string v15, "AuthSecurityError"

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :pswitch_4
    const-string v15, "ProfileUpgradeError"

    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :pswitch_5
    const-string v15, "GPlusInterstitial"

    .line 113
    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :pswitch_6
    const-string v15, "GPlusInvalidChar"

    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :pswitch_7
    const-string v15, "GPlusNickname"

    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :pswitch_8
    const-string v15, "GPlusOther"

    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :pswitch_9
    const-string v15, "UsernameUnavailable"

    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :pswitch_a
    const-string v15, "ServerError"

    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :pswitch_b
    const-string v15, "RequestDenied"

    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :pswitch_c
    const-string v15, "NoGmail"

    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :pswitch_d
    const-string v15, "NotLoggedIn"

    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :pswitch_e
    const-string v15, "LoginFail"

    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :pswitch_f
    const-string v15, "ExistingUsername"

    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :pswitch_10
    const-string v15, "DeletedGmail"

    .line 157
    .line 158
    goto/16 :goto_2

    .line 159
    .line 160
    :pswitch_11
    const-string v15, "BadUsername"

    .line 161
    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :pswitch_12
    const-string v15, "BadRequest"

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_13
    const-string v15, "WeakPassword"

    .line 169
    .line 170
    goto/16 :goto_2

    .line 171
    .line 172
    :pswitch_14
    move-object v15, v13

    .line 173
    goto/16 :goto_2

    .line 174
    .line 175
    :pswitch_15
    const-string v15, "DeviceManagementRequiredOrSyncDisabled"

    .line 176
    .line 177
    goto/16 :goto_2

    .line 178
    .line 179
    :pswitch_16
    const-string v15, "DeviceManagementRequired"

    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :pswitch_17
    const-string v15, "DeviceManagementScreenlockRequired"

    .line 184
    .line 185
    goto/16 :goto_2

    .line 186
    .line 187
    :pswitch_18
    const-string v15, "DeviceManagementDeactivated"

    .line 188
    .line 189
    goto/16 :goto_2

    .line 190
    .line 191
    :pswitch_19
    const-string v15, "DeviceManagementStaleSyncRequired"

    .line 192
    .line 193
    goto/16 :goto_2

    .line 194
    .line 195
    :pswitch_1a
    const-string v15, "DeviceManagementAdminPendingApproval"

    .line 196
    .line 197
    goto/16 :goto_2

    .line 198
    .line 199
    :pswitch_1b
    const-string v15, "DeviceManagementAdminBlocked"

    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :pswitch_1c
    const-string v15, "DeviceManagementSyncDisabled"

    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :pswitch_1d
    const-string v15, "DeviceManagementInternalError"

    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :pswitch_1e
    const-string v15, "ThirdPartyDeviceManagementRequired"

    .line 212
    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :pswitch_1f
    move-object v15, v12

    .line 216
    goto/16 :goto_2

    .line 217
    .line 218
    :pswitch_20
    move-object v15, v11

    .line 219
    goto/16 :goto_2

    .line 220
    .line 221
    :pswitch_21
    move-object v15, v10

    .line 222
    goto/16 :goto_2

    .line 223
    .line 224
    :pswitch_22
    const-string v15, "PermissionDenied"

    .line 225
    .line 226
    goto/16 :goto_2

    .line 227
    .line 228
    :pswitch_23
    const-string v15, "UserCancel"

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :pswitch_24
    move-object v15, v9

    .line 232
    goto :goto_2

    .line 233
    :pswitch_25
    const-string v15, "NeedRemoteConsent"

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :pswitch_26
    const-string v15, "NeedPermission"

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :pswitch_27
    const-string v15, "ChallengeRequired"

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :pswitch_28
    const-string v15, "ServiceDisabled"

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :pswitch_29
    const-string v15, "AccountDeleted"

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :pswitch_2a
    const-string v15, "CaptchaRequired"

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :pswitch_2b
    const-string v15, "AccountDisabled"

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :pswitch_2c
    const-string v15, "TermsNotAgreed"

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :pswitch_2d
    const-string v15, "NotVerified"

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :pswitch_2e
    const-string v15, "Unknown"

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :pswitch_2f
    const-string v15, "NeedsBrowser"

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :pswitch_30
    const-string v15, "PostSignInFlowRequired"

    .line 267
    .line 268
    goto :goto_2

    .line 269
    :pswitch_31
    const-string v15, "InvalidSecondFactor"

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :pswitch_32
    const-string v15, "EmptyConsumerPackageOrSig"

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :pswitch_33
    move-object v15, v8

    .line 276
    goto :goto_2

    .line 277
    :pswitch_34
    const-string v15, "BadAuthentication"

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :pswitch_35
    const-string v15, "IllegalArgument"

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :pswitch_36
    const-string v15, "InternalError"

    .line 284
    .line 285
    goto :goto_2

    .line 286
    :pswitch_37
    const-string v15, "ServiceUnavailable"

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :pswitch_38
    const-string v15, "NetworkError"

    .line 290
    .line 291
    goto :goto_2

    .line 292
    :pswitch_39
    const-string v15, "UNKNOWN_ERR"

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :pswitch_3a
    const-string v15, "Ok"

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :pswitch_3b
    const-string v15, "SocketTimeout"

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :pswitch_3c
    const-string v15, "ClientLoginDisabled"

    .line 302
    .line 303
    :goto_2
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v15

    .line 307
    if-eqz v15, :cond_4

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 311
    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :cond_5
    const/16 v14, 0xf

    .line 315
    .line 316
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v5, "[GoogleAuthUtil] error status:"

    .line 319
    .line 320
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    packed-switch v14, :pswitch_data_1

    .line 324
    .line 325
    .line 326
    const-string v8, "null"

    .line 327
    .line 328
    goto/16 :goto_4

    .line 329
    .line 330
    :pswitch_3d
    const-string v8, "APP_SUSPENDED"

    .line 331
    .line 332
    goto/16 :goto_4

    .line 333
    .line 334
    :pswitch_3e
    const-string v8, "ACCOUNT_NOT_PRESENT"

    .line 335
    .line 336
    goto/16 :goto_4

    .line 337
    .line 338
    :pswitch_3f
    const-string v8, "AUTH_BINDING_ERROR"

    .line 339
    .line 340
    goto/16 :goto_4

    .line 341
    .line 342
    :pswitch_40
    const-string v8, "AUTH_SECURITY_ERROR"

    .line 343
    .line 344
    goto/16 :goto_4

    .line 345
    .line 346
    :pswitch_41
    const-string v8, "GPLUS_PROFILE_ERROR"

    .line 347
    .line 348
    goto/16 :goto_4

    .line 349
    .line 350
    :pswitch_42
    const-string v8, "GPLUS_INTERSTITIAL"

    .line 351
    .line 352
    goto/16 :goto_4

    .line 353
    .line 354
    :pswitch_43
    const-string v8, "GPLUS_INVALID_CHAR"

    .line 355
    .line 356
    goto/16 :goto_4

    .line 357
    .line 358
    :pswitch_44
    const-string v8, "GPLUS_NICKNAME"

    .line 359
    .line 360
    goto/16 :goto_4

    .line 361
    .line 362
    :pswitch_45
    const-string v8, "GPLUS_OTHER"

    .line 363
    .line 364
    goto/16 :goto_4

    .line 365
    .line 366
    :pswitch_46
    const-string v8, "USERNAME_UNAVAILABLE"

    .line 367
    .line 368
    goto/16 :goto_4

    .line 369
    .line 370
    :pswitch_47
    const-string v8, "SERVER_ERROR"

    .line 371
    .line 372
    goto/16 :goto_4

    .line 373
    .line 374
    :pswitch_48
    const-string v8, "REQUEST_DENIED"

    .line 375
    .line 376
    goto/16 :goto_4

    .line 377
    .line 378
    :pswitch_49
    const-string v8, "NO_GMAIL"

    .line 379
    .line 380
    goto/16 :goto_4

    .line 381
    .line 382
    :pswitch_4a
    const-string v8, "NOT_LOGGED_IN"

    .line 383
    .line 384
    goto/16 :goto_4

    .line 385
    .line 386
    :pswitch_4b
    const-string v8, "LOGIN_FAIL"

    .line 387
    .line 388
    goto/16 :goto_4

    .line 389
    .line 390
    :pswitch_4c
    const-string v8, "EXISTING_USERNAME"

    .line 391
    .line 392
    goto/16 :goto_4

    .line 393
    .line 394
    :pswitch_4d
    const-string v8, "DELETED_GMAIL"

    .line 395
    .line 396
    goto/16 :goto_4

    .line 397
    .line 398
    :pswitch_4e
    const-string v8, "BAD_USERNAME"

    .line 399
    .line 400
    goto/16 :goto_4

    .line 401
    .line 402
    :pswitch_4f
    const-string v8, "BAD_PASSWORD"

    .line 403
    .line 404
    goto/16 :goto_4

    .line 405
    .line 406
    :pswitch_50
    move-object v8, v13

    .line 407
    goto/16 :goto_4

    .line 408
    .line 409
    :pswitch_51
    const-string v8, "DEVICE_MANAGEMENT_REQUIRED"

    .line 410
    .line 411
    goto/16 :goto_4

    .line 412
    .line 413
    :pswitch_52
    const-string v8, "DM_REQUIRED"

    .line 414
    .line 415
    goto/16 :goto_4

    .line 416
    .line 417
    :pswitch_53
    const-string v8, "DM_SCREENLOCK_REQUIRED"

    .line 418
    .line 419
    goto/16 :goto_4

    .line 420
    .line 421
    :pswitch_54
    const-string v8, "DM_DEACTIVATED"

    .line 422
    .line 423
    goto/16 :goto_4

    .line 424
    .line 425
    :pswitch_55
    const-string v8, "DM_STALE_SYNC_REQUIRED"

    .line 426
    .line 427
    goto/16 :goto_4

    .line 428
    .line 429
    :pswitch_56
    const-string v8, "DM_ADMIN_PENDING_APPROVAL"

    .line 430
    .line 431
    goto/16 :goto_4

    .line 432
    .line 433
    :pswitch_57
    const-string v8, "DM_ADMIN_BLOCKED"

    .line 434
    .line 435
    goto/16 :goto_4

    .line 436
    .line 437
    :pswitch_58
    const-string v8, "DM_SYNC_DISABLED"

    .line 438
    .line 439
    goto/16 :goto_4

    .line 440
    .line 441
    :pswitch_59
    const-string v8, "DM_INTERNAL_ERROR"

    .line 442
    .line 443
    goto/16 :goto_4

    .line 444
    .line 445
    :pswitch_5a
    const-string v8, "THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED"

    .line 446
    .line 447
    goto/16 :goto_4

    .line 448
    .line 449
    :pswitch_5b
    move-object v8, v12

    .line 450
    goto/16 :goto_4

    .line 451
    .line 452
    :pswitch_5c
    move-object v8, v11

    .line 453
    goto/16 :goto_4

    .line 454
    .line 455
    :pswitch_5d
    move-object v8, v10

    .line 456
    goto/16 :goto_4

    .line 457
    .line 458
    :pswitch_5e
    const-string v8, "PERMISSION_DENIED"

    .line 459
    .line 460
    goto/16 :goto_4

    .line 461
    .line 462
    :pswitch_5f
    const-string v8, "USER_CANCEL"

    .line 463
    .line 464
    goto :goto_4

    .line 465
    :pswitch_60
    move-object v8, v9

    .line 466
    goto :goto_4

    .line 467
    :pswitch_61
    const-string v8, "NEED_REMOTE_CONSENT"

    .line 468
    .line 469
    goto :goto_4

    .line 470
    :pswitch_62
    const-string v8, "NEED_PERMISSION"

    .line 471
    .line 472
    goto :goto_4

    .line 473
    :pswitch_63
    const-string v8, "CHALLENGE_REQUIRED"

    .line 474
    .line 475
    goto :goto_4

    .line 476
    :pswitch_64
    const-string v8, "SERVICE_DISABLED"

    .line 477
    .line 478
    goto :goto_4

    .line 479
    :pswitch_65
    const-string v8, "ACCOUNT_DELETED"

    .line 480
    .line 481
    goto :goto_4

    .line 482
    :pswitch_66
    const-string v8, "CAPTCHA"

    .line 483
    .line 484
    goto :goto_4

    .line 485
    :pswitch_67
    const-string v8, "ACCOUNT_DISABLED"

    .line 486
    .line 487
    goto :goto_4

    .line 488
    :pswitch_68
    const-string v8, "TERMS_NOT_AGREED"

    .line 489
    .line 490
    goto :goto_4

    .line 491
    :pswitch_69
    const-string v8, "NOT_VERIFIED"

    .line 492
    .line 493
    goto :goto_4

    .line 494
    :pswitch_6a
    const-string v8, "UNKNOWN"

    .line 495
    .line 496
    goto :goto_4

    .line 497
    :pswitch_6b
    const-string v8, "NEEDS_BROWSER"

    .line 498
    .line 499
    goto :goto_4

    .line 500
    :pswitch_6c
    const-string v8, "NEEDS_POST_SIGN_IN_FLOW"

    .line 501
    .line 502
    goto :goto_4

    .line 503
    :pswitch_6d
    const-string v8, "NEEDS_2F"

    .line 504
    .line 505
    goto :goto_4

    .line 506
    :pswitch_6e
    const-string v8, "EMPTY_CONSUMER_PKG_OR_SIG"

    .line 507
    .line 508
    goto :goto_4

    .line 509
    :pswitch_6f
    const-string v8, "BAD_TOKEN_REQUEST"

    .line 510
    .line 511
    goto :goto_4

    .line 512
    :pswitch_70
    const-string v8, "BAD_AUTHENTICATION"

    .line 513
    .line 514
    goto :goto_4

    .line 515
    :pswitch_71
    const-string v8, "ILLEGAL_ARGUMENT"

    .line 516
    .line 517
    goto :goto_4

    .line 518
    :pswitch_72
    const-string v8, "INTNERNAL_ERROR"

    .line 519
    .line 520
    goto :goto_4

    .line 521
    :pswitch_73
    const-string v8, "SERVICE_UNAVAILABLE"

    .line 522
    .line 523
    goto :goto_4

    .line 524
    :pswitch_74
    const-string v8, "NETWORK_ERROR"

    .line 525
    .line 526
    goto :goto_4

    .line 527
    :pswitch_75
    const-string v8, "UNKNOWN_ERROR"

    .line 528
    .line 529
    goto :goto_4

    .line 530
    :pswitch_76
    const-string v8, "SUCCESS"

    .line 531
    .line 532
    goto :goto_4

    .line 533
    :pswitch_77
    const-string v8, "SOCKET_TIMEOUT"

    .line 534
    .line 535
    goto :goto_4

    .line 536
    :pswitch_78
    const-string v8, "CLIENT_LOGIN_DISABLED"

    .line 537
    .line 538
    :goto_4
    :pswitch_79
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    const-string v5, " with method:getTokenWithDetails"

    .line 542
    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    new-array v5, v6, [Ljava/lang/Object;

    .line 551
    .line 552
    sget-object v7, Lsz3;->c:Lu50;

    .line 553
    .line 554
    invoke-virtual {v7, v4, v5}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    const/16 v4, 0x9

    .line 558
    .line 559
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    if-nez v4, :cond_9

    .line 564
    .line 565
    const/16 v4, 0x13

    .line 566
    .line 567
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    if-nez v4, :cond_9

    .line 572
    .line 573
    const/16 v4, 0x17

    .line 574
    .line 575
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 576
    .line 577
    .line 578
    move-result v4

    .line 579
    if-nez v4, :cond_9

    .line 580
    .line 581
    const/16 v4, 0x18

    .line 582
    .line 583
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    if-nez v4, :cond_9

    .line 588
    .line 589
    const/16 v4, 0xe

    .line 590
    .line 591
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 592
    .line 593
    .line 594
    move-result v4

    .line 595
    if-nez v4, :cond_9

    .line 596
    .line 597
    const/16 v4, 0x1a

    .line 598
    .line 599
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    if-nez v4, :cond_9

    .line 604
    .line 605
    const/16 v4, 0x28

    .line 606
    .line 607
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    if-nez v4, :cond_9

    .line 612
    .line 613
    const/16 v4, 0x20

    .line 614
    .line 615
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 616
    .line 617
    .line 618
    move-result v4

    .line 619
    if-nez v4, :cond_9

    .line 620
    .line 621
    const/16 v4, 0x21

    .line 622
    .line 623
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    if-nez v4, :cond_9

    .line 628
    .line 629
    const/16 v4, 0x22

    .line 630
    .line 631
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    if-nez v4, :cond_9

    .line 636
    .line 637
    const/16 v4, 0x23

    .line 638
    .line 639
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    if-nez v4, :cond_9

    .line 644
    .line 645
    const/16 v4, 0x24

    .line 646
    .line 647
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    if-nez v4, :cond_9

    .line 652
    .line 653
    const/16 v4, 0x25

    .line 654
    .line 655
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 656
    .line 657
    .line 658
    move-result v4

    .line 659
    if-nez v4, :cond_9

    .line 660
    .line 661
    const/16 v4, 0x27

    .line 662
    .line 663
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 664
    .line 665
    .line 666
    move-result v4

    .line 667
    if-nez v4, :cond_9

    .line 668
    .line 669
    const/16 v4, 0x1f

    .line 670
    .line 671
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 672
    .line 673
    .line 674
    move-result v4

    .line 675
    if-nez v4, :cond_9

    .line 676
    .line 677
    const/16 v4, 0x26

    .line 678
    .line 679
    invoke-static {v4, v14}, Ldj7;->a(II)Z

    .line 680
    .line 681
    .line 682
    move-result v4

    .line 683
    if-eqz v4, :cond_6

    .line 684
    .line 685
    goto :goto_6

    .line 686
    :cond_6
    const/4 v0, 0x5

    .line 687
    invoke-static {v0, v14}, Ldj7;->a(II)Z

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    if-nez v0, :cond_8

    .line 692
    .line 693
    const/4 v0, 0x6

    .line 694
    invoke-static {v0, v14}, Ldj7;->a(II)Z

    .line 695
    .line 696
    .line 697
    move-result v0

    .line 698
    if-nez v0, :cond_8

    .line 699
    .line 700
    const/4 v0, 0x7

    .line 701
    invoke-static {v0, v14}, Ldj7;->a(II)Z

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    if-nez v0, :cond_8

    .line 706
    .line 707
    const/16 v0, 0x3a

    .line 708
    .line 709
    invoke-static {v0, v14}, Ldj7;->a(II)Z

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    if-nez v0, :cond_8

    .line 714
    .line 715
    const/16 v0, 0x3c

    .line 716
    .line 717
    invoke-static {v0, v14}, Ldj7;->a(II)Z

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    if-eqz v0, :cond_7

    .line 722
    .line 723
    goto :goto_5

    .line 724
    :cond_7
    new-instance v0, Lrz3;

    .line 725
    .line 726
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    throw v0

    .line 730
    :cond_8
    :goto_5
    invoke-static {v1}, Ly5;->m(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    return-object v3

    .line 734
    :cond_9
    :goto_6
    invoke-static/range {p0 .. p0}, Lje9;->c(Landroid/content/Context;)V

    .line 735
    .line 736
    .line 737
    sget-object v3, Lxm9;->b:Lxm9;

    .line 738
    .line 739
    invoke-virtual {v3}, Lxm9;->a()Lan9;

    .line 740
    .line 741
    .line 742
    move-result-object v3

    .line 743
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 744
    .line 745
    .line 746
    sget-object v3, Lan9;->a:Lrd9;

    .line 747
    .line 748
    invoke-virtual {v3}, Lje9;->b()Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v3

    .line 752
    check-cast v3, Ljava/lang/Boolean;

    .line 753
    .line 754
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 755
    .line 756
    .line 757
    move-result v3

    .line 758
    const/4 v4, 0x1

    .line 759
    if-eqz v3, :cond_e

    .line 760
    .line 761
    if-eqz v0, :cond_b

    .line 762
    .line 763
    if-nez v2, :cond_a

    .line 764
    .line 765
    goto :goto_7

    .line 766
    :cond_a
    new-instance v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 767
    .line 768
    const/4 v3, 0x2

    .line 769
    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    throw v0

    .line 773
    :cond_b
    :goto_7
    sget-object v3, Llz3;->c:Ljava/lang/Object;

    .line 774
    .line 775
    sget v3, Lu04;->e:I

    .line 776
    .line 777
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    const-string v5, "com.google.android.gms"

    .line 782
    .line 783
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 784
    .line 785
    .line 786
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 788
    .line 789
    goto :goto_8

    .line 790
    :catch_0
    const-string v3, "GooglePlayServicesUtil"

    .line 791
    .line 792
    const-string v5, "Google Play services is missing."

    .line 793
    .line 794
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .line 796
    .line 797
    move v3, v6

    .line 798
    :goto_8
    const v5, 0x7fffffff

    .line 799
    .line 800
    .line 801
    if-lt v3, v5, :cond_c

    .line 802
    .line 803
    if-nez v0, :cond_c

    .line 804
    .line 805
    const-string v0, "Recovery PendingIntent is missing on current Gms version: 2147483647 for method: getTokenWithDetails. It should always be present on or above Gms version 2147483647. This indicates a bug in Gms implementation."

    .line 806
    .line 807
    new-array v3, v6, [Ljava/lang/Object;

    .line 808
    .line 809
    invoke-virtual {v7, v0, v3}, Lu50;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    .line 811
    .line 812
    :cond_c
    if-nez v2, :cond_d

    .line 813
    .line 814
    const-string v0, "no recovery Intent found with status="

    .line 815
    .line 816
    const-string v3, " for method=getTokenWithDetails. This shouldn\'t happen"

    .line 817
    .line 818
    invoke-static {v0, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    new-array v3, v6, [Ljava/lang/Object;

    .line 823
    .line 824
    invoke-virtual {v7, v0, v3}, Lu50;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    .line 826
    .line 827
    :cond_d
    new-instance v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 828
    .line 829
    invoke-direct {v0, v4, v2, v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    throw v0

    .line 833
    :cond_e
    new-instance v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 834
    .line 835
    invoke-direct {v0, v4, v2, v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    throw v0

    .line 839
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_79
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;Landroid/content/ComponentName;Lqp9;)Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "Error on service connection."

    .line 2
    .line 3
    const-string v1, "GoogleAuthUtil"

    .line 4
    .line 5
    new-instance v2, Lkt0;

    .line 6
    .line 7
    invoke-direct {v2}, Lkt0;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Ltt9;->a(Landroid/content/Context;)Ltt9;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v3, Lur9;

    .line 18
    .line 19
    invoke-direct {v3, p1}, Lur9;-><init>(Landroid/content/ComponentName;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v3, v2, v1}, Ltt9;->b(Lur9;Landroid/content/ServiceConnection;Ljava/lang/String;)Lhs1;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lhs1;->n()Z

    .line 27
    .line 28
    .line 29
    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v2}, Lkt0;->a()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {p2, v3}, Lqp9;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    new-instance v0, Lur9;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Lur9;-><init>(Landroid/content/ComponentName;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v2}, Ltt9;->c(Lur9;Landroid/content/ServiceConnection;)V

    .line 46
    .line 47
    .line 48
    return-object p2

    .line 49
    :catchall_0
    move-exception p2

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p2

    .line 52
    goto :goto_0

    .line 53
    :catch_1
    move-exception p2

    .line 54
    goto :goto_0

    .line 55
    :catch_2
    move-exception p2

    .line 56
    :goto_0
    :try_start_2
    invoke-static {v1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    new-instance v1, Ljava/io/IOException;

    .line 60
    .line 61
    invoke-direct {v1, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :goto_1
    new-instance v0, Lur9;

    .line 66
    .line 67
    invoke-direct {v0, p1}, Lur9;-><init>(Landroid/content/ComponentName;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0, v2}, Ltt9;->c(Lur9;Landroid/content/ServiceConnection;)V

    .line 71
    .line 72
    .line 73
    throw p2

    .line 74
    :cond_0
    const-string p0, "Could not bind to service."

    .line 75
    .line 76
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    return-object p0

    .line 81
    :catch_3
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v0, "SecurityException while bind to auth service: "

    .line 89
    .line 90
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    new-instance p1, Ljava/io/IOException;

    .line 104
    .line 105
    const-string p2, "SecurityException while binding to Auth service."

    .line 106
    .line 107
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public static e(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, " to finish."

    .line 2
    .line 3
    sget-object v1, Lsz3;->c:Lu50;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string v3, "Canceled while waiting for the task of "

    .line 13
    .line 14
    invoke-static {v3, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-array v0, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/io/IOException;

    .line 24
    .line 25
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :catch_1
    move-exception p0

    .line 30
    const-string v3, "Interrupted while waiting for the task of "

    .line 31
    .line 32
    invoke-static {v3, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-array v0, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v0}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/io/IOException;

    .line 42
    .line 43
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :catch_2
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    instance-of v3, v0, Lre;

    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    check-cast v0, Lre;

    .line 57
    .line 58
    throw v0

    .line 59
    :cond_0
    const-string v0, "Unable to get a result for "

    .line 60
    .line 61
    const-string v3, " due to ExecutionException."

    .line 62
    .line 63
    invoke-static {v0, p1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-array v0, v2, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v1, p1, v0}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Ljava/io/IOException;

    .line 73
    .line 74
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lu04;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lt04; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ls04; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lrz3;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :catch_1
    move-exception p0

    .line 21
    new-instance v0, Lr04;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Landroid/content/Intent;

    .line 28
    .line 29
    iget-object p0, p0, Lt04;->a:Landroid/content/Intent;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public static g(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "clientPackageName"

    .line 8
    .line 9
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "androidPackageName"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const-string p0, "service_connection_start_time_millis"

    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static h(Landroid/accounts/Account;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    const/4 v1, 0x3

    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    sget-object v1, Lsz3;->a:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v1, v1, v0

    .line 16
    .line 17
    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string p0, "Account type not supported"

    .line 30
    .line 31
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const-string p0, "Account name cannot be empty!"

    .line 36
    .line 37
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-object v0, Llz3;->d:Llz3;

    .line 2
    .line 3
    const v1, 0x1110e58

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Lmz3;->c(Landroid/content/Context;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Ldn9;->b:Ldn9;

    .line 14
    .line 15
    iget-object v0, v0, Ldn9;->a:Lxe9;

    .line 16
    .line 17
    invoke-interface {v0}, Lxe9;->zza()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lgn9;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v0, Lgn9;->a:Lyd9;

    .line 27
    .line 28
    invoke-virtual {v0}, Lje9;->b()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lwm9;

    .line 33
    .line 34
    invoke-virtual {v0}, Lwm9;->k()Loh9;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    :goto_0
    const/4 p0, 0x0

    .line 67
    return p0

    .line 68
    :cond_2
    const/4 p0, 0x1

    .line 69
    return p0
.end method
