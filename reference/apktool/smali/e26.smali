.class public final Le26;
.super Lxo4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
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
    iput-object p1, p0, Le26;->i:Landroid/graphics/PointF;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Lwo4;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p2}, Le26;->l(Lwo4;FF)Landroid/graphics/PointF;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge synthetic h(Lwo4;FFF)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Le26;->l(Lwo4;FF)Landroid/graphics/PointF;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final l(Lwo4;FF)Landroid/graphics/PointF;
    .locals 3

    .line 1
    iget-object v0, p1, Lwo4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p1, Lwo4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast v0, Landroid/graphics/PointF;

    .line 10
    .line 11
    check-cast v1, Landroid/graphics/PointF;

    .line 12
    .line 13
    iget-object v2, p0, Lyl0;->e:Lcd;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lwo4;->h:Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lyl0;->e()F

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0, v1}, Lcd;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/graphics/PointF;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    iget p1, v0, Landroid/graphics/PointF;->x:F

    .line 35
    .line 36
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 37
    .line 38
    invoke-static {v2, p1, p2, p1}, Lxs1;->e(FFFF)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget p2, v0, Landroid/graphics/PointF;->y:F

    .line 43
    .line 44
    iget v0, v1, Landroid/graphics/PointF;->y:F

    .line 45
    .line 46
    invoke-static {v0, p2, p3, p2}, Lxs1;->e(FFFF)F

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iget-object p0, p0, Le26;->i:Landroid/graphics/PointF;

    .line 51
    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_1
    const-string p0, "Missing values for keyframe."

    .line 57
    .line 58
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    return-object p0
.end method
