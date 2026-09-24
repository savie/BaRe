.class public final Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic Q:I


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public final N:Lgv7;

.field public final O:Lgv7;

.field public final P:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lls;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p0, v1}, Lls;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ll90;

    .line 11
    .line 12
    const-class v3, Llc1;

    .line 13
    .line 14
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lms;

    .line 19
    .line 20
    const/4 v5, 0x5

    .line 21
    invoke-direct {v4, p0, v5}, Lms;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Lns;

    .line 25
    .line 26
    invoke-direct {v5, p0, v1}, Lns;-><init>(Lil0;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3, v4, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->K:Ll90;

    .line 33
    .line 34
    new-instance v0, Lgj;

    .line 35
    .line 36
    const/16 v1, 0xd

    .line 37
    .line 38
    invoke-direct {v0, p0, v1}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lgv7;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->L:Lgv7;

    .line 47
    .line 48
    new-instance v0, Lck;

    .line 49
    .line 50
    const/16 v2, 0xc

    .line 51
    .line 52
    invoke-direct {v0, p0, v2}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lgv7;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->M:Lgv7;

    .line 61
    .line 62
    new-instance v0, Ldk;

    .line 63
    .line 64
    invoke-direct {v0, p0, v1}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lgv7;

    .line 68
    .line 69
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->N:Lgv7;

    .line 73
    .line 74
    new-instance v0, Lek;

    .line 75
    .line 76
    invoke-direct {v0, p0, v1}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Lgv7;

    .line 80
    .line 81
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 82
    .line 83
    .line 84
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O:Lgv7;

    .line 85
    .line 86
    new-instance v0, Lah;

    .line 87
    .line 88
    invoke-direct {v0, p0, v1}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lgv7;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->P:Lgv7;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->N:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final O()Llc1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Llc1;

    .line 8
    .line 9
    return-object p0
.end method

.method public final P(Ldd1;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Ld45;->b:Ld45;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->M(Lil0;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 34
    .line 35
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v3, "Starting to connect with "

    .line 44
    .line 45
    invoke-static {v3, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v5, 0x4

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->N()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Ldd1;->getConstant()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "SIGN_IN_START cloud="

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "CloudRuntimeSmoke"

    .line 80
    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_2
    const v0, 0x7f13042d

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lil0;->M(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object p1, v0, Llc1;->i:Ldd1;

    .line 95
    .line 96
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const/4 v1, 0x1

    .line 101
    iput-boolean v1, v0, Llc1;->j:Z

    .line 102
    .line 103
    invoke-virtual {p1}, Ldd1;->getStartConnectActivity()Lqt3;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const/16 v0, 0x7d4

    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {p1, p0, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 1
    const/16 v0, 0x7d4

    .line 2
    .line 3
    if-ne p1, v0, :cond_f

    .line 4
    .line 5
    invoke-virtual {p0}, Lil0;->H()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Llc1;->i:Ldd1;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    const-string v1, "org.swiftapps.swiftbackup.cloud.connect.extra.CLOUD_CONSTANT"

    .line 18
    .line 19
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p3, v0

    .line 25
    :goto_0
    invoke-static {p1, p3}, Lcy0;->F(Ldd1;Ljava/lang/String;)Ldd1;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    iput-object p1, p3, Llc1;->i:Ldd1;

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p3, Llc1;->j:Z

    .line 41
    .line 42
    const/4 p3, -0x1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-eq p2, p3, :cond_4

    .line 45
    .line 46
    const/16 v3, 0xb3

    .line 47
    .line 48
    if-eq p2, v3, :cond_1

    .line 49
    .line 50
    sget-object v3, Lec1;->ClearCloudPrefs:Lec1;

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    if-nez p1, :cond_2

    .line 54
    .line 55
    move v3, p3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    sget-object v3, Lfc1;->a:[I

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    aget v3, v3, v4

    .line 64
    .line 65
    :goto_1
    if-ne v3, v2, :cond_3

    .line 66
    .line 67
    sget-object v3, Lec1;->RetryWithBrowserSignIn:Lec1;

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    sget-object v3, Lec1;->ClearCloudPrefs:Lec1;

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    if-eqz p1, :cond_5

    .line 74
    .line 75
    sget-object v3, Lec1;->CompleteConnection:Lec1;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    sget-object v3, Lec1;->ClearCloudPrefs:Lec1;

    .line 79
    .line 80
    :goto_2
    sget-object v4, Lvb1;->a:[I

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    aget v4, v4, v5

    .line 87
    .line 88
    if-eq v4, v2, :cond_d

    .line 89
    .line 90
    const/4 v5, 0x2

    .line 91
    if-eq v4, v5, :cond_b

    .line 92
    .line 93
    const/4 p1, 0x3

    .line 94
    if-ne v4, p1, :cond_a

    .line 95
    .line 96
    if-ne p2, p3, :cond_6

    .line 97
    .line 98
    sget-object p1, Lec1;->ClearCloudPrefs:Lec1;

    .line 99
    .line 100
    if-ne v3, p1, :cond_6

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    move v1, p2

    .line 104
    :goto_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->N()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_9

    .line 112
    .line 113
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    iget-object p0, p0, Llc1;->i:Ldd1;

    .line 118
    .line 119
    if-eqz p0, :cond_7

    .line 120
    .line 121
    invoke-virtual {p0}, Ldd1;->getConstant()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :cond_7
    if-nez v0, :cond_8

    .line 126
    .line 127
    const-string v0, ""

    .line 128
    .line 129
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string p1, "SIGN_IN_RESULT status=FAIL cloud="

    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p1, " resultCode="

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    const-string p1, "CloudRuntimeSmoke"

    .line 152
    .line 153
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    :cond_9
    sget-object p0, Ltb1;->a:Ltb1;

    .line 157
    .line 158
    invoke-static {}, Lqb1;->a()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_a
    invoke-static {}, Lq;->j()V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_b
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 167
    .line 168
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const/4 v7, 0x4

    .line 173
    const/4 v8, 0x0

    .line 174
    const-string v5, "GMS Google Drive authorization failed. Retrying with browser sign-in."

    .line 175
    .line 176
    const/4 v6, 0x0

    .line 177
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    sget-object p2, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 181
    .line 182
    invoke-virtual {p2, v2}, Lorg/swiftapps/swiftbackup/common/V;->setG(Z)V

    .line 183
    .line 184
    .line 185
    if-eqz p1, :cond_c

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->P(Ldd1;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_c
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 192
    .line 193
    .line 194
    sget-object p0, Ltb1;->a:Ltb1;

    .line 195
    .line 196
    invoke-static {}, Lqb1;->a()V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_d
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 201
    .line 202
    .line 203
    sget-object p2, Ltb1;->a:Ltb1;

    .line 204
    .line 205
    invoke-static {p1}, Lqb1;->r(Ldd1;)V

    .line 206
    .line 207
    .line 208
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 209
    .line 210
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    if-eqz p1, :cond_e

    .line 215
    .line 216
    invoke-virtual {p1}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    :cond_e
    const-string p1, "Connected with "

    .line 221
    .line 222
    invoke-static {p1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    const/4 v5, 0x4

    .line 227
    const/4 v6, 0x0

    .line 228
    const/4 v4, 0x0

    .line 229
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    sget-object p1, Lzn4;->a:Lzn4;

    .line 237
    .line 238
    new-instance p1, Lkf;

    .line 239
    .line 240
    const/16 p2, 0xe

    .line 241
    .line 242
    invoke-direct {p1, p0, p2}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 243
    .line 244
    .line 245
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->L:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lxb1;

    .line 11
    .line 12
    iget-object v1, v1, Lxb1;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lil0;->B()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lxb1;

    .line 25
    .line 26
    iget-object v0, v0, Lxb1;->b:Lw00;

    .line 27
    .line 28
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lix0;

    .line 31
    .line 32
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-virtual {v1, v2}, Lnc8;->Z(Z)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lg7;

    .line 50
    .line 51
    const/4 v2, 0x5

    .line 52
    invoke-direct {v1, p0, v2}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O:Lgv7;

    .line 59
    .line 60
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    const/4 v1, 0x7

    .line 67
    invoke-static {v0, v1}, Lsz8;->b(Landroid/view/View;I)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectLayoutManager;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ldd1;->getEntries()Ljx2;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ll3;

    .line 83
    .line 84
    invoke-virtual {v1}, Ll3;->d()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 89
    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->P:Lgv7;

    .line 96
    .line 97
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lac1;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Ly2;

    .line 107
    .line 108
    const/4 v2, 0x3

    .line 109
    invoke-direct {v0, v2, p0, p1}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const-string p1, "cloud_connect_edit_warning_shown"

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 116
    .line 117
    if-eqz v3, :cond_1

    .line 118
    .line 119
    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const-string p1, "prefs"

    .line 125
    .line 126
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    move p1, v2

    .line 131
    :goto_0
    if-nez p1, :cond_3

    .line 132
    .line 133
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->N()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_2

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    new-instance p1, Lhv1;

    .line 141
    .line 142
    const v3, 0x7f140160

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, p0, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 146
    .line 147
    .line 148
    new-instance v4, Ls35;

    .line 149
    .line 150
    invoke-direct {v4, p0, v3, p1, v1}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, v4, Lva;->b:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast p1, Lra;

    .line 156
    .line 157
    iput-boolean v2, p1, Lra;->m:Z

    .line 158
    .line 159
    const p1, 0x7f1303e1

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, p1}, Lv75;->v(I)V

    .line 163
    .line 164
    .line 165
    const p1, 0x7f130168

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, p1}, Lv75;->n(I)V

    .line 169
    .line 170
    .line 171
    new-instance p1, Lub1;

    .line 172
    .line 173
    invoke-direct {p1, p0, v0}, Lub1;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;Ly2;)V

    .line 174
    .line 175
    .line 176
    const p0, 0x7f130299

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, p0, p1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ly2;->invoke()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    :goto_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lil0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Llc1;->f:Lex6;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->P:Lgv7;

    .line 14
    .line 15
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lac1;

    .line 20
    .line 21
    iget-object v1, v1, Lgm7;->e:Lfm7;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Llc1;->i:Ldd1;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Ldd1;->getConstant()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    const-string v1, "checked_cloud_constant"

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-boolean p0, p0, Llc1;->j:Z

    .line 50
    .line 51
    const-string v0, "connect_activity_launched"

    .line 52
    .line 53
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
