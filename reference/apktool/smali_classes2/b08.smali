.class public final synthetic Lb08;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lh08;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lh08;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb08;->a:Lh08;

    .line 5
    .line 6
    iput-object p2, p0, Lb08;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lb08;->c:J

    .line 9
    .line 10
    iput-object p5, p0, Lb08;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, Lb08;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    iget-object v2, p0, Lb08;->a:Lh08;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v2, "/openapi/api/create"

    .line 25
    .line 26
    invoke-static {v1, v2, p1}, Lh08;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 31
    .line 32
    new-instance p1, Lokhttp3/FormBody$Builder;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {p1, v1}, Lokhttp3/FormBody$Builder;-><init>(I)V

    .line 36
    .line 37
    .line 38
    const-string v1, "path"

    .line 39
    .line 40
    iget-object v2, p0, Lb08;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v1, v2}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "size"

    .line 46
    .line 47
    iget-wide v2, p0, Lb08;->c:J

    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1, v1, v2}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "uploadid"

    .line 57
    .line 58
    iget-object v2, p0, Lb08;->d:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v1, v2}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "block_list"

    .line 64
    .line 65
    iget-object p0, p0, Lb08;->e:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, v1, p0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p0, "rtype"

    .line 71
    .line 72
    const-string v1, "3"

    .line 73
    .line 74
    invoke-virtual {p1, p0, v1}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->c()Lokhttp3/FormBody;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string p1, "POST"

    .line 82
    .line 83
    invoke-virtual {v0, p1, p0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 84
    .line 85
    .line 86
    new-instance p0, Lokhttp3/Request;

    .line 87
    .line 88
    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 89
    .line 90
    .line 91
    return-object p0
.end method
