.class public final Lg59;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ld59;

.field public final b:Lc59;

.field public final c:Lc59;

.field public final d:Lj15;

.field public final e:Lcom/google/firebase/FirebaseApp;

.field public final f:Ljava/lang/String;

.field public g:Lxt1;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lj15;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg59;->e:Lcom/google/firebase/FirebaseApp;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lg59;->f:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lg59;->d:Lj15;

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lg59;->c:Lc59;

    .line 27
    .line 28
    iput-object p2, p0, Lg59;->a:Ld59;

    .line 29
    .line 30
    iput-object p2, p0, Lg59;->b:Lc59;

    .line 31
    .line 32
    const-string p2, "firebear.secureToken"

    .line 33
    .line 34
    invoke-static {p2}, Lsz8;->m0(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    sget-object v1, Lq59;->a:Lk50;

    .line 45
    .line 46
    monitor-enter v1

    .line 47
    :try_start_0
    invoke-virtual {v1, v0}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-nez p2, :cond_0

    .line 52
    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const-string p2, "https://"

    .line 55
    .line 56
    const-string v1, "securetoken.googleapis.com/v1"

    .line 57
    .line 58
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/ClassCastException;

    .line 66
    .line 67
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0

    .line 73
    :cond_1
    const-string v1, "LocalClient"

    .line 74
    .line 75
    const-string v2, "Found hermetic configuration for secureToken URL: "

    .line 76
    .line 77
    invoke-static {v2, p2, v1}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    iget-object v1, p0, Lg59;->c:Lc59;

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    new-instance v1, Lc59;

    .line 85
    .line 86
    invoke-virtual {p0}, Lg59;->a()Lxt1;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {v1, p2, v2}, Lao;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lg59;->c:Lc59;

    .line 94
    .line 95
    :cond_2
    const-string p2, "firebear.identityToolkit"

    .line 96
    .line 97
    invoke-static {p2}, Lsz8;->m0(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    invoke-static {v0}, Lq59;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    const-string v1, "LocalClient"

    .line 113
    .line 114
    const-string v2, "Found hermetic configuration for identityToolkit URL: "

    .line 115
    .line 116
    invoke-static {v2, p2, v1}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_2
    iget-object v1, p0, Lg59;->a:Ld59;

    .line 120
    .line 121
    if-nez v1, :cond_4

    .line 122
    .line 123
    new-instance v1, Ld59;

    .line 124
    .line 125
    invoke-virtual {p0}, Lg59;->a()Lxt1;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-direct {v1, p2, v2}, Lao;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iput-object v1, p0, Lg59;->a:Ld59;

    .line 133
    .line 134
    :cond_4
    const-string p2, "firebear.identityToolkitV2"

    .line 135
    .line 136
    invoke-static {p2}, Lsz8;->m0(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    sget-object v1, Lq59;->a:Lk50;

    .line 147
    .line 148
    monitor-enter v1

    .line 149
    :try_start_2
    invoke-virtual {v1, v0}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-nez p2, :cond_5

    .line 154
    .line 155
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    const-string p2, "https://"

    .line 157
    .line 158
    const-string v1, "identitytoolkit.googleapis.com/v2"

    .line 159
    .line 160
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    goto :goto_4

    .line 165
    :catchall_1
    move-exception p0

    .line 166
    goto :goto_3

    .line 167
    :cond_5
    :try_start_3
    new-instance p0, Ljava/lang/ClassCastException;

    .line 168
    .line 169
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 170
    .line 171
    .line 172
    throw p0

    .line 173
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    throw p0

    .line 175
    :cond_6
    const-string v1, "LocalClient"

    .line 176
    .line 177
    const-string v2, "Found hermetic configuration for identityToolkitV2 URL: "

    .line 178
    .line 179
    invoke-static {v2, p2, v1}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_4
    iget-object v1, p0, Lg59;->b:Lc59;

    .line 183
    .line 184
    if-nez v1, :cond_7

    .line 185
    .line 186
    new-instance v1, Lc59;

    .line 187
    .line 188
    invoke-virtual {p0}, Lg59;->a()Lxt1;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-direct {v1, p2, v2}, Lao;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iput-object v1, p0, Lg59;->b:Lc59;

    .line 196
    .line 197
    :cond_7
    const-class p2, Lo49;

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lo49;

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    sget-object p1, Lq59;->b:Lk50;

    .line 209
    .line 210
    monitor-enter p1

    .line 211
    :try_start_4
    invoke-virtual {p1, v0}, Ldg7;->containsKey(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-eqz p2, :cond_8

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    check-cast p2, Ljava/util/List;

    .line 222
    .line 223
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 224
    .line 225
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :catchall_2
    move-exception p0

    .line 233
    goto :goto_6

    .line 234
    :cond_8
    new-instance p2, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 240
    .line 241
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v0, p2}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    :goto_5
    monitor-exit p1

    .line 251
    return-void

    .line 252
    :goto_6
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 253
    throw p0
.end method


# virtual methods
.method public final a()Lxt1;
    .locals 4

    .line 1
    iget-object v0, p0, Lg59;->g:Lxt1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lxt1;

    .line 6
    .line 7
    iget-object v1, p0, Lg59;->d:Lj15;

    .line 8
    .line 9
    iget v1, v1, Lj15;->a:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "X"

    .line 16
    .line 17
    invoke-static {v2, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lg59;->e:Lcom/google/firebase/FirebaseApp;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v0, v3, v2, v1}, Lxt1;-><init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lg59;->g:Lxt1;

    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lg59;->g:Lxt1;

    .line 33
    .line 34
    return-object p0
.end method
