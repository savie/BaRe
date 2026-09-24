.class public abstract Lyl0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Lvl0;

.field public d:F

.field public e:Lcd;

.field public f:Ljava/lang/Object;

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lyl0;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lyl0;->b:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lyl0;->d:F

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lyl0;->f:Ljava/lang/Object;

    .line 20
    .line 21
    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    .line 23
    iput v0, p0, Lyl0;->g:F

    .line 24
    .line 25
    iput v0, p0, Lyl0;->h:F

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    new-instance p1, Lma2;

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    invoke-direct {p1, v0}, Lma2;-><init>(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ne v0, v1, :cond_1

    .line 45
    .line 46
    new-instance v0, Lxl0;

    .line 47
    .line 48
    invoke-direct {v0, p1}, Lxl0;-><init>(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    move-object p1, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v0, Lwl0;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Lwl0;-><init>(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    iput-object p1, p0, Lyl0;->c:Lvl0;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final a(Lul0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lyl0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()Lwo4;
    .locals 0

    .line 1
    iget-object p0, p0, Lyl0;->c:Lvl0;

    .line 2
    .line 3
    invoke-interface {p0}, Lvl0;->g()Lwo4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Lzv1;->d()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public c()F
    .locals 2

    .line 1
    iget v0, p0, Lyl0;->h:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lyl0;->c:Lvl0;

    .line 10
    .line 11
    invoke-interface {v0}, Lvl0;->k()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lyl0;->h:F

    .line 16
    .line 17
    :cond_0
    iget p0, p0, Lyl0;->h:F

    .line 18
    .line 19
    return p0
.end method

.method public final d()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lyl0;->b()Lwo4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lwo4;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object v0, v0, Lwo4;->d:Landroid/view/animation/Interpolator;

    .line 14
    .line 15
    invoke-virtual {p0}, Lyl0;->e()F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-interface {v0, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final e()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lyl0;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lyl0;->b()Lwo4;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lwo4;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    iget p0, p0, Lyl0;->d:F

    .line 19
    .line 20
    invoke-virtual {v0}, Lwo4;->b()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sub-float/2addr p0, v1

    .line 25
    invoke-virtual {v0}, Lwo4;->a()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0}, Lwo4;->b()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sub-float/2addr v1, v0

    .line 34
    div-float/2addr p0, v1

    .line 35
    return p0
.end method

.method public f()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lyl0;->e()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lyl0;->e:Lcd;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lyl0;->c:Lvl0;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lvl0;->c(F)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lyl0;->f:Ljava/lang/Object;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lyl0;->b()Lwo4;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, v1, Lwo4;->e:Landroid/view/animation/Interpolator;

    .line 25
    .line 26
    iget-object v3, v1, Lwo4;->f:Landroid/view/animation/Interpolator;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {p0, v1, v0, v2, v3}, Lyl0;->h(Lwo4;FFF)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lyl0;->d()F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0, v1, v0}, Lyl0;->g(Lwo4;F)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    iput-object v0, p0, Lyl0;->f:Ljava/lang/Object;

    .line 54
    .line 55
    return-object v0
.end method

.method public abstract g(Lwo4;F)Ljava/lang/Object;
.end method

.method public h(Lwo4;FFF)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "This animation does not support split dimensions!"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public i()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lyl0;->a:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lul0;

    .line 15
    .line 16
    invoke-interface {v1}, Lul0;->b()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public j(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lyl0;->c:Lvl0;

    .line 2
    .line 3
    invoke-interface {v0}, Lvl0;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget v1, p0, Lyl0;->g:F

    .line 11
    .line 12
    const/high16 v2, -0x40800000    # -1.0f

    .line 13
    .line 14
    cmpl-float v1, v1, v2

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lvl0;->l()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lyl0;->g:F

    .line 23
    .line 24
    :cond_1
    iget v1, p0, Lyl0;->g:F

    .line 25
    .line 26
    cmpg-float v3, p1, v1

    .line 27
    .line 28
    if-gez v3, :cond_3

    .line 29
    .line 30
    cmpl-float p1, v1, v2

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Lvl0;->l()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lyl0;->g:F

    .line 39
    .line 40
    :cond_2
    iget p1, p0, Lyl0;->g:F

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p0}, Lyl0;->c()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    cmpl-float v1, p1, v1

    .line 48
    .line 49
    if-lez v1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0}, Lyl0;->c()F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    :cond_4
    :goto_0
    iget v1, p0, Lyl0;->d:F

    .line 56
    .line 57
    cmpl-float v1, p1, v1

    .line 58
    .line 59
    if-nez v1, :cond_5

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    iput p1, p0, Lyl0;->d:F

    .line 63
    .line 64
    invoke-interface {v0, p1}, Lvl0;->h(F)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_6

    .line 69
    .line 70
    invoke-virtual {p0}, Lyl0;->i()V

    .line 71
    .line 72
    .line 73
    :cond_6
    :goto_1
    return-void
.end method

.method public final k(Lcd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyl0;->e:Lcd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lyl0;->e:Lcd;

    .line 9
    .line 10
    return-void
.end method
