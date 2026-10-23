.class public final Lokhttp3/ResponseBody$Companion$asResponseBody$1;
.super Lokhttp3/ResponseBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic c:Lokhttp3/MediaType;

.field public final synthetic d:J

.field public final synthetic e:Lnw0;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;JLnw0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->c:Lokhttp3/MediaType;

    .line 5
    .line 6
    iput-wide p2, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->d:J

    .line 7
    .line 8
    iput-object p4, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->e:Lnw0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final j()Lokhttp3/MediaType;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->c:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final m()Lzw0;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->e:Lnw0;

    .line 2
    .line 3
    return-object p0
.end method
