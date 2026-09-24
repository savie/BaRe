.class public final Lv;
.super La2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:I

.field public final d:[Z


# direct methods
.method public constructor <init>(Lm2;[BI)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, La2;-><init>(Lm2;[B)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lv;->c:I

    .line 5
    .line 6
    array-length p1, p2

    .line 7
    mul-int/lit8 p1, p1, 0x8

    .line 8
    .line 9
    sub-int/2addr p1, p3

    .line 10
    new-array p3, p1, [Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    :goto_0
    if-ge v1, p1, :cond_1

    .line 15
    .line 16
    div-int/lit8 v2, v1, 0x8

    .line 17
    .line 18
    aget-byte v2, p2, v2

    .line 19
    .line 20
    rem-int/lit8 v3, v1, 0x8

    .line 21
    .line 22
    rsub-int/lit8 v3, v3, 0x7

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    shl-int v3, v4, v3

    .line 26
    .line 27
    and-int/2addr v2, v3

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v4, v0

    .line 32
    :goto_1
    aput-boolean v4, p3, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iput-object p3, p0, Lv;->d:[Z

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lv;->d:[Z

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lv;->d:[Z

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method
