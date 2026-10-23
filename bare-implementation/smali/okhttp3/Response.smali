.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field public final G:Lokhttp3/TrailersSource;

.field public final H:Z

.field public final a:Lokhttp3/Request;

.field public final b:Lokhttp3/Protocol;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Lokhttp3/Handshake;

.field public final f:Lokhttp3/Headers;

.field public final k:Lokhttp3/ResponseBody;

.field public final n:Lwi7;

.field public final p:Lokhttp3/Response;

.field public final q:Lokhttp3/Response;

.field public final r:Lokhttp3/Response;

.field public final t:J

.field public final x:J

.field public final y:Lokhttp3/internal/connection/Exchange;


# direct methods
.method public constructor <init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lwi7;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/Exchange;Lokhttp3/TrailersSource;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 20
    .line 21
    iput-object p2, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    .line 22
    .line 23
    iput-object p3, p0, Lokhttp3/Response;->c:Ljava/lang/String;

    .line 24
    .line 25
    iput p4, p0, Lokhttp3/Response;->d:I

    .line 26
    .line 27
    iput-object p5, p0, Lokhttp3/Response;->e:Lokhttp3/Handshake;

    .line 28
    .line 29
    iput-object p6, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 30
    .line 31
    iput-object p7, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 32
    .line 33
    iput-object p8, p0, Lokhttp3/Response;->n:Lwi7;

    .line 34
    .line 35
    iput-object p9, p0, Lokhttp3/Response;->p:Lokhttp3/Response;

    .line 36
    .line 37
    iput-object p10, p0, Lokhttp3/Response;->q:Lokhttp3/Response;

    .line 38
    .line 39
    iput-object p11, p0, Lokhttp3/Response;->r:Lokhttp3/Response;

    .line 40
    .line 41
    iput-wide p12, p0, Lokhttp3/Response;->t:J

    .line 42
    .line 43
    iput-wide p14, p0, Lokhttp3/Response;->x:J

    .line 44
    .line 45
    move-object/from16 p1, p16

    .line 46
    .line 47
    iput-object p1, p0, Lokhttp3/Response;->y:Lokhttp3/internal/connection/Exchange;

    .line 48
    .line 49
    move-object/from16 p1, p17

    .line 50
    .line 51
    iput-object p1, p0, Lokhttp3/Response;->G:Lokhttp3/TrailersSource;

    .line 52
    .line 53
    const/16 p1, 0xc8

    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    if-gt p1, p4, :cond_0

    .line 57
    .line 58
    const/16 p1, 0x12c

    .line 59
    .line 60
    if-ge p4, p1, :cond_0

    .line 61
    .line 62
    const/4 p2, 0x1

    .line 63
    :cond_0
    iput-boolean p2, p0, Lokhttp3/Response;->H:Z

    .line 64
    .line 65
    return-void
.end method

