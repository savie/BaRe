.class public final Loo2;
.super Lso2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(IIII)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Loo2;->b(IIII)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    cmpl-float p0, p0, v0

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_0
    sget-object p0, Lso2;->a:Lqo2;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lqo2;->a(IIII)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final b(IIII)F
    .locals 0

    .line 1
    sget-object p0, Lso2;->a:Lqo2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lqo2;->b(IIII)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
