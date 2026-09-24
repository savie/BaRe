.class public final synthetic Ld08;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lh08;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lh08;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld08;->a:Lh08;

    .line 5
    .line 6
    iput-object p2, p0, Ld08;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Ld08;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokhttp3/Request$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getApiDomain()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v2, p0, Ld08;->a:Lh08;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v2, "/openapi/api/filemetas"

    .line 25
    .line 26
    invoke-static {v1, v2, p1}, Lh08;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v1, "target"

    .line 35
    .line 36
    iget-object v2, p0, Ld08;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v1, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p0, p0, Ld08;->c:Z

    .line 42
    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    const-string p0, "1"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string p0, "0"

    .line 49
    .line 50
    :goto_0
    const-string v1, "dlink"

    .line 51
    .line 52
    invoke-virtual {p1, v1, p0}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iput-object p0, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 60
    .line 61
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 62
    .line 63
    .line 64
    new-instance p0, Lokhttp3/Request;

    .line 65
    .line 66
    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 67
    .line 68
    .line 69
    return-object p0
.end method
