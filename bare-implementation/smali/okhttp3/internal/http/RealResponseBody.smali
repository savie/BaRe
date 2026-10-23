.class public final Lokhttp3/internal/http/RealResponseBody;
.super Lokhttp3/ResponseBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ltf6;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLtf6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http/RealResponseBody;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lokhttp3/internal/http/RealResponseBody;->d:J

    .line 7
    .line 8
    iput-object p4, p0, Lokhttp3/internal/http/RealResponseBody;->e:Ltf6;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http/RealResponseBody;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final j()Lokhttp3/MediaType;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lokhttp3/internal/http/RealResponseBody;->c:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lokhttp3/MediaType;->d:Lai6;

    .line 7
    .line 8
    :try_start_0
    invoke-static {p0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    :cond_0
    return-object v0
.end method

.method public final m()Lzw0;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http/RealResponseBody;->e:Ltf6;

    .line 2
    .line 3
    return-object p0
.end method
