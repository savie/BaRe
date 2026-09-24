.class public final Lrv6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgg7;


# instance fields
.field public final a:Z

.field public b:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lrv6;->a:Z

    .line 5
    .line 6
    iput p1, p0, Lrv6;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 4

    .line 1
    add-int/2addr p3, p2

    .line 2
    add-int/lit8 p3, p3, -0x4

    .line 3
    .line 4
    move v0, p2

    .line 5
    :goto_0
    if-gt v0, p3, :cond_4

    .line 6
    .line 7
    aget-byte v1, p1, v0

    .line 8
    .line 9
    const/16 v2, 0x40

    .line 10
    .line 11
    const/16 v3, 0xc0

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    aget-byte v2, p1, v2

    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    :cond_0
    const/16 v2, 0x7f

    .line 23
    .line 24
    if-ne v1, v2, :cond_3

    .line 25
    .line 26
    add-int/lit8 v1, v0, 0x1

    .line 27
    .line 28
    aget-byte v1, p1, v1

    .line 29
    .line 30
    and-int/2addr v1, v3

    .line 31
    if-ne v1, v3, :cond_3

    .line 32
    .line 33
    :cond_1
    invoke-static {p1, v0}, Lpe4;->o([BI)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget v2, p0, Lrv6;->b:I

    .line 38
    .line 39
    add-int/2addr v2, v0

    .line 40
    sub-int/2addr v2, p2

    .line 41
    ushr-int/lit8 v2, v2, 0x2

    .line 42
    .line 43
    iget-boolean v3, p0, Lrv6;->a:Z

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    neg-int v2, v2

    .line 48
    :cond_2
    add-int/2addr v1, v2

    .line 49
    shl-int/lit8 v1, v1, 0x9

    .line 50
    .line 51
    shr-int/lit8 v1, v1, 0x9

    .line 52
    .line 53
    const v2, 0x3fffffff    # 1.9999999f

    .line 54
    .line 55
    .line 56
    and-int/2addr v1, v2

    .line 57
    const/high16 v2, 0x40000000    # 2.0f

    .line 58
    .line 59
    or-int/2addr v1, v2

    .line 60
    invoke-static {p1, v0, v1}, Lpe4;->B([BII)V

    .line 61
    .line 62
    .line 63
    :cond_3
    add-int/lit8 v0, v0, 0x4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    sub-int/2addr v0, p2

    .line 67
    iget p1, p0, Lrv6;->b:I

    .line 68
    .line 69
    add-int/2addr p1, v0

    .line 70
    iput p1, p0, Lrv6;->b:I

    .line 71
    .line 72
    return v0
.end method
