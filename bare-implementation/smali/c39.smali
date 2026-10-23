.class public final Lc39;
.super Laz3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final y:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lz91;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lg19;Lg19;)V
    .locals 14

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    const/16 v4, 0x5b

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object/from16 v3, p2

    .line 9
    .line 10
    move-object/from16 v5, p3

    .line 11
    .line 12
    move-object/from16 v6, p5

    .line 13
    .line 14
    move-object/from16 v7, p6

    .line 15
    .line 16
    invoke-direct/range {v1 .. v8}, Laz3;-><init>(Landroid/content/Context;Landroid/os/Looper;ILz91;Lnz3;Loz3;I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v5, Lz91;->b:Ljava/util/Set;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v2, Lx04;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v3, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v3, v2, Lx04;->a:Ljava/util/HashSet;

    .line 34
    .line 35
    new-instance v3, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v3, v2, Lx04;->h:Ljava/util/HashMap;

    .line 41
    .line 42
    new-instance v3, Ljava/util/HashSet;

    .line 43
    .line 44
    iget-object v4, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    iput-object v3, v2, Lx04;->a:Ljava/util/HashSet;

    .line 50
    .line 51
    iget-boolean v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->e:Z

    .line 52
    .line 53
    iput-boolean v3, v2, Lx04;->b:Z

    .line 54
    .line 55
    iget-boolean v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f:Z

    .line 56
    .line 57
    iput-boolean v3, v2, Lx04;->c:Z

    .line 58
    .line 59
    iget-boolean v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->d:Z

    .line 60
    .line 61
    iput-boolean v3, v2, Lx04;->d:Z

    .line 62
    .line 63
    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->k:Ljava/lang/String;

    .line 64
    .line 65
    iput-object v3, v2, Lx04;->e:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c:Landroid/accounts/Account;

    .line 68
    .line 69
    iput-object v3, v2, Lx04;->f:Landroid/accounts/Account;

    .line 70
    .line 71
    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->n:Ljava/lang/String;

    .line 72
    .line 73
    iput-object v3, v2, Lx04;->g:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->p:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->q(Ljava/util/ArrayList;)Ljava/util/HashMap;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iput-object v3, v2, Lx04;->h:Ljava/util/HashMap;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->q:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v0, v2, Lx04;->i:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    new-instance v2, Lx04;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance v0, Ljava/util/HashSet;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v0, v2, Lx04;->a:Ljava/util/HashSet;

    .line 99
    .line 100
    new-instance v0, Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v0, v2, Lx04;->h:Ljava/util/HashMap;

    .line 106
    .line 107
    :goto_0
    invoke-static {}, Lw29;->a()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, v2, Lx04;->i:Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_1

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    .line 137
    .line 138
    iget-object v4, v2, Lx04;->a:Ljava/util/HashSet;

    .line 139
    .line 140
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    iget-object p1, v2, Lx04;->a:Ljava/util/HashSet;

    .line 152
    .line 153
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->y:Lcom/google/android/gms/common/api/Scope;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    .line 161
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->x:Lcom/google/android/gms/common/api/Scope;

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_2

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_2
    iget-boolean v0, v2, Lx04;->d:Z

    .line 173
    .line 174
    if-eqz v0, :cond_4

    .line 175
    .line 176
    iget-object v0, v2, Lx04;->f:Landroid/accounts/Account;

    .line 177
    .line 178
    if-eqz v0, :cond_3

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_4

    .line 185
    .line 186
    :cond_3
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->t:Lcom/google/android/gms/common/api/Scope;

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    :cond_4
    new-instance v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 192
    .line 193
    new-instance v5, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 196
    .line 197
    .line 198
    iget-object v6, v2, Lx04;->f:Landroid/accounts/Account;

    .line 199
    .line 200
    iget-boolean v7, v2, Lx04;->d:Z

    .line 201
    .line 202
    iget-boolean v8, v2, Lx04;->b:Z

    .line 203
    .line 204
    iget-boolean v9, v2, Lx04;->c:Z

    .line 205
    .line 206
    iget-object v10, v2, Lx04;->e:Ljava/lang/String;

    .line 207
    .line 208
    iget-object v11, v2, Lx04;->g:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v12, v2, Lx04;->h:Ljava/util/HashMap;

    .line 211
    .line 212
    iget-object v13, v2, Lx04;->i:Ljava/lang/String;

    .line 213
    .line 214
    const/4 v4, 0x3

    .line 215
    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iput-object v3, p0, Lc39;->y:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 219
    .line 220
    return-void
.end method


# virtual methods
.method public final f()I
    .locals 0

    .line 1
    const p0, 0xbdfcb8

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final l(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string p0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lm39;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lm39;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lm39;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-direct {v0, p1, p0, v1}, Lvz8;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.google.android.gms.auth.api.signin.service.START"

    .line 2
    .line 3
    return-object p0
.end method
