.class public abstract Lom9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lnh4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lfm9;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lfm9;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lnf9;->a:I

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lnh4;

    .line 12
    .line 13
    const/16 v1, 0x12

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lnh4;-><init>(I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lom9;->a:Lnh4;

    .line 19
    .line 20
    return-void
.end method

.method public static bridge synthetic a([BII)I
    .locals 6

    .line 1
    sub-int/2addr p2, p1

    .line 2
    add-int/lit8 v0, p1, -0x1

    .line 3
    .line 4
    aget-byte v0, p0, v0

    .line 5
    .line 6
    const/16 v1, -0xc

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/16 v4, -0x41

    .line 13
    .line 14
    if-eq p2, v3, :cond_3

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    if-ne p2, v5, :cond_2

    .line 18
    .line 19
    aget-byte p2, p0, p1

    .line 20
    .line 21
    add-int/2addr p1, v3

    .line 22
    aget-byte p0, p0, p1

    .line 23
    .line 24
    if-gt v0, v1, :cond_1

    .line 25
    .line 26
    if-gt p2, v4, :cond_1

    .line 27
    .line 28
    if-le p0, v4, :cond_0

    .line 29
    .line 30
    return v2

    .line 31
    :cond_0
    shl-int/lit8 p1, p2, 0x8

    .line 32
    .line 33
    shl-int/lit8 p0, p0, 0x10

    .line 34
    .line 35
    xor-int/2addr p1, v0

    .line 36
    xor-int/2addr p0, p1

    .line 37
    return p0

    .line 38
    :cond_1
    return v2

    .line 39
    :cond_2
    invoke-static {}, Ld6;->n()V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_3
    aget-byte p0, p0, p1

    .line 45
    .line 46
    if-gt v0, v1, :cond_5

    .line 47
    .line 48
    if-le p0, v4, :cond_4

    .line 49
    .line 50
    return v2

    .line 51
    :cond_4
    shl-int/lit8 p0, p0, 0x8

    .line 52
    .line 53
    xor-int/2addr p0, v0

    .line 54
    return p0

    .line 55
    :cond_5
    return v2

    .line 56
    :cond_6
    if-le v0, v1, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    return v0
.end method
