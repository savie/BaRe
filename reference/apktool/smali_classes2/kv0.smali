.class public final Lkv0;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:Lokhttp3/MediaType;

.field public final synthetic c:[B

.field public final synthetic d:Liv0;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;[BLiv0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkv0;->b:Lokhttp3/MediaType;

    .line 5
    .line 6
    iput-object p2, p0, Lkv0;->c:[B

    .line 7
    .line 8
    iput-object p3, p0, Lkv0;->d:Liv0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-object p0, p0, Lkv0;->c:[B

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    int-to-long v0, p0

    .line 5
    return-wide v0
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 0

    .line 1
    iget-object p0, p0, Lkv0;->b:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Lyw0;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lkv0;->c:[B

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    sub-int/2addr v2, v0

    .line 9
    const/high16 v3, 0x10000

    .line 10
    .line 11
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {p1, v1, v0, v2}, Lyw0;->write([BII)Lyw0;

    .line 16
    .line 17
    .line 18
    int-to-long v3, v2

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v3, p0, Lkv0;->d:Liv0;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Liv0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    add-int/2addr v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
