.class public final Lokhttp3/internal/idn/IdnaMappingTableKt;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final a(ILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/lit8 p0, p0, 0x1

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    shl-int/lit8 p1, v0, 0x7

    .line 15
    .line 16
    add-int/2addr p1, p0

    .line 17
    return p1
.end method
