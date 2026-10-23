.class public final Lol0;
.super Lql0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:[C


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Lnl0;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v2, v1, [C

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    const-string v3, "base16()"

    .line 11
    .line 12
    invoke-direct {v0, v3, v2}, Lnl0;-><init>(Ljava/lang/String;[C)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, v0, v2}, Lql0;-><init>(Lnl0;Ljava/lang/Character;)V

    .line 17
    .line 18
    .line 19
    const/16 v3, 0x200

    .line 20
    .line 21
    new-array v3, v3, [C

    .line 22
    .line 23
    iput-object v3, p0, Lol0;->d:[C

    .line 24
    .line 25
    iget-object v0, v0, Lnl0;->b:[C

    .line 26
    .line 27
    array-length v3, v0

    .line 28
    if-ne v3, v1, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    const/16 v2, 0x100

    .line 32
    .line 33
    if-ge v1, v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lol0;->d:[C

    .line 36
    .line 37
    ushr-int/lit8 v3, v1, 0x4

    .line 38
    .line 39
    aget-char v3, v0, v3

    .line 40
    .line 41
    aput-char v3, v2, v1

    .line 42
    .line 43
    or-int/lit16 v3, v1, 0x100

    .line 44
    .line 45
    and-int/lit8 v4, v1, 0xf

    .line 46
    .line 47
    aget-char v4, v0, v4

    .line 48
    .line 49
    aput-char v4, v2, v3

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-static {}, Lc6;->b()V

    .line 56
    .line 57
    .line 58
    throw v2

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method