.method public static b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 2
    .line 3
    iget p0, p0, Lokhttp3/Response;->d:I

    .line 4
    .line 5
    const/16 v1, 0x191

    .line 6
    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x197

    .line 10
    .line 11
    if-eq p0, v1, :cond_0

    .line 12
    .line 13
    sget-object p0, Lov2;->a:Lov2;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "Proxy-Authenticate"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string p0, "WWW-Authenticate"

    .line 20
    .line 21
    :goto_0
    sget-object v1, Lokhttp3/internal/http/HttpHeaders;->a:Lhy0;

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_1
    if-ge v3, v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    new-instance v4, Lnw0;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lokhttp3/Headers;->g(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Lnw0;->Z(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-static {v4, v1}, Lokhttp3/internal/http/HttpHeaders;->b(Lnw0;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catch_0
    move-exception v4

    .line 62
    sget-object v5, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 63
    .line 64
    sget-object v5, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 65
    .line 66
    const-string v6, "Unable to parse challenge"

    .line 67
    .line 68
    const/4 v7, 0x5

    .line 69
    invoke-virtual {v5, v7, v6, v4}, Lokhttp3/internal/platform/Platform;->j(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    return-object v1
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()Lokhttp3/Response$Builder;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/Response$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lokhttp3/Response$Builder;->c:I

    .line 8
    .line 9
    sget-object v1, Lokhttp3/ResponseBody;->b:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 10
    .line 11
    iput-object v1, v0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 12
    .line 13
    sget-object v1, Lokhttp3/TrailersSource;->a:Lokhttp3/TrailersSource$Companion$EMPTY$1;

    .line 14
    .line 15
    iput-object v1, v0, Lokhttp3/Response$Builder;->o:Lokhttp3/TrailersSource;

    .line 16
    .line 17
    iget-object v1, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 18
    .line 19
    iput-object v1, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 20
    .line 21
    iget-object v1, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    .line 22
    .line 23
    iput-object v1, v0, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 24
    .line 25
    iget v1, p0, Lokhttp3/Response;->d:I

    .line 26
    .line 27
    iput v1, v0, Lokhttp3/Response$Builder;->c:I

    .line 28
    .line 29
    iget-object v1, p0, Lokhttp3/Response;->c:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, v0, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p0, Lokhttp3/Response;->e:Lokhttp3/Handshake;

    .line 34
    .line 35
    iput-object v1, v0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    .line 36
    .line 37
    iget-object v1, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 38
    .line 39
    invoke-virtual {v1}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 44
    .line 45
    iget-object v1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 46
    .line 47
    iput-object v1, v0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 48
    .line 49
    iget-object v1, p0, Lokhttp3/Response;->n:Lwi7;

    .line 50
    .line 51
    iput-object v1, v0, Lokhttp3/Response$Builder;->h:Lwi7;

    .line 52
    .line 53
    iget-object v1, p0, Lokhttp3/Response;->p:Lokhttp3/Response;

    .line 54
    .line 55
    iput-object v1, v0, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    .line 56
    .line 57
    iget-object v1, p0, Lokhttp3/Response;->q:Lokhttp3/Response;

    .line 58
    .line 59
    iput-object v1, v0, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    .line 60
    .line 61
    iget-object v1, p0, Lokhttp3/Response;->r:Lokhttp3/Response;

    .line 62
    .line 63
    iput-object v1, v0, Lokhttp3/Response$Builder;->k:Lokhttp3/Response;

    .line 64
    .line 65
    iget-wide v1, p0, Lokhttp3/Response;->t:J

    .line 66
    .line 67
    iput-wide v1, v0, Lokhttp3/Response$Builder;->l:J

    .line 68
    .line 69
    iget-wide v1, p0, Lokhttp3/Response;->x:J

    .line 70
    .line 71
    iput-wide v1, v0, Lokhttp3/Response$Builder;->m:J

    .line 72
    .line 73
    iget-object v1, p0, Lokhttp3/Response;->y:Lokhttp3/internal/connection/Exchange;

    .line 74
    .line 75
    iput-object v1, v0, Lokhttp3/Response$Builder;->n:Lokhttp3/internal/connection/Exchange;

    .line 76
    .line 77
    iget-object p0, p0, Lokhttp3/Response;->G:Lokhttp3/TrailersSource;

    .line 78
    .line 79
    iput-object p0, v0, Lokhttp3/Response$Builder;->o:Lokhttp3/TrailersSource;

    .line 80
    .line 81
    return-object v0
.end method

.method public final h(J)Lokhttp3/ResponseBody$Companion$asResponseBody$1;
    .locals 4

    .line 1
    iget-object p0, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->m()Lzw0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lzw0;->peek()Ltf6;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lnw0;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Ltf6;->request(J)Z

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Ltf6;->b:Lnw0;

    .line 20
    .line 21
    iget-wide v2, v2, Lnw0;->b:J

    .line 22
    .line 23
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    invoke-virtual {v1, v0, p1, p2}, Lnw0;->G(Lij7;J)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lokhttp3/ResponseBody;->b:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 31
    .line 32
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->j()Lokhttp3/MediaType;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-wide p1, v1, Lnw0;->b:J

    .line 37
    .line 38
    new-instance v0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, p2, v1}, Lokhttp3/ResponseBody$Companion$asResponseBody$1;-><init>(Lokhttp3/MediaType;JLnw0;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Response{protocol="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", code="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lokhttp3/Response;->d:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", message="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lokhttp3/Response;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", url="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 39
    .line 40
    iget-object p0, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 p0, 0x7d

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
