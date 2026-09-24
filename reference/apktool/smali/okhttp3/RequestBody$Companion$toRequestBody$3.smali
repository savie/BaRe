.class public final Lokhttp3/RequestBody$Companion$toRequestBody$3;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:Lokhttp3/MediaType;

.field public final synthetic c:I

.field public final synthetic d:[B


# direct methods
.method public constructor <init>([BILokhttp3/MediaType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->b:Lokhttp3/MediaType;

    .line 5
    .line 6
    iput p2, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->c:I

    .line 7
    .line 8
    iput-object p1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->d:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->c:I

    .line 2
    .line 3
    int-to-long v0, p0

    .line 4
    return-wide v0
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->b:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Lyw0;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->c:I

    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->d:[B

    .line 5
    .line 6
    invoke-interface {p1, p0, v0, v1}, Lyw0;->write([BII)Lyw0;

    .line 7
    .line 8
    .line 9
    return-void
.end method
