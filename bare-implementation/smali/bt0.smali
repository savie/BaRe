.class public final Lbt0;
.super Lh3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Lun2;Lke;)Lgt0;
    .locals 3

    .line 1
    iget p0, p1, Lun2;->e:I

    .line 2
    .line 3
    iget-object p2, p1, Lun2;->a:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget v0, p1, Lun2;->g:I

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    if-ge v0, v1, :cond_2

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ge p0, v0, :cond_2

    .line 15
    .line 16
    invoke-interface {p2, p0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/16 v0, 0x3e

    .line 21
    .line 22
    if-ne p2, v0, :cond_2

    .line 23
    .line 24
    iget p2, p1, Lun2;->c:I

    .line 25
    .line 26
    iget v0, p1, Lun2;->g:I

    .line 27
    .line 28
    add-int/2addr p2, v0

    .line 29
    add-int/lit8 v0, p2, 0x1

    .line 30
    .line 31
    iget-object p1, p1, Lun2;->a:Ljava/lang/CharSequence;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    add-int/2addr p0, v1

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ge p0, v2, :cond_1

    .line 40
    .line 41
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    const/16 p1, 0x9

    .line 46
    .line 47
    if-eq p0, p1, :cond_0

    .line 48
    .line 49
    const/16 p1, 0x20

    .line 50
    .line 51
    if-eq p0, p1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    add-int/lit8 v0, p2, 0x2

    .line 55
    .line 56
    :cond_1
    :goto_0
    new-instance p0, Lct0;

    .line 57
    .line 58
    invoke-direct {p0}, Lct0;-><init>()V

    .line 59
    .line 60
    .line 61
    new-array p1, v1, [Lg3;

    .line 62
    .line 63
    const/4 p2, 0x0

    .line 64
    aput-object p0, p1, p2

    .line 65
    .line 66
    new-instance p0, Lgt0;

    .line 67
    .line 68
    invoke-direct {p0, p1}, Lgt0;-><init>([Lg3;)V

    .line 69
    .line 70
    .line 71
    iput v0, p0, Lgt0;->c:I

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_2
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method
