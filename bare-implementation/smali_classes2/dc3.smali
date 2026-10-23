.class public final Ldc3;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lec3;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lec3;Ljava/lang/String;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldc3;->b:Lec3;

    .line 2
    .line 3
    iput-object p2, p0, Ldc3;->c:Ljava/lang/String;

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
    .locals 2

    .line 1
    new-instance v0, Ldc3;

    .line 2
    .line 3
    iget-object v1, p0, Ldc3;->b:Lec3;

    .line 4
    .line 5
    iget-object p0, p0, Ldc3;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Ldc3;-><init>(Lec3;Ljava/lang/String;Ljv1;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Ldc3;->a:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Ldc3;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ldc3;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ldc3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v1, Lzb3;->a:Lzb3;

    .line 2
    .line 3
    sget-object v2, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v0, p0, Ldc3;->a:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v3, v0

    .line 8
    check-cast v3, Lxx1;

    .line 9
    .line 10
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object p1, p0, Ldc3;->b:Lec3;

    .line 14
    .line 15
    iget-object v0, p1, Lec3;->f:Lsb3;

    .line 16
    .line 17
    iget-object v4, p1, Lec3;->h:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v7, p1, Lec3;->i:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 31
    .line 32
    invoke-static {v4}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const/4 v9, 0x4

    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    invoke-direct/range {v5 .. v10}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    iput-object v5, v0, Lsb3;->d:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, v0, Lsb3;->e:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 50
    .line 51
    iput-object p1, v0, Lsb3;->f:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 52
    .line 53
    iget-object p1, p0, Ldc3;->b:Lec3;

    .line 54
    .line 55
    iget-object p1, p1, Lec3;->f:Lsb3;

    .line 56
    .line 57
    iget-object v0, p0, Ldc3;->c:Ljava/lang/String;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {p1, v0, v4}, Lsb3;->t(Ljava/lang/String;Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    instance-of p1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Ldc3;->b:Lec3;

    .line 69
    .line 70
    iget-object p1, p1, Lec3;->f:Lsb3;

    .line 71
    .line 72
    invoke-static {p1}, Leh1;->d(Ljh1;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-static {v3}, Ll73;->t(Lxx1;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_7

    .line 83
    .line 84
    iget-object p1, p0, Ldc3;->b:Lec3;

    .line 85
    .line 86
    iget-boolean p1, p1, Lec3;->k:Z

    .line 87
    .line 88
    if-eqz p1, :cond_0

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_0
    iget-object p1, p0, Ldc3;->b:Lec3;

    .line 93
    .line 94
    iget-object p1, p1, Lec3;->f:Lsb3;

    .line 95
    .line 96
    iget-object v0, p1, Lsb3;->e:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    iget-object p1, p1, Lsb3;->d:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->getSession()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->Companion:Lgb3;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Lgb3;->a(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    const-string p1, "Filen session is not ready to persist"

    .line 124
    .line 125
    invoke-static {p1}, Ll0;->e(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    const-string p1, "Filen credentials are not loaded"

    .line 130
    .line 131
    invoke-static {p1}, Ll0;->e(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    const-string p1, "Filen is not authenticated"

    .line 136
    .line 137
    invoke-static {p1}, Ll0;->e(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :goto_0
    sget-object v1, Lxb3;->a:Lxb3;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    move-object p1, v0

    .line 145
    move-object v7, p1

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    iget-object p1, p0, Ldc3;->b:Lec3;

    .line 148
    .line 149
    iget-object p1, p1, Lec3;->f:Lsb3;

    .line 150
    .line 151
    iget-boolean p1, p1, Lsb3;->i:Z

    .line 152
    .line 153
    if-eqz p1, :cond_5

    .line 154
    .line 155
    sget-object v1, Lbc3;->a:Lbc3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :goto_1
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 159
    .line 160
    iget-object p1, p0, Ldc3;->b:Lec3;

    .line 161
    .line 162
    iget-object v5, p1, La55;->b:Ljava/lang/String;

    .line 163
    .line 164
    const/16 v9, 0x8

    .line 165
    .line 166
    const/4 v10, 0x0

    .line 167
    const-string v6, "Filen sign-in transaction failed"

    .line 168
    .line 169
    const/4 v8, 0x0

    .line 170
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_5
    :goto_2
    invoke-static {v3}, Ll73;->t(Lxx1;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_7

    .line 178
    .line 179
    iget-object p1, p0, Ldc3;->b:Lec3;

    .line 180
    .line 181
    iget-boolean p1, p1, Lec3;->k:Z

    .line 182
    .line 183
    if-eqz p1, :cond_6

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_6
    iget-object p1, p0, Ldc3;->b:Lec3;

    .line 187
    .line 188
    invoke-virtual {p1}, Lqo0;->f()V

    .line 189
    .line 190
    .line 191
    iget-object p0, p0, Ldc3;->b:Lec3;

    .line 192
    .line 193
    iget-object p0, p0, Lec3;->e:Lex6;

    .line 194
    .line 195
    invoke-virtual {p0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_7
    :goto_3
    return-object v2
.end method
