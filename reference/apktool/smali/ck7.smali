.class public final Lck7;
.super Lyl0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Landroid/graphics/PointF;

.field public final j:Landroid/graphics/PointF;

.field public final k:Lxh3;

.field public final l:Lxh3;

.field public m:Lcd;

.field public n:Lcd;


# direct methods
.method public constructor <init>(Lxh3;Lxh3;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lyl0;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/PointF;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lck7;->i:Landroid/graphics/PointF;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/PointF;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lck7;->j:Landroid/graphics/PointF;

    .line 19
    .line 20
    iput-object p1, p0, Lck7;->k:Lxh3;

    .line 21
    .line 22
    iput-object p2, p0, Lck7;->l:Lxh3;

    .line 23
    .line 24
    iget p1, p0, Lyl0;->d:F

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lck7;->j(F)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lck7;->l(F)Landroid/graphics/PointF;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final bridge synthetic g(Lwo4;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lck7;->l(F)Landroid/graphics/PointF;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final j(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lck7;->k:Lxh3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lyl0;->j(F)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lck7;->l:Lxh3;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lyl0;->j(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lyl0;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v1}, Lyl0;->f()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Float;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lck7;->i:Landroid/graphics/PointF;

    .line 32
    .line 33
    invoke-virtual {v1, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    :goto_0
    iget-object v0, p0, Lyl0;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ge p1, v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lul0;

    .line 50
    .line 51
    invoke-interface {v0}, Lul0;->b()V

    .line 52
    .line 53
    .line 54
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public final l(F)Landroid/graphics/PointF;
    .locals 3

    .line 1
    iget-object p1, p0, Lck7;->m:Lcd;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lck7;->k:Lxh3;

    .line 7
    .line 8
    invoke-virtual {p1}, Lyl0;->b()Lwo4;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lyl0;->d()F

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lck7;->m:Lcd;

    .line 18
    .line 19
    iget-object v2, v1, Lwo4;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/lang/Float;

    .line 22
    .line 23
    iget-object v1, v1, Lwo4;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/lang/Float;

    .line 26
    .line 27
    invoke-virtual {p1, v2, v1}, Lcd;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Float;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object p1, v0

    .line 35
    :goto_0
    iget-object v1, p0, Lck7;->n:Lcd;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lck7;->l:Lxh3;

    .line 40
    .line 41
    invoke-virtual {v1}, Lyl0;->b()Lwo4;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lyl0;->d()F

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lck7;->n:Lcd;

    .line 51
    .line 52
    iget-object v1, v2, Lwo4;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Ljava/lang/Float;

    .line 55
    .line 56
    iget-object v2, v2, Lwo4;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Ljava/lang/Float;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lcd;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Float;

    .line 65
    .line 66
    :cond_1
    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lck7;->i:Landroid/graphics/PointF;

    .line 68
    .line 69
    iget-object p0, p0, Lck7;->j:Landroid/graphics/PointF;

    .line 70
    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    iget p1, v2, Landroid/graphics/PointF;->x:F

    .line 74
    .line 75
    invoke-virtual {p0, p1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {p0, p1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 84
    .line 85
    .line 86
    :goto_1
    if-nez v0, :cond_3

    .line 87
    .line 88
    iget p1, p0, Landroid/graphics/PointF;->x:F

    .line 89
    .line 90
    iget v0, v2, Landroid/graphics/PointF;->y:F

    .line 91
    .line 92
    invoke-virtual {p0, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_3
    iget p1, p0, Landroid/graphics/PointF;->x:F

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {p0, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 103
    .line 104
    .line 105
    return-object p0
.end method
