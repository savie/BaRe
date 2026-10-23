.class public final Ljq4;
.super Lto4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:[Liq4;

.field public final synthetic d:Lkq4;


# direct methods
.method public constructor <init>(Lkq4;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljq4;->d:Lkq4;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p2, p3, p1}, Lto4;-><init>(III)V

    .line 5
    .line 6
    .line 7
    add-int/2addr p2, p3

    .line 8
    shl-int/2addr p1, p2

    .line 9
    new-array p1, p1, [Liq4;

    .line 10
    .line 11
    iput-object p1, p0, Ljq4;->c:[Liq4;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object p2, p0, Ljq4;->c:[Liq4;

    .line 15
    .line 16
    array-length p3, p2

    .line 17
    if-ge p1, p3, :cond_0

    .line 18
    .line 19
    new-instance p3, Liq4;

    .line 20
    .line 21
    invoke-direct {p3, p0}, Liq4;-><init>(Ljq4;)V

    .line 22
    .line 23
    .line 24
    aput-object p3, p2, p1

    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
