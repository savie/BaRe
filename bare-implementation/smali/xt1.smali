.class public final Lxt1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lw23;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lxt1;->a:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p2}, Lly8;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lxt1;->d:Ljava/lang/Object;

    .line 13
    .line 14
    const-string p1, "Android/Fallback/"

    .line 15
    .line 16
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lxt1;->c:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lrx8;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lxt1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lxt1;->c:Ljava/lang/Object;

    iput-object v0, p0, Lxt1;->d:Ljava/lang/Object;

    iput-object p1, p0, Lxt1;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lxt1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/firebase/FirebaseApp;

    .line 4
    .line 5
    iget-object v1, p0, Lxt1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "/FirebaseCore-Android"

    .line 10
    .line 11
    invoke-static {v1, v2}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lxt1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ll39;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Ll39;

    .line 22
    .line 23
    iget-object v3, p0, Lxt1;->a:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Landroid/content/Context;

    .line 26
    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    invoke-direct {v2, v3, v4}, Ll39;-><init>(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lxt1;->b:Ljava/lang/Object;

    .line 33
    .line 34
    :cond_0
    iget-object v2, p0, Lxt1;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Ll39;

    .line 37
    .line 38
    iget-object v2, v2, Ll39;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    const-string v3, "X-Android-Package"

    .line 43
    .line 44
    invoke-virtual {p1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lxt1;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Ll39;

    .line 50
    .line 51
    iget-object p0, p0, Ll39;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "X-Android-Cert"

    .line 56
    .line 57
    invoke-virtual {p1, v2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string p0, "Accept-Language"

    .line 61
    .line 62
    invoke-static {}, Lji8;->Q()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p1, p0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p0, "X-Client-Version"

    .line 70
    .line 71
    invoke-virtual {p1, p0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string p0, "X-Firebase-Locale"

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1, p0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string v2, "X-Firebase-GMPID"

    .line 89
    .line 90
    invoke-virtual {p1, v2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-class p0, Lo49;

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lo49;

    .line 100
    .line 101
    if-nez v2, :cond_2

    .line 102
    .line 103
    :cond_1
    :goto_0
    move-object v2, v1

    .line 104
    goto :goto_3

    .line 105
    :cond_2
    iget-object v2, v2, Lo49;->c:Lga6;

    .line 106
    .line 107
    invoke-interface {v2}, Lga6;->get()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lr34;

    .line 112
    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    :try_start_0
    check-cast v2, Lne2;

    .line 116
    .line 117
    iget-object v3, v2, Lne2;->b:Landroid/content/Context;

    .line 118
    .line 119
    const-class v4, Landroid/os/UserManager;

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Landroid/os/UserManager;

    .line 126
    .line 127
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_3

    .line 132
    .line 133
    const-string v2, ""

    .line 134
    .line 135
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    goto :goto_1

    .line 140
    :cond_3
    iget-object v3, v2, Lne2;->e:Ljava/util/concurrent/Executor;

    .line 141
    .line 142
    new-instance v4, Lle2;

    .line 143
    .line 144
    invoke-direct {v4, v2}, Lle2;-><init>(Lne2;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v3, v4}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :catch_0
    move-exception v2

    .line 159
    goto :goto_2

    .line 160
    :catch_1
    move-exception v2

    .line 161
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v4, "Unable to get heartbeats: "

    .line 168
    .line 169
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    const-string v3, "LocalRequestInterceptor"

    .line 180
    .line 181
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :goto_3
    const-string v3, "X-Firebase-Client"

    .line 186
    .line 187
    invoke-virtual {p1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, p0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Lo49;

    .line 195
    .line 196
    if-nez p0, :cond_4

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_4
    iget-object p0, p0, Lo49;->b:Lga6;

    .line 200
    .line 201
    invoke-interface {p0}, Lga6;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    if-nez p0, :cond_6

    .line 206
    .line 207
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    if-nez p0, :cond_5

    .line 212
    .line 213
    const-string p0, "X-Firebase-AppCheck"

    .line 214
    .line 215
    invoke-virtual {p1, p0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_5
    return-void

    .line 219
    :cond_6
    invoke-static {}, Le6;->d()V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lxt1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lid4;

    .line 4
    .line 5
    iget-object v0, v0, Lid4;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/google/firebase/FirebaseApp;

    .line 8
    .line 9
    iget-object v1, p0, Lxt1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lca6;

    .line 12
    .line 13
    invoke-interface {v1}, Lea6;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ll97;

    .line 18
    .line 19
    iget-object v2, p0, Lxt1;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lca6;

    .line 22
    .line 23
    invoke-interface {v2}, Lea6;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lox1;

    .line 28
    .line 29
    iget-object p0, p0, Lxt1;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lca6;

    .line 32
    .line 33
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lj97;

    .line 38
    .line 39
    new-instance v3, Lyg3;

    .line 40
    .line 41
    invoke-direct {v3, v0, v1, v2, p0}, Lyg3;-><init>(Lcom/google/firebase/FirebaseApp;Ll97;Lox1;Lj97;)V

    .line 42
    .line 43
    .line 44
    return-object v3
.end method
