.class public final Lcom/pcloud/sdk/internal/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpe;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lcom/google/gson/a;

.field public final b:Lokhttp3/OkHttpClient;

.field public final c:Lokhttp3/HttpUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "----pCloud-SDK-1.11.0-"

    .line 10
    .line 11
    const-string v2, "----"

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/pcloud/sdk/internal/a;->d:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lof6;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/TreeMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "timeformat"

    .line 10
    .line 11
    const-string v2, "timestamp"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    .line 18
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 19
    .line 20
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->c(JLjava/util/concurrent/TimeUnit;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3, v4}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    iput v5, v1, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 35
    .line 36
    invoke-static {v2, v3, v4}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iput v2, v1, Lokhttp3/OkHttpClient$Builder;->w:I

    .line 41
    .line 42
    sget-object v2, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 43
    .line 44
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->b(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lwy3;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lwy3;-><init>(Ljava/util/TreeMap;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v1, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    sget-object v2, Lokhttp3/Authenticator;->a:Lokhttp3/Authenticator;

    .line 62
    .line 63
    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/Authenticator;

    .line 64
    .line 65
    iget-object v2, p1, Lof6;->a:Lt5;

    .line 66
    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_0
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 73
    .line 74
    invoke-direct {v0, v1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/pcloud/sdk/internal/a;->b:Lokhttp3/OkHttpClient;

    .line 78
    .line 79
    new-instance v0, Lt14;

    .line 80
    .line 81
    invoke-direct {v0}, Lt14;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lt14;->a:Lcom/google/gson/internal/Excluder;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/google/gson/internal/Excluder;->a()Lcom/google/gson/internal/Excluder;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/4 v2, 0x1

    .line 91
    iput-boolean v2, v1, Lcom/google/gson/internal/Excluder;->a:Z

    .line 92
    .line 93
    iput-object v1, v0, Lt14;->a:Lcom/google/gson/internal/Excluder;

    .line 94
    .line 95
    new-instance v1, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory;

    .line 96
    .line 97
    invoke-direct {v1}, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v2, v0, Lt14;->c:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    new-instance v1, Lcom/pcloud/sdk/internal/networking/serialization/UnmodifiableListTypeFactory;

    .line 106
    .line 107
    invoke-direct {v1}, Lcom/pcloud/sdk/internal/networking/serialization/UnmodifiableListTypeFactory;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    new-instance v1, Lcom/pcloud/sdk/internal/RealRemoteEntry$FileEntryDeserializer;

    .line 114
    .line 115
    invoke-direct {v1}, Lcom/pcloud/sdk/internal/RealRemoteEntry$FileEntryDeserializer;-><init>()V

    .line 116
    .line 117
    .line 118
    const-class v2, Lzi6;

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Lcom/pcloud/sdk/internal/networking/serialization/DateTypeAdapter;

    .line 124
    .line 125
    invoke-direct {v1}, Lcom/pcloud/sdk/internal/networking/serialization/DateTypeAdapter;-><init>()V

    .line 126
    .line 127
    .line 128
    const-class v2, Ljava/util/Date;

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Lcom/pcloud/sdk/internal/b;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    const-class v2, Lcom/pcloud/sdk/internal/c;

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 141
    .line 142
    .line 143
    new-instance v1, Lvf6;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    const-class v2, Lcom/pcloud/sdk/internal/d;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 151
    .line 152
    .line 153
    new-instance v1, Lcom/pcloud/sdk/internal/networking/serialization/ByteStringTypeAdapter;

    .line 154
    .line 155
    invoke-direct {v1}, Lcom/pcloud/sdk/internal/networking/serialization/ByteStringTypeAdapter;-><init>()V

    .line 156
    .line 157
    .line 158
    const-class v2, Lhy0;

    .line 159
    .line 160
    invoke-virtual {v0, v1, v2}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 161
    .line 162
    .line 163
    const-class v1, Lgl6;

    .line 164
    .line 165
    sget-object v2, Lcom/pcloud/sdk/internal/networking/serialization/ResolutionDeserializer;->a:Lcom/pcloud/sdk/internal/networking/serialization/ResolutionDeserializer;

    .line 166
    .line 167
    invoke-virtual {v0, v2, v1}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 168
    .line 169
    .line 170
    new-instance v1, Lcom/google/gson/a;

    .line 171
    .line 172
    invoke-direct {v1, v0}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 173
    .line 174
    .line 175
    iput-object v1, p0, Lcom/pcloud/sdk/internal/a;->a:Lcom/google/gson/a;

    .line 176
    .line 177
    iget-object p1, p1, Lof6;->b:Lokhttp3/HttpUrl;

    .line 178
    .line 179
    iput-object p1, p0, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 180
    .line 181
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const-string p0, "Path argument `"

    .line 19
    .line 20
    const-string v0, "` cannot be null or empty."

    .line 21
    .line 22
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-string p0, "Path argument cannot be null or empty."

    .line 31
    .line 32
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lnv5;Ljava/util/Date;Le11;)Lks5;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    new-instance v0, Lnf6;

    .line 8
    .line 9
    invoke-direct {v0, p0, p5, p3}, Lnf6;-><init>(Lcom/pcloud/sdk/internal/a;Le11;Lnv5;)V

    .line 10
    .line 11
    .line 12
    new-instance p3, Lokhttp3/MultipartBody$Builder;

    .line 13
    .line 14
    sget-object p5, Lcom/pcloud/sdk/internal/a;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p3, p5}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p5, Lokhttp3/MultipartBody;->g:Lokhttp3/MediaType;

    .line 20
    .line 21
    invoke-virtual {p3, p5}, Lokhttp3/MultipartBody$Builder;->c(Lokhttp3/MediaType;)V

    .line 22
    .line 23
    .line 24
    const-string p5, "file"

    .line 25
    .line 26
    invoke-virtual {p3, p5, p2, v0}, Lokhttp3/MultipartBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Lokhttp3/MultipartBody$Builder;->b()Lokhttp3/MultipartBody;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p3, p0, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 34
    .line 35
    invoke-virtual {p3}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const-string p5, "uploadfile"

    .line 40
    .line 41
    invoke-virtual {p3, p5}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p5, 0x0

    .line 45
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p5

    .line 49
    const-string v0, "renameifexists"

    .line 50
    .line 51
    invoke-virtual {p3, v0, p5}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p5, 0x1

    .line 55
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    const-string v0, "nopartial"

    .line 60
    .line 61
    invoke-virtual {p3, v0, p5}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p5, "path"

    .line 65
    .line 66
    invoke-virtual {p3, p5, p1}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    .line 70
    .line 71
    .line 72
    move-result-wide p4

    .line 73
    const-wide/16 v0, 0x3e8

    .line 74
    .line 75
    div-long/2addr p4, v0

    .line 76
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p4, "mtime"

    .line 81
    .line 82
    invoke-virtual {p3, p4, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Lokhttp3/Request$Builder;

    .line 86
    .line 87
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    iput-object p3, p1, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 95
    .line 96
    const-string p3, "POST"

    .line 97
    .line 98
    invoke-virtual {p1, p3, p2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 99
    .line 100
    .line 101
    new-instance p2, Lokhttp3/Request;

    .line 102
    .line 103
    invoke-direct {p2, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Ler1;

    .line 107
    .line 108
    invoke-direct {p1, p0}, Ler1;-><init>(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p2, p1}, Lcom/pcloud/sdk/internal/a;->h(Lokhttp3/Request;Lhm6;)Lks5;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_0
    const-string p0, "Filename cannot be null."

    .line 117
    .line 118
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lks5;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lokhttp3/FormBody$Builder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const-string v1, "path"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lokhttp3/FormBody$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->c()Lokhttp3/FormBody;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/pcloud/sdk/internal/a;->i()Lokhttp3/Request$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 25
    .line 26
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "createfolder"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 40
    .line 41
    const-string v1, "POST"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lokhttp3/Request;

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lpf;

    .line 52
    .line 53
    const/16 v1, 0x8

    .line 54
    .line 55
    invoke-direct {v0, p0, v1}, Lpf;-><init>(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->h(Lokhttp3/Request;Lhm6;)Lks5;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lks5;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lokhttp3/Request$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 11
    .line 12
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "deletefile"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 26
    .line 27
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lokhttp3/FormBody$Builder;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, v2}, Lokhttp3/FormBody$Builder;-><init>(I)V

    .line 34
    .line 35
    .line 36
    const-string v2, "path"

    .line 37
    .line 38
    invoke-virtual {v1, v2, p1}, Lokhttp3/FormBody$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->c()Lokhttp3/FormBody;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "POST"

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lokhttp3/Request;

    .line 51
    .line 52
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lbb;

    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    invoke-direct {v0, p0, v1}, Lbb;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->h(Lokhttp3/Request;Lhm6;)Lks5;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lks5;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lokhttp3/FormBody$Builder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const-string v1, "path"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lokhttp3/FormBody$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->c()Lokhttp3/FormBody;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/pcloud/sdk/internal/a;->i()Lokhttp3/Request$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 25
    .line 26
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "deletefolderrecursive"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 40
    .line 41
    const-string v1, "POST"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lokhttp3/Request;

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Le11;

    .line 52
    .line 53
    const/4 v1, 0x5

    .line 54
    invoke-direct {v0, p0, v1}, Le11;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->h(Lokhttp3/Request;Lhm6;)Lks5;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public final e(Lokhttp3/Response;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p1, Lokhttp3/Response;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ltl4;

    .line 6
    .line 7
    new-instance v1, Ljava/io/BufferedReader;

    .line 8
    .line 9
    new-instance v2, Ljava/io/InputStreamReader;

    .line 10
    .line 11
    iget-object v3, p1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 12
    .line 13
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ltl4;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object p0, p0, Lcom/pcloud/sdk/internal/a;->a:Lcom/google/gson/a;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/a;->a(Ltl4;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0
    :try_end_1
    .catch Lkm4; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    invoke-virtual {v0}, Ltl4;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    .line 44
    .line 45
    :catch_0
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 46
    .line 47
    .line 48
    :catch_1
    return-object p0

    .line 49
    :catch_2
    move-exception p0

    .line 50
    throw p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :catch_3
    move-exception p0

    .line 54
    :try_start_4
    new-instance p2, Ljava/io/IOException;

    .line 55
    .line 56
    const-string v1, "Malformed JSON response."

    .line 57
    .line 58
    invoke-direct {p2, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :goto_0
    :try_start_5
    invoke-virtual {v0}, Ltl4;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    .line 64
    .line 65
    :catch_4
    :try_start_6
    throw p0

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :catch_5
    move-exception p0

    .line 69
    throw p0

    .line 70
    :cond_0
    new-instance p0, Ll;

    .line 71
    .line 72
    iget p2, p1, Lokhttp3/Response;->d:I

    .line 73
    .line 74
    iget-object v0, p1, Lokhttp3/Response;->c:Ljava/lang/String;

    .line 75
    .line 76
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "API returned \'"

    .line 81
    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p2, " - "

    .line 89
    .line 90
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p2, "\' HTTP error."

    .line 97
    .line 98
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 109
    :goto_1
    if-eqz p1, :cond_1

    .line 110
    .line 111
    :try_start_7
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catch_6
    move-exception p0

    .line 116
    throw p0

    .line 117
    :catch_7
    :cond_1
    :goto_2
    throw p0
.end method

.method public final f(Lokhttp3/Response;Ljava/lang/Class;)Lgf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/pcloud/sdk/internal/a;->e(Lokhttp3/Response;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lgf;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lgf;->c()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p1, Lqe;

    .line 17
    .line 18
    invoke-virtual {p0}, Lgf;->b()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p0}, Lgf;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {p1, p2, p0}, Lqe;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    const-string p0, "API returned an empty response body."

    .line 31
    .line 32
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public final g()Lks5;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pcloud/sdk/internal/a;->i()Lokhttp3/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 6
    .line 7
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "userinfo"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 21
    .line 22
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lokhttp3/Request;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lmb;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lmb;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/pcloud/sdk/internal/a;->h(Lokhttp3/Request;Lhm6;)Lks5;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final h(Lokhttp3/Request;Lhm6;)Lks5;
    .locals 2

    .line 1
    new-instance v0, Lks5;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/pcloud/sdk/internal/a;->b:Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lokhttp3/internal/connection/RealCall;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, p2}, Lks5;-><init>(Lokhttp3/Call;Lhm6;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final i()Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iput-object p0, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 12
    .line 13
    return-object v0
.end method
