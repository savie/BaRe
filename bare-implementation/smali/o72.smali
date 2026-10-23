.class public final Lo72;
.super Lzv1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final g(Lmc7;FF)V
    .locals 2

    .line 1
    mul-float/2addr p3, p2

    .line 2
    const/high16 p0, 0x43340000    # 180.0f

    .line 3
    .line 4
    const/high16 p2, 0x42b40000    # 90.0f

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0, p3, p0, p2}, Lmc7;->d(FFFF)V

    .line 8
    .line 9
    .line 10
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    float-to-double p2, p3

    .line 24
    mul-double/2addr v0, p2

    .line 25
    double-to-float p0, v0

    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    mul-double/2addr v0, p2

    .line 37
    double-to-float p2, v0

    .line 38
    invoke-virtual {p1, p0, p2}, Lmc7;->c(FF)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
