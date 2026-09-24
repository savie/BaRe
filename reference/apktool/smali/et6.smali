.class public final Let6;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final f(Lzu6;)V
    .locals 4

    .line 1
    const/4 p0, 0x2

    .line 2
    invoke-virtual {p1, p0}, Low0;->t(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Low0;->t(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Low0;->s()I

    .line 9
    .line 10
    .line 11
    const/16 p0, 0x8

    .line 12
    .line 13
    new-array v0, p0, [B

    .line 14
    .line 15
    invoke-virtual {p1, v0, p0}, Low0;->o([BI)V

    .line 16
    .line 17
    .line 18
    new-array v0, p0, [B

    .line 19
    .line 20
    invoke-virtual {p1, v0, p0}, Low0;->o([BI)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Low0;->s()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-virtual {p1}, Low0;->s()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1}, Low0;->s()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1}, Low0;->s()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x4

    .line 40
    invoke-virtual {p1, v3}, Low0;->t(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v3}, Low0;->t(I)V

    .line 44
    .line 45
    .line 46
    if-lez v0, :cond_0

    .line 47
    .line 48
    iput p0, p1, Low0;->c:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Low0;->p(I)[B

    .line 51
    .line 52
    .line 53
    :cond_0
    if-lez v2, :cond_1

    .line 54
    .line 55
    iput v1, p1, Low0;->c:I

    .line 56
    .line 57
    new-array p0, v2, [B

    .line 58
    .line 59
    invoke-virtual {p1, p0, v2}, Low0;->o([BI)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method
