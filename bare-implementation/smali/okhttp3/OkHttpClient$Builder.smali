.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A:J

.field public B:Lokhttp3/internal/connection/RouteDatabase;

.field public C:Lokhttp3/internal/concurrent/TaskRunner;

.field public a:Lokhttp3/Dispatcher;

.field public b:Lokhttp3/ConnectionPool;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Lb6;

.field public f:Z

.field public g:Z

.field public h:Lokhttp3/Authenticator;

.field public i:Z

.field public j:Z

.field public k:Lokhttp3/CookieJar;

.field public l:Lokhttp3/Dns;

.field public m:Ljava/net/ProxySelector;

.field public n:Lokhttp3/Authenticator;

.field public o:Ljavax/net/SocketFactory;

.field public p:Ljavax/net/ssl/SSLSocketFactory;

.field public q:Ljavax/net/ssl/X509TrustManager;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Ljavax/net/ssl/HostnameVerifier;

.field public u:Lokhttp3/CertificatePinner;

.field public v:Lokhttp3/internal/tls/CertificateChainCleaner;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/Dispatcher;

    .line 5
    .line 6
    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 26
    .line 27
    new-instance v0, Lb6;

    .line 28
    .line 29
    const/16 v1, 0xb

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lb6;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Lb6;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->f:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->g:Z

    .line 40
    .line 41
    sget-object v1, Lokhttp3/Authenticator;->a:Lokhttp3/Authenticator;

    .line 42
    .line 43
    iput-object v1, p0, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/Authenticator;

    .line 44
    .line 45
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->i:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->j:Z

    .line 48
    .line 49
    sget-object v0, Lokhttp3/CookieJar;->a:Lokhttp3/CookieJar;

    .line 50
    .line 51
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->k:Lokhttp3/CookieJar;

    .line 52
    .line 53
    sget-object v0, Lokhttp3/Dns;->a:Lokhttp3/Dns;

    .line 54
    .line 55
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->l:Lokhttp3/Dns;

    .line 56
    .line 57
    iput-object v1, p0, Lokhttp3/OkHttpClient$Builder;->n:Lokhttp3/Authenticator;

    .line 58
    .line 59
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->o:Ljavax/net/SocketFactory;

    .line 67
    .line 68
    sget-object v0, Lokhttp3/OkHttpClient;->E:Ljava/util/List;

    .line 69
    .line 70
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->r:Ljava/util/List;

    .line 71
    .line 72
    sget-object v0, Lokhttp3/OkHttpClient;->D:Ljava/util/List;

    .line 73
    .line 74
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->s:Ljava/util/List;

    .line 75
    .line 76
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->a:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 77
    .line 78
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->t:Ljavax/net/ssl/HostnameVerifier;

    .line 79
    .line 80
    sget-object v0, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner;

    .line 81
    .line 82
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->u:Lokhttp3/CertificatePinner;

    .line 83
    .line 84
    const/16 v0, 0x2710

    .line 85
    .line 86
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->w:I

    .line 87
    .line 88
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 89
    .line 90
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 91
    .line 92
    const v0, 0xea60

    .line 93
    .line 94
    .line 95
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->z:I

    .line 96
    .line 97
    const-wide/16 v0, 0x400

    .line 98
    .line 99
    iput-wide v0, p0, Lokhttp3/OkHttpClient$Builder;->A:J

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p3}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->w:I

    .line 9
    .line 10
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lokhttp3/Protocol;->k:Lokhttp3/Protocol;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p0, "protocols must contain h2_prior_knowledge or http/1.1: "

    .line 27
    .line 28
    invoke-static {v0, p0}, Ly5;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v1, 0x1

    .line 43
    if-gt p1, v1, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string p0, "protocols containing h2_prior_knowledge cannot use other protocols: "

    .line 47
    .line 48
    invoke-static {v0, p0}, Ly5;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    :goto_1
    sget-object p1, Lokhttp3/Protocol;->c:Lokhttp3/Protocol;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_6

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_5

    .line 66
    .line 67
    sget-object v1, Lokhttp3/Protocol;->e:Lokhttp3/Protocol;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lokhttp3/OkHttpClient$Builder;->s:Ljava/util/List;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->B:Lokhttp3/internal/connection/RouteDatabase;

    .line 81
    .line 82
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->s:Ljava/util/List;

    .line 90
    .line 91
    return-void

    .line 92
    :cond_5
    const-string p0, "protocols must not contain null"

    .line 93
    .line 94
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_6
    const-string p0, "protocols must not contain http/1.0: "

    .line 99
    .line 100
    invoke-static {v0, p0}, Ly5;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p3}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 9
    .line 10
    return-void
.end method

.method public final d(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->q:Ljavax/net/ssl/X509TrustManager;

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->B:Lokhttp3/internal/connection/RouteDatabase;

    .line 22
    .line 23
    :cond_1
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 24
    .line 25
    sget-object p1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 26
    .line 27
    sget-object p1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lokhttp3/internal/platform/Platform;->c(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->v:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 34
    .line 35
    iput-object p2, p0, Lokhttp3/OkHttpClient$Builder;->q:Ljavax/net/ssl/X509TrustManager;

    .line 36
    .line 37
    return-void
.end method
