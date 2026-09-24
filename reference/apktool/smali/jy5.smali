.class public final Ljy5;
.super Lxo4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Landroid/graphics/PointF;

.field public final j:[F

.field public final k:Landroid/graphics/PathMeasure;

.field public l:Liy5;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyl0;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/PointF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ljy5;->i:Landroid/graphics/PointF;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    new-array p1, p1, [F

    .line 13
    .line 14
    iput-object p1, p0, Ljy5;->j:[F

    .line 15
    .line 16
    new-instance p1, Landroid/graphics/PathMeasure;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Ljy5;->k:Landroid/graphics/PathMeasure;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final g(Lwo4;F)Ljava/lang/Object;
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Liy5;

    .line 3
    .line 4
    iget-object v1, v0, Liy5;->q:Landroid/graphics/Path;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p1, Lwo4;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/graphics/PointF;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object p1, p0, Lyl0;->e:Lcd;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v2, v0, Lwo4;->h:Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lwo4;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Landroid/graphics/PointF;

    .line 25
    .line 26
    iget-object v3, v0, Lwo4;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Landroid/graphics/PointF;

    .line 29
    .line 30
    invoke-virtual {p0}, Lyl0;->e()F

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2, v3}, Lcd;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/graphics/PointF;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_1
    iget-object p1, p0, Ljy5;->l:Liy5;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iget-object v3, p0, Ljy5;->k:Landroid/graphics/PathMeasure;

    .line 46
    .line 47
    if-eq p1, v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v3, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Ljy5;->l:Liy5;

    .line 53
    .line 54
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    mul-float/2addr p1, p2

    .line 59
    const/4 p2, 0x0

    .line 60
    iget-object v0, p0, Ljy5;->j:[F

    .line 61
    .line 62
    invoke-virtual {v3, p1, v0, p2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 63
    .line 64
    .line 65
    aget p1, v0, v2

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    aget p2, v0, p2

    .line 69
    .line 70
    iget-object p0, p0, Ljy5;->i:Landroid/graphics/PointF;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 73
    .line 74
    .line 75
    return-object p0
.end method
