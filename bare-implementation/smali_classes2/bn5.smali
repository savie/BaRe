.class public final synthetic Lbn5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lj90;


# instance fields
.field public final synthetic a:Lu10;

.field public final synthetic b:Lf80;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lu10;Lf80;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbn5;->a:Lu10;

    .line 5
    .line 6
    iput-object p2, p0, Lbn5;->b:Lf80;

    .line 7
    .line 8
    iput-boolean p3, p0, Lbn5;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final p(Ln58;Lz80;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lbn5;->a:Lu10;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 6
    .line 7
    invoke-static {p2}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "handleSignInResult Token Exchange failed: "

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    const-string v2, "NoGmsClient"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Ldn5;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ldn5;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    if-nez p1, :cond_1

    .line 39
    .line 40
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 41
    .line 42
    const/4 v5, 0x4

    .line 43
    const/4 v6, 0x0

    .line 44
    const-string v2, "NoGmsClient"

    .line 45
    .line 46
    const-string v3, "handleSignInResult TokenResponse is null"

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Ldn5;

    .line 53
    .line 54
    invoke-direct {p0, v3}, Ldn5;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object v1, p1, Ln58;->e:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v2, p1, Ln58;->c:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, p0, Lbn5;->b:Lf80;

    .line 66
    .line 67
    invoke-virtual {v3, p1, p2}, Lf80;->e(Ln58;Lz80;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lhz3;->b(Lf80;)V

    .line 71
    .line 72
    .line 73
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    const/4 v3, 0x1

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move v5, p2

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    :goto_0
    move v5, v3

    .line 89
    :goto_1
    xor-int/2addr v5, v3

    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move v6, p2

    .line 100
    goto :goto_3

    .line 101
    :cond_5
    :goto_2
    move v6, v3

    .line 102
    :goto_3
    xor-int/2addr v6, v3

    .line 103
    iget-object p1, p1, Ln58;->f:Ljava/lang/String;

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_7

    .line 112
    .line 113
    :cond_6
    move p2, v3

    .line 114
    :cond_7
    xor-int/lit8 p1, p2, 0x1

    .line 115
    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v3, "handleSignInResult Token exchange successful: accessToken="

    .line 119
    .line 120
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v3, ", idToken="

    .line 127
    .line 128
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v3, ", refreshToken="

    .line 135
    .line 136
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    const/4 v8, 0x4

    .line 147
    const/4 v9, 0x0

    .line 148
    const-string v5, "NoGmsClient"

    .line 149
    .line 150
    const/4 v7, 0x0

    .line 151
    invoke-static/range {v4 .. v9}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-boolean p0, p0, Lbn5;->c:Z

    .line 155
    .line 156
    if-eqz p0, :cond_8

    .line 157
    .line 158
    new-instance p0, Lqz3;

    .line 159
    .line 160
    invoke-direct {p0, v1, v2}, Lqz3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const/4 v8, 0x4

    .line 164
    const/4 v9, 0x0

    .line 165
    const-string v5, "NoGmsClient"

    .line 166
    .line 167
    const-string v6, "firebaseAuthWithGoogle"

    .line 168
    .line 169
    const/4 v7, 0x0

    .line 170
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    sget-object p1, Ld45;->b:Ld45;

    .line 174
    .line 175
    new-instance p2, Lpx;

    .line 176
    .line 177
    const/16 v1, 0xd

    .line 178
    .line 179
    invoke-direct {p2, v0, v1}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth;->d(Ld80;)Lcom/google/android/gms/tasks/Task;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    new-instance v0, Liq0;

    .line 194
    .line 195
    invoke-direct {v0, p1, p2}, Liq0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_8
    sget-object p0, Len5;->a:Len5;

    .line 203
    .line 204
    invoke-virtual {v0, p0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    return-void
.end method
