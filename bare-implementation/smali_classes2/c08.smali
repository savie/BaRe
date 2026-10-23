.class public final synthetic Lc08;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lh08;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lh08;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc08;->a:Lh08;

    .line 5
    .line 6
    iput-object p2, p0, Lc08;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lc08;->c:I

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
    iget-object v2, p0, Lc08;->a:Lh08;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v2, "/openapi/api/list"

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
    const-string v1, "dir"

    .line 35
    .line 36
    iget-object v2, p0, Lc08;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v1, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "page"

    .line 42
    .line 43
    iget p0, p0, Lc08;->c:I

    .line 44
    .line 45
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, v1, p0}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string p0, "num"

    .line 53
    .line 54
    const/16 v1, 0x64

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1, p0, v1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p0, "order"

    .line 64
    .line 65
    const-string v1, "name"

    .line 66
    .line 67
    invoke-virtual {p1, p0, v1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p0, "desc"

    .line 71
    .line 72
    const-string v1, "0"

    .line 73
    .line 74
    invoke-virtual {p1, p0, v1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string p0, "web"

    .line 78
    .line 79
    const-string v1, "1"

    .line 80
    .line 81
    invoke-virtual {p1, p0, v1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    iput-object p0, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 89
    .line 90
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 91
    .line 92
    .line 93
    new-instance p0, Lokhttp3/Request;

    .line 94
    .line 95
    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 96
    .line 97
    .line 98
    return-object p0
.end method
