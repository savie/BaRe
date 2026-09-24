.class public abstract Lcn0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final synthetic k:I


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Ljava/lang/String;

.field public final c:Lv64$a;

.field public final d:Lda6;

.field public final e:Lokhttp3/OkHttpClient;

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-array v1, v0, [B

    .line 3
    .line 4
    sget-object v2, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 5
    .line 6
    const/4 v2, 0x6

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v1, v2, v3}, Lokhttp3/RequestBody$Companion;->b([BILokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/Random;

    .line 12
    .line 13
    new-instance v2, Ljava/security/SecureRandom;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lwk4;

    .line 26
    .line 27
    invoke-direct {v1}, Lwk4;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lqi2;->c:Lqi2;

    .line 31
    .line 32
    iget-object v3, v1, Lqr5;->e:Lpi2;

    .line 33
    .line 34
    iget v4, v3, Lpi2;->r:I

    .line 35
    .line 36
    iget v2, v2, Lqi2;->b:I

    .line 37
    .line 38
    not-int v2, v2

    .line 39
    and-int/2addr v2, v4

    .line 40
    if-ne v2, v4, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v4, Lpi2;

    .line 44
    .line 45
    iget-wide v5, v3, Ls65;->a:J

    .line 46
    .line 47
    invoke-direct {v4, v3, v5, v6, v2}, Lpi2;-><init>(Lpi2;JI)V

    .line 48
    .line 49
    .line 50
    move-object v3, v4

    .line 51
    :goto_0
    iput-object v3, v1, Lqr5;->e:Lpi2;

    .line 52
    .line 53
    sget-object v2, Lu65;->O:Lu65;

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-virtual {v1, v2, v3}, Lqr5;->b(Lu65;Z)V

    .line 57
    .line 58
    .line 59
    const-string v9, "attributes"

    .line 60
    .line 61
    new-array v10, v0, [Ljava/lang/String;

    .line 62
    .line 63
    const-string v4, "retention"

    .line 64
    .line 65
    const-string v5, "legal-hold"

    .line 66
    .line 67
    const-string v6, "tagging"

    .line 68
    .line 69
    const-string v7, "uploadId"

    .line 70
    .line 71
    const-string v8, "acl"

    .line 72
    .line 73
    invoke-static/range {v4 .. v10}, Lna4;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lna4;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "Unsupported OkHttp library found. Must use okhttp >= 4.11.0"

    .line 79
    .line 80
    invoke-static {v1, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public constructor <init>(Lcn0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcn0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-static {}, Lki8;->d()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcn0;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p1, Lcn0;->c:Lv64$a;

    .line 18
    .line 19
    iput-object v0, p0, Lcn0;->c:Lv64$a;

    .line 20
    .line 21
    iget-object v0, p1, Lcn0;->d:Lda6;

    .line 22
    .line 23
    iput-object v0, p0, Lcn0;->d:Lda6;

    .line 24
    .line 25
    iget-object v0, p1, Lcn0;->e:Lokhttp3/OkHttpClient;

    .line 26
    .line 27
    iput-object v0, p0, Lcn0;->e:Lokhttp3/OkHttpClient;

    .line 28
    .line 29
    iget-boolean p1, p1, Lcn0;->f:Z

    .line 30
    .line 31
    iput-boolean p1, p0, Lcn0;->f:Z

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(Lv64$a;Lda6;Lokhttp3/OkHttpClient;Z)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    invoke-static {}, Lki8;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn0;->b:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcn0;->c:Lv64$a;

    .line 38
    iput-object p2, p0, Lcn0;->d:Lda6;

    .line 39
    iput-object p3, p0, Lcn0;->e:Lokhttp3/OkHttpClient;

    .line 40
    iput-boolean p4, p0, Lcn0;->f:Z

    return-void
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lv64$e;
    .locals 8

    .line 1
    new-instance v0, Lv64$e;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    move-object v3, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v3, p0

    .line 10
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-lez p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/16 p0, 0x3e8

    .line 22
    .line 23
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-nez p3, :cond_2

    .line 28
    .line 29
    move-object v7, v1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object v7, p3

    .line 32
    :goto_2
    const-string v2, "delimiter"

    .line 33
    .line 34
    const-string v4, "max-keys"

    .line 35
    .line 36
    const-string v6, "prefix"

    .line 37
    .line 38
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Lv64$e;-><init>([Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    const-string p0, "encoding-type"

    .line 48
    .line 49
    invoke-virtual {v0, p0, p1}, Lv64$e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final A(Lay4;)Ljava/util/concurrent/CompletableFuture;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcn0;->b(Lll0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lay4;->r()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lay4;->s()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lay4;->v()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lay4;->w()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v0, v1, v2, v3}, Lcn0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lv64$e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lay4;->x()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const-string v1, "start-after"

    .line 35
    .line 36
    invoke-virtual {p1}, Lay4;->x()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lv64$e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Lay4;->q()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    const-string v1, "continuation-token"

    .line 50
    .line 51
    invoke-virtual {p1}, Lay4;->q()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Lv64$e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Lay4;->t()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const-string v2, "true"

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    const-string v1, "fetch-owner"

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lv64$e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p1}, Lay4;->u()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    const-string v1, "metadata"

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Lv64$e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    const-string v1, "list-type"

    .line 83
    .line 84
    const-string v2, "2"

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lv64$e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, p1, v1, v0}, Lcn0;->n(Lfw0;Lv64$c;Lv64$e;)Ljava/util/concurrent/CompletableFuture;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    new-instance v0, Lsm0;

    .line 95
    .line 96
    invoke-direct {v0, p1}, Lsm0;-><init>(Lay4;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method

.method public final D(Lxb6;)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcn0;->b(Lll0;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Lxb6;->p()Lokhttp3/MediaType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcn0;->g(Lyb6;Lokhttp3/MediaType;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Lrg5; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/4 v1, 0x0

    .line 13
    aget-object v1, v0, v1

    .line 14
    .line 15
    check-cast v1, Lv64$b;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aget-object v0, v0, v2

    .line 19
    .line 20
    check-cast v0, Lv64$c;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, p1, v0, v2, v1}, Lcn0;->r(Lyb6;Lv64$c;Lv64$e;Lv64$b;)Ljava/util/concurrent/CompletableFuture;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Lan0;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lan0;-><init>(Lxb6;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    invoke-static {p0}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final G(Lwf8;)Ljava/util/concurrent/CompletableFuture;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcn0;->b(Lll0;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcn0;->g(Lyb6;Lokhttp3/MediaType;)[Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Lrg5; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v1, v0, v1

    .line 11
    .line 12
    check-cast v1, Lv64$b;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    aget-object v0, v0, v2

    .line 16
    .line 17
    check-cast v0, Lv64$c;

    .line 18
    .line 19
    new-instance v2, Lv64$e;

    .line 20
    .line 21
    invoke-virtual {p1}, Lwf8;->s()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "uploadId"

    .line 30
    .line 31
    invoke-virtual {p1}, Lwf8;->t()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string v6, "partNumber"

    .line 36
    .line 37
    filled-new-array {v6, v3, v4, v5}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v2, v3}, Lv64$e;-><init>([Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, v0, v2, v1}, Lcn0;->r(Lyb6;Lv64$c;Lv64$e;Lv64$b;)Ljava/util/concurrent/CompletableFuture;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v0, Lpm0;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lpm0;-><init>(Lwf8;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-static {p0}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public final a(Lw2;)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcn0;->b(Lll0;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv64$e;

    .line 5
    .line 6
    const-string v1, "uploadId"

    .line 7
    .line 8
    invoke-virtual {p1}, Lw2;->l()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Lv64$e;-><init>([Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lv64$h$a;

    .line 20
    .line 21
    invoke-direct {v1}, Lv64$h$a;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcn0;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lv64$h$a;->c(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Lv64$d;->e:Lv64$d;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lv64$h$a;->b(Lv64$d;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    iput-object v2, v1, Lv64$h$a;->d:Lv64$c;

    .line 36
    .line 37
    iput-object v0, v1, Lv64$h$a;->e:Lv64$e;

    .line 38
    .line 39
    iput-object p1, v1, Lv64$h$a;->c:Lll0;

    .line 40
    .line 41
    invoke-virtual {v1}, Lv64$h$a;->a()Lv64$h;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcn0;->j(Lv64$h;)Ljava/util/concurrent/CompletableFuture;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-instance v0, Lqm0;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v0, v1}, Lqm0;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v0, Lom0;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lom0;-><init>(Lw2;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public final b(Lll0;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object p0, p0, Lcn0;->c:Lv64$a;

    .line 4
    .line 5
    iget-object p0, p0, Lv64$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    instance-of p0, p1, Lfw0;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    check-cast p1, Lfw0;

    .line 14
    .line 15
    invoke-virtual {p1}, Lfw0;->f()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "xn--"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const-string p1, "--s3alias"

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    const-string p1, "--ol-s3"

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string p1, "bucket name \'"

    .line 45
    .line 46
    const-string v0, "\' must not start with \'xn--\' and must not end with \'--s3alias\' or \'--ol-s3\'"

    .line 47
    .line 48
    invoke-static {p1, p0, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    const-string p0, "null arguments"

    .line 57
    .line 58
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn0;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcn0;->e:Lokhttp3/OkHttpClient;

    .line 6
    .line 7
    iget-object v0, v0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    .line 8
    .line 9
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->a()Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcn0;->e:Lokhttp3/OkHttpClient;

    .line 19
    .line 20
    iget-object p0, p0, Lokhttp3/OkHttpClient;->C:Lokhttp3/ConnectionPool;

    .line 21
    .line 22
    iget-object p0, p0, Lokhttp3/ConnectionPool;->a:Lokhttp3/internal/connection/RealConnectionPool;

    .line 23
    .line 24
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lokhttp3/internal/connection/RealConnection;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v3, v1, Lokhttp3/internal/connection/RealConnection;->K:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    iput-boolean v2, v1, Lokhttp3/internal/connection/RealConnection;->x:Z

    .line 63
    .line 64
    iget-object v2, v1, Lokhttp3/internal/connection/RealConnection;->f:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    :goto_1
    monitor-exit v1

    .line 70
    if-eqz v2, :cond_0

    .line 71
    .line 72
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_2
    monitor-exit v1

    .line 77
    throw p0

    .line 78
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->e:Lokhttp3/internal/concurrent/TaskQueue;

    .line 87
    .line 88
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->a()V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->d:Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_4

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lokhttp3/internal/connection/RealConnectionPool$AddressState;

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/RealConnectionPool;->b(Lokhttp3/internal/connection/RealConnectionPool$AddressState;)V

    .line 115
    .line 116
    .line 117
    throw v2

    .line 118
    :cond_5
    :goto_3
    return-void
.end method

.method public final g(Lyb6;Lokhttp3/MediaType;)[Ljava/lang/Object;
    .locals 14

    .line 1
    new-instance v0, Lv64$c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lyb6;->l()Lv64$c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lv64$c;-><init>(Lv64$c;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "X-Amz-Content-Sha256"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lv64$c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "X-Amz-Checksum-Sha256"

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Lv64$c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, "x-amz-checksum-"

    .line 23
    .line 24
    invoke-static {v5}, Lv64$c;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v6, v0, Lv64$c;->a:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    new-instance v7, Lx64;

    .line 43
    .line 44
    invoke-direct {v7, v5}, Lx64;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const-string v6, "Content-Md5"

    .line 52
    .line 53
    invoke-virtual {v0, v6}, Lv64$c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    iget-object p0, p0, Lcn0;->c:Lv64$a;

    .line 58
    .line 59
    const-string v6, "UNSIGNED-PAYLOAD"

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    if-nez v4, :cond_4

    .line 65
    .line 66
    iget-object v2, p0, Lv64$a;->a:Lokhttp3/HttpUrl;

    .line 67
    .line 68
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->f()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    sget-object v2, Ly51$a;->e:Ly51$a;

    .line 75
    .line 76
    invoke-virtual {v2}, Ly51$a;->a()Lz51;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    new-instance v9, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lyb6;->k()Ljava/io/RandomAccessFile;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    invoke-virtual {p1}, Lyb6;->k()Ljava/io/RandomAccessFile;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {p1}, Lyb6;->m()Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {v9, v7, v2, v10}, Ly51;->e(Ljava/util/HashMap;Lox0;Ljava/io/RandomAccessFile;Ljava/lang/Long;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lyb6;->i()Lox0;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    invoke-virtual {p1}, Lyb6;->i()Lox0;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v9, v2, v7, v7}, Ly51;->e(Ljava/util/HashMap;Lox0;Ljava/io/RandomAccessFile;Ljava/lang/Long;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lyb6;->j()[B

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eqz v2, :cond_2

    .line 128
    .line 129
    invoke-virtual {p1}, Lyb6;->j()[B

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p1}, Lyb6;->m()Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    invoke-static {v9, v2, v10}, Ly51;->f(Ljava/util/Map;[BI)V

    .line 142
    .line 143
    .line 144
    :cond_2
    :goto_0
    invoke-interface {v8}, Lz51;->sum()[B

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2}, Ly51;->b([B)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    goto :goto_1

    .line 153
    :cond_3
    move-object v2, v6

    .line 154
    :goto_1
    invoke-virtual {v0, v1, v2}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    if-nez v2, :cond_6

    .line 158
    .line 159
    if-eqz v4, :cond_6

    .line 160
    .line 161
    iget-object p0, p0, Lv64$a;->a:Lokhttp3/HttpUrl;

    .line 162
    .line 163
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->f()Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-nez p0, :cond_5

    .line 168
    .line 169
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {p0}, Ly51;->b([B)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    move-object v2, p0

    .line 182
    goto :goto_2

    .line 183
    :cond_5
    move-object v2, v6

    .line 184
    :goto_2
    invoke-virtual {v0, v1, v2}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    move-object v11, v2

    .line 188
    if-eqz v11, :cond_c

    .line 189
    .line 190
    if-nez v4, :cond_c

    .line 191
    .line 192
    if-nez v5, :cond_c

    .line 193
    .line 194
    if-nez v13, :cond_c

    .line 195
    .line 196
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    const-string v1, "X-Amz-Sdk-Checksum-Algorithm"

    .line 201
    .line 202
    if-eqz p0, :cond_a

    .line 203
    .line 204
    sget-object p0, Ly51$a;->b:Ly51$a;

    .line 205
    .line 206
    invoke-virtual {p0}, Ly51$a;->a()Lz51;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    new-instance v3, Ljava/util/HashMap;

    .line 211
    .line 212
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Lyb6;->k()Ljava/io/RandomAccessFile;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    if-eqz v4, :cond_7

    .line 223
    .line 224
    invoke-virtual {p1}, Lyb6;->k()Ljava/io/RandomAccessFile;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {p1}, Lyb6;->m()Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-static {v3, v7, v4, v5}, Ly51;->e(Ljava/util/HashMap;Lox0;Ljava/io/RandomAccessFile;Ljava/lang/Long;)V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_7
    invoke-virtual {p1}, Lyb6;->i()Lox0;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    if-eqz v4, :cond_8

    .line 244
    .line 245
    invoke-virtual {p1}, Lyb6;->i()Lox0;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-static {v3, v4, v7, v7}, Ly51;->e(Ljava/util/HashMap;Lox0;Ljava/io/RandomAccessFile;Ljava/lang/Long;)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_8
    invoke-virtual {p1}, Lyb6;->j()[B

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    if-eqz v4, :cond_9

    .line 258
    .line 259
    invoke-virtual {p1}, Lyb6;->j()[B

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {p1}, Lyb6;->m()Ljava/lang/Long;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    invoke-static {v3, v4, v5}, Ly51;->f(Ljava/util/Map;[BI)V

    .line 272
    .line 273
    .line 274
    :cond_9
    :goto_3
    invoke-interface {v2}, Lz51;->sum()[B

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {p0}, Ly51$a;->b()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {v2}, Ly51;->a([B)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v0, v3, v2}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Ly51$a;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-virtual {v0, v1, p0}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    div-int/lit8 p0, p0, 0x2

    .line 302
    .line 303
    new-array p0, p0, [B

    .line 304
    .line 305
    const/4 v2, 0x0

    .line 306
    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-ge v2, v4, :cond_b

    .line 311
    .line 312
    div-int/lit8 v4, v2, 0x2

    .line 313
    .line 314
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    const/16 v6, 0x10

    .line 319
    .line 320
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    shl-int/lit8 v5, v5, 0x4

    .line 325
    .line 326
    add-int/lit8 v7, v2, 0x1

    .line 327
    .line 328
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    add-int/2addr v6, v5

    .line 337
    int-to-byte v5, v6

    .line 338
    aput-byte v5, p0, v4

    .line 339
    .line 340
    add-int/lit8 v2, v2, 0x2

    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_b
    invoke-static {p0}, Ly51;->a([B)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-virtual {v0, v3, p0}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    sget-object p0, Ly51$a;->e:Ly51$a;

    .line 351
    .line 352
    invoke-virtual {p0}, Ly51$a;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    invoke-virtual {v0, v1, p0}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :cond_c
    :goto_5
    invoke-virtual {p1}, Lyb6;->k()Ljava/io/RandomAccessFile;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    if-eqz p0, :cond_d

    .line 364
    .line 365
    new-instance v7, Lv64$b;

    .line 366
    .line 367
    invoke-virtual {p1}, Lyb6;->k()Ljava/io/RandomAccessFile;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    invoke-virtual {p1}, Lyb6;->m()Ljava/lang/Long;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 376
    .line 377
    .line 378
    move-result-wide v9

    .line 379
    move-object v12, v11

    .line 380
    move-object/from16 v11, p2

    .line 381
    .line 382
    invoke-direct/range {v7 .. v13}, Lv64$b;-><init>(Ljava/io/RandomAccessFile;JLokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_d
    invoke-virtual {p1}, Lyb6;->i()Lox0;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    if-eqz p0, :cond_e

    .line 391
    .line 392
    new-instance v7, Lv64$b;

    .line 393
    .line 394
    invoke-virtual {p1}, Lyb6;->i()Lox0;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    move-object/from16 v10, p2

    .line 399
    .line 400
    invoke-direct {v7, p0, v10, v11, v13}, Lv64$b;-><init>(Ljava/lang/Object;Lokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_e
    move-object/from16 v10, p2

    .line 405
    .line 406
    invoke-virtual {p1}, Lyb6;->j()[B

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    if-eqz p0, :cond_f

    .line 411
    .line 412
    new-instance v7, Lv64$b;

    .line 413
    .line 414
    invoke-virtual {p1}, Lyb6;->j()[B

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    invoke-virtual {p1}, Lyb6;->m()Ljava/lang/Long;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    .line 423
    .line 424
    .line 425
    move-result v9

    .line 426
    move-object v12, v13

    .line 427
    invoke-direct/range {v7 .. v12}, Lv64$b;-><init>([BILokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    :goto_6
    filled-new-array {v7, v0}, [Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object p0

    .line 434
    return-object p0

    .line 435
    :cond_f
    new-instance p0, Lce4;

    .line 436
    .line 437
    const-string p1, "unknown body found; this should not happen"

    .line 438
    .line 439
    invoke-direct {p0, p1}, Lce4;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw p0
.end method

.method public final h(Lth2;)Ljava/util/concurrent/CompletableFuture;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcn0;->b(Lll0;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lv64$b;

    .line 5
    .line 6
    new-instance v1, Lvh2;

    .line 7
    .line 8
    invoke-virtual {p1}, Lth2;->n()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lth2;->o()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-direct {v1, v2, v3}, Lvh2;-><init>(Ljava/util/List;Z)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, v1, v2, v2, v2}, Lv64$b;-><init>(Ljava/lang/Object;Lokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lrg5; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lth2;->m()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    new-instance v2, Lv64$c;

    .line 30
    .line 31
    const-string v1, "x-amz-bypass-governance-retention"

    .line 32
    .line 33
    const-string v3, "true"

    .line 34
    .line 35
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v2, v1}, Lv64$c;-><init>([Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    new-instance v1, Lv64$e;

    .line 43
    .line 44
    const-string v3, "delete"

    .line 45
    .line 46
    const-string v4, ""

    .line 47
    .line 48
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-direct {v1, v3}, Lv64$e;-><init>([Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, v2, v1, v0}, Lcn0;->q(Lfw0;Lv64$c;Lv64$e;Lv64$b;)Ljava/util/concurrent/CompletableFuture;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v0, Lym0;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lym0;-><init>(Lth2;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    invoke-static {p0}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public final j(Lv64$h;)Ljava/util/concurrent/CompletableFuture;
    .locals 6

    .line 1
    iget-object v0, p1, Lv64$h;->g:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lv64$h;->h:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcn0;->c:Lv64$a;

    .line 6
    .line 7
    iget-object v2, v2, Lv64$a;->e:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "region must be "

    .line 22
    .line 23
    const-string p1, ", but passed "

    .line 24
    .line 25
    invoke-static {p0, v2, p1, v1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    if-eqz v2, :cond_3

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const-string v1, "us-east-1"

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    iget-object v2, p0, Lcn0;->d:Lda6;

    .line 58
    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    iget-object v2, p0, Lcn0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-static {}, Lmv3;->h()Lmv3$a;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2, v0}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lmv3$a;

    .line 86
    .line 87
    invoke-virtual {v0}, Lll0$a;->d()Lll0;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lmv3;

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcn0;->b(Lll0;)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Lv64$h$a;

    .line 97
    .line 98
    invoke-direct {v2}, Lv64$h$a;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lcn0;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2, v4}, Lv64$h$a;->c(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object v4, Lv64$d;->a:Lv64$d;

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Lv64$h$a;->b(Lv64$d;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, v2, Lv64$h$a;->c:Lll0;

    .line 112
    .line 113
    new-instance v4, Lv64$e;

    .line 114
    .line 115
    const-string v5, "location"

    .line 116
    .line 117
    filled-new-array {v5, v3}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-direct {v4, v3}, Lv64$e;-><init>([Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iput-object v4, v2, Lv64$h$a;->e:Lv64$e;

    .line 125
    .line 126
    invoke-virtual {v2}, Lv64$h$a;->a()Lv64$h;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p0, v2, v1}, Lcn0;->m(Lv64$h;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    new-instance v2, Lnm0;

    .line 135
    .line 136
    invoke-direct {v2, p0, v0}, Lnm0;-><init>(Lcn0;Lmv3;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_2

    .line 144
    :cond_6
    :goto_1
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_2
    new-instance v1, Lvm0;

    .line 149
    .line 150
    invoke-direct {v1, p0, p1}, Lvm0;-><init>(Lcn0;Lv64$h;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0
.end method

.method public final m(Lv64$h;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .locals 8

    .line 1
    iget-object v0, p0, Lcn0;->d:Lda6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    check-cast v0, Lum7;

    .line 9
    .line 10
    iget-object v0, v0, Lum7;->a:Lw32;

    .line 11
    .line 12
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcn0;->c:Lv64$a;

    .line 13
    .line 14
    invoke-virtual {p1, v2, p2, v0}, Lv64$h;->a(Lv64$a;Ljava/lang/String;Lw32;)Lv64$f;

    .line 15
    .line 16
    .line 17
    move-result-object p2
    :try_end_0
    .catch Lrg5; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v0, p2, Lv64$f;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcn0;->e:Lokhttp3/OkHttpClient;

    .line 26
    .line 27
    iget-object v7, p2, Lv64$f;->a:Lokhttp3/Request;

    .line 28
    .line 29
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v7}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/internal/connection/RealCall;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance v2, Lbn0;

    .line 39
    .line 40
    move-object v3, p0

    .line 41
    move-object v6, p1

    .line 42
    invoke-direct/range {v2 .. v7}, Lbn0;-><init>(Lcn0;Ljava/util/concurrent/CompletableFuture;Ljava/lang/StringBuilder;Lv64$h;Lokhttp3/Request;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p2, Lokhttp3/internal/connection/RealCall;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    sget-object p0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 56
    .line 57
    sget-object p0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 58
    .line 59
    invoke-virtual {p0}, Lokhttp3/internal/platform/Platform;->h()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iput-object p0, p2, Lokhttp3/internal/connection/RealCall;->k:Ljava/lang/Object;

    .line 64
    .line 65
    iget-object p0, p2, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object p0, p2, Lokhttp3/internal/connection/RealCall;->a:Lokhttp3/OkHttpClient;

    .line 71
    .line 72
    iget-object p0, p0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    .line 73
    .line 74
    new-instance p1, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 75
    .line 76
    invoke-direct {p1, p2, v2}, Lokhttp3/internal/connection/RealCall$AsyncCall;-><init>(Lokhttp3/internal/connection/RealCall;Lbn0;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    const/4 p2, 0x6

    .line 83
    invoke-static {p0, p1, v1, v1, p2}, Lokhttp3/Dispatcher;->c(Lokhttp3/Dispatcher;Lokhttp3/internal/connection/RealCall$AsyncCall;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealCall$AsyncCall;I)V

    .line 84
    .line 85
    .line 86
    return-object v4

    .line 87
    :cond_1
    const-string p0, "Already Executed"

    .line 88
    .line 89
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    move-object p0, v0

    .line 95
    invoke-static {p0}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0
.end method

.method public final n(Lfw0;Lv64$c;Lv64$e;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 1
    new-instance v0, Lv64$h$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lv64$h$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcn0;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lv64$h$a;->c(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lv64$d;->a:Lv64$d;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lv64$h$a;->b(Lv64$d;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, v0, Lv64$h$a;->d:Lv64$c;

    .line 17
    .line 18
    iput-object p3, v0, Lv64$h$a;->e:Lv64$e;

    .line 19
    .line 20
    iput-object p1, v0, Lv64$h$a;->c:Lll0;

    .line 21
    .line 22
    invoke-virtual {v0}, Lv64$h$a;->a()Lv64$h;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcn0;->j(Lv64$h;)Ljava/util/concurrent/CompletableFuture;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final q(Lfw0;Lv64$c;Lv64$e;Lv64$b;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 1
    new-instance v0, Lv64$h$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lv64$h$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcn0;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lv64$h$a;->c(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lv64$d;->c:Lv64$d;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lv64$h$a;->b(Lv64$d;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, v0, Lv64$h$a;->d:Lv64$c;

    .line 17
    .line 18
    iput-object p3, v0, Lv64$h$a;->e:Lv64$e;

    .line 19
    .line 20
    iput-object p4, v0, Lv64$h$a;->f:Lv64$b;

    .line 21
    .line 22
    iput-object p1, v0, Lv64$h$a;->c:Lll0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lv64$h$a;->a()Lv64$h;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcn0;->j(Lv64$h;)Ljava/util/concurrent/CompletableFuture;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final r(Lyb6;Lv64$c;Lv64$e;Lv64$b;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 1
    new-instance v0, Lv64$h$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lv64$h$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcn0;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lv64$h$a;->c(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lv64$d;->d:Lv64$d;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lv64$h$a;->b(Lv64$d;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, v0, Lv64$h$a;->d:Lv64$c;

    .line 17
    .line 18
    iput-object p3, v0, Lv64$h$a;->e:Lv64$e;

    .line 19
    .line 20
    iput-object p4, v0, Lv64$h$a;->f:Lv64$b;

    .line 21
    .line 22
    iput-object p1, v0, Lv64$h$a;->c:Lll0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lv64$h$a;->a()Lv64$h;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcn0;->j(Lv64$h;)Ljava/util/concurrent/CompletableFuture;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final v(Lpx4;)Ljava/util/concurrent/CompletableFuture;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcn0;->b(Lll0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lpx4;->o()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lpx4;->p()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lpx4;->r()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lpx4;->s()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v0, v1, v2, v3}, Lcn0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lv64$e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lpx4;->q()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const-string v1, "key-marker"

    .line 35
    .line 36
    invoke-virtual {p1}, Lpx4;->q()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lv64$e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Lpx4;->t()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    const-string v1, "version-id-marker"

    .line 50
    .line 51
    invoke-virtual {p1}, Lpx4;->t()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Lv64$e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    const-string v1, "versions"

    .line 59
    .line 60
    const-string v2, ""

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lv64$e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, p1, v1, v0}, Lcn0;->n(Lfw0;Lv64$c;Lv64$e;)Ljava/util/concurrent/CompletableFuture;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v0, Lum0;

    .line 71
    .line 72
    invoke-direct {v0, p1}, Lum0;-><init>(Lpx4;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public final z(Lyx4;)Ljava/util/concurrent/CompletableFuture;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcn0;->b(Lll0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lyx4;->n()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lyx4;->o()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lyx4;->q()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lyx4;->r()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v0, v1, v2, v3}, Lcn0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lv64$e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lyx4;->p()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const-string v1, "marker"

    .line 35
    .line 36
    invoke-virtual {p1}, Lyx4;->p()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lv64$e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, p1, v1, v0}, Lcn0;->n(Lfw0;Lv64$c;Lv64$e;)Ljava/util/concurrent/CompletableFuture;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v0, Ltm0;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Ltm0;-><init>(Lyx4;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
