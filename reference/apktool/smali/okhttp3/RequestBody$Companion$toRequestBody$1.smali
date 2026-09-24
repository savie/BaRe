.class public final Lokhttp3/RequestBody$Companion$toRequestBody$1;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:Lhy0;


# direct methods
.method public constructor <init>(Lhy0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->b:Lhy0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->b:Lhy0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lhy0;->d()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    int-to-long v0, p0

    .line 8
    return-wide v0
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final d(Lyw0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->b:Lhy0;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lyw0;->P(Lhy0;)Lyw0;

    .line 4
    .line 5
    .line 6
    return-void
.end method
