.class public final Lokhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lhy0;

.field public b:Lokhttp3/MediaType;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-direct {p0, v0}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lhy0;->d:Lhy0;

    .line 8
    .line 9
    invoke-static {p1}, Lge;->v(Ljava/lang/String;)Lhy0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->a:Lhy0;

    .line 14
    .line 15
    sget-object p1, Lokhttp3/MultipartBody;->f:Lokhttp3/MediaType;

    .line 16
    .line 17
    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->b:Lokhttp3/MediaType;

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)V
    .locals 2

    .line 1
    const-string v0, "form-data; name="

    .line 2
    .line 3
    invoke-static {v0}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lokhttp3/MultipartBody;->f:Lokhttp3/MediaType;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lokhttp3/MultipartBody$Companion;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const-string p1, "; filename="

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v0}, Lokhttp3/MultipartBody$Companion;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Lokhttp3/Headers$Builder;

    .line 27
    .line 28
    invoke-direct {p2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, "Content-Disposition"

    .line 32
    .line 33
    invoke-static {v0}, Lokhttp3/internal/_HeadersCommonKt;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2, v0, p1}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "Content-Type"

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-nez p2, :cond_2

    .line 50
    .line 51
    const-string p2, "Content-Length"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-nez p2, :cond_1

    .line 58
    .line 59
    new-instance p2, Lokhttp3/MultipartBody$Part;

    .line 60
    .line 61
    invoke-direct {p2, p1, p3}, Lokhttp3/MultipartBody$Part;-><init>(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->c:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    const-string p0, "Unexpected header: Content-Length"

    .line 71
    .line 72
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    const-string p0, "Unexpected header: Content-Type"

    .line 77
    .line 78
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final b()Lokhttp3/MultipartBody;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lokhttp3/MultipartBody;

    .line 10
    .line 11
    iget-object v2, p0, Lokhttp3/MultipartBody$Builder;->b:Lokhttp3/MediaType;

    .line 12
    .line 13
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->j(Ljava/util/List;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->a:Lhy0;

    .line 18
    .line 19
    invoke-direct {v1, p0, v2, v0}, Lokhttp3/MultipartBody;-><init>(Lhy0;Lokhttp3/MediaType;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    const-string p0, "Multipart body must have at least one part."

    .line 24
    .line 25
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final c(Lokhttp3/MediaType;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lokhttp3/MediaType;->b:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "multipart"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->b:Lokhttp3/MediaType;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "multipart != "

    .line 18
    .line 19
    invoke-static {p1, p0}, Ly5;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
