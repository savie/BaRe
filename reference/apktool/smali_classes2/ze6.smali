.class public final Lze6;
.super Lye6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final j:[B

.field public k:I


# direct methods
.method public constructor <init>(Lv40;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lye6;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0xfffb

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lv40;->a(I)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lze6;->j:[B

    .line 12
    .line 13
    array-length p1, p1

    .line 14
    iput p1, p0, Lze6;->k:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final T()V
    .locals 5

    .line 1
    iget v0, p0, Lye6;->h:I

    .line 2
    .line 3
    const/high16 v1, -0x1000000

    .line 4
    .line 5
    and-int/2addr v1, v0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget v1, p0, Lye6;->i:I

    .line 9
    .line 10
    shl-int/lit8 v1, v1, 0x8

    .line 11
    .line 12
    iget-object v2, p0, Lze6;->j:[B

    .line 13
    .line 14
    iget v3, p0, Lze6;->k:I

    .line 15
    .line 16
    add-int/lit8 v4, v3, 0x1

    .line 17
    .line 18
    iput v4, p0, Lze6;->k:I

    .line 19
    .line 20
    aget-byte v2, v2, v3

    .line 21
    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 23
    .line 24
    or-int/2addr v1, v2

    .line 25
    iput v1, p0, Lye6;->i:I

    .line 26
    .line 27
    shl-int/lit8 v0, v0, 0x8

    .line 28
    .line 29
    iput v0, p0, Lye6;->h:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    new-instance p0, Lcy1;

    .line 33
    .line 34
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_0
    return-void
.end method
