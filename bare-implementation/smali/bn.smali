.class public final Lbn;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljo;

.field public c:I

.field public d:Ln48;

.field public e:Ln48;

.field public f:Ln48;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lbn;->c:I

    .line 6
    .line 7
    iput-object p1, p0, Lbn;->a:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {}, Ljo;->a()Ljo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lbn;->b:Ljo;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbn;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    iget-object v2, p0, Lbn;->d:Ln48;

    .line 10
    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    iget-object v2, p0, Lbn;->f:Ln48;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Ln48;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lbn;->f:Ln48;

    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Lbn;->f:Ln48;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iput-object v3, v2, Ln48;->a:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    iput-boolean v4, v2, Ln48;->d:Z

    .line 31
    .line 32
    iput-object v3, v2, Ln48;->b:Landroid/graphics/PorterDuff$Mode;

    .line 33
    .line 34
    iput-boolean v4, v2, Ln48;->c:Z

    .line 35
    .line 36
    sget-object v3, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iput-boolean v4, v2, Ln48;->d:Z

    .line 46
    .line 47
    iput-object v3, v2, Ln48;->a:Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iput-boolean v4, v2, Ln48;->c:Z

    .line 56
    .line 57
    iput-object v3, v2, Ln48;->b:Landroid/graphics/PorterDuff$Mode;

    .line 58
    .line 59
    :cond_2
    iget-boolean v3, v2, Ln48;->d:Z

    .line 60
    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    iget-boolean v3, v2, Ln48;->c:Z

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v1, v2, p0}, Ljo;->e(Landroid/graphics/drawable/Drawable;Ln48;[I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_4
    iget-object v2, p0, Lbn;->e:Ln48;

    .line 76
    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {v1, v2, p0}, Ljo;->e(Landroid/graphics/drawable/Drawable;Ln48;[I)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    iget-object p0, p0, Lbn;->d:Ln48;

    .line 88
    .line 89
    if-eqz p0, :cond_6

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v1, p0, v0}, Ljo;->e(Landroid/graphics/drawable/Drawable;Ln48;[I)V

    .line 96
    .line 97
    .line 98
    :cond_6
    return-void
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lbn;->e:Ln48;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ln48;->a:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final c()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lbn;->e:Ln48;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ln48;->b:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lbn;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v4, Lge6;->z:[I

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    invoke-static {p2, v8, v1, p1, v4}, Lu94;->e(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lu94;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, v1, Lu94;->b:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v9, v2

    .line 17
    check-cast v9, Landroid/content/res/TypedArray;

    .line 18
    .line 19
    iget-object v2, p0, Lbn;->a:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v5, v1, Lu94;->b:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v6, v5

    .line 28
    check-cast v6, Landroid/content/res/TypedArray;

    .line 29
    .line 30
    move-object v5, p1

    .line 31
    move v7, p2

    .line 32
    invoke-static/range {v2 .. v7}, Ldl8;->m(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 p2, -0x1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v9, v8, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lbn;->c:I

    .line 47
    .line 48
    iget-object p1, p0, Lbn;->b:Ljo;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget v3, p0, Lbn;->c:I

    .line 55
    .line 56
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    iget-object v4, p1, Ljo;->a:Lyl6;

    .line 58
    .line 59
    invoke-virtual {v4, v2, v3}, Lyl6;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    .line 62
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    :try_start_2
    monitor-exit p1

    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Lbn;->g(Landroid/content/res/ColorStateList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    move-object p0, v0

    .line 72
    goto :goto_1

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    move-object p0, v0

    .line 75
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    :try_start_4
    throw p0

    .line 77
    :cond_0
    :goto_0
    const/4 p0, 0x1

    .line 78
    invoke-virtual {v9, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    invoke-virtual {v1, p0}, Lu94;->a(I)Landroid/content/res/ColorStateList;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    const/4 p0, 0x2

    .line 92
    invoke-virtual {v9, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    invoke-virtual {v9, p0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    const/4 p1, 0x0

    .line 103
    invoke-static {p0, p1}, Lfp2;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-virtual {v1}, Lu94;->f()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :goto_1
    invoke-virtual {v1}, Lu94;->f()V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lbn;->c:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lbn;->g(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lbn;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    iput p1, p0, Lbn;->c:I

    .line 2
    .line 3
    iget-object v0, p0, Lbn;->b:Ljo;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lbn;->a:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, v0, Ljo;->a:Lyl6;

    .line 15
    .line 16
    invoke-virtual {v2, v1, p1}, Lyl6;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Lbn;->g(Landroid/content/res/ColorStateList;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lbn;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lbn;->d:Ln48;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ln48;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lbn;->d:Ln48;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lbn;->d:Ln48;

    .line 15
    .line 16
    iput-object p1, v0, Ln48;->a:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, v0, Ln48;->d:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lbn;->d:Ln48;

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Lbn;->a()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbn;->e:Ln48;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ln48;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lbn;->e:Ln48;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lbn;->e:Ln48;

    .line 13
    .line 14
    iput-object p1, v0, Ln48;->a:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Ln48;->d:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lbn;->a()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final i(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbn;->e:Ln48;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ln48;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lbn;->e:Ln48;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lbn;->e:Ln48;

    .line 13
    .line 14
    iput-object p1, v0, Ln48;->b:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Ln48;->c:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lbn;->a()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
