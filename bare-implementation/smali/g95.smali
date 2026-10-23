.class public abstract Lg95;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final B0:[I


# instance fields
.field public A0:[I

.field public o0:Landroid/graphics/drawable/Drawable;

.field public p0:Landroid/graphics/drawable/Drawable;

.field public q0:I

.field public r0:Landroid/graphics/drawable/Drawable;

.field public s0:Landroid/graphics/drawable/Drawable;

.field public t0:Landroid/content/res/ColorStateList;

.field public u0:Landroid/content/res/ColorStateList;

.field public v0:Landroid/graphics/PorterDuff$Mode;

.field public w0:Landroid/content/res/ColorStateList;

.field public x0:Landroid/content/res/ColorStateList;

.field public y0:Landroid/graphics/PorterDuff$Mode;

.field public z0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x7f040564

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lg95;->B0:[I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    const v0, 0x7f140553

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p3, v0}, Lzm5;->J(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lg95;->q0:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lg95;->o0:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintList()Landroid/content/res/ColorStateList;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lg95;->t0:Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-super {p0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 32
    .line 33
    .line 34
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, p0, Lg95;->r0:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintList()Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, p0, Lg95;->w0:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    invoke-super {p0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    new-array v5, v6, [I

    .line 51
    .line 52
    sget-object v2, Ltd6;->F:[I

    .line 53
    .line 54
    const v4, 0x7f140553

    .line 55
    .line 56
    .line 57
    move-object v1, p2

    .line 58
    move v3, p3

    .line 59
    invoke-static/range {v0 .. v5}, Ljd4;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lu94;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2, v6}, Lu94;->b(I)Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    iput-object p3, p0, Lg95;->p0:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    iget-object p3, p2, Lu94;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p3, Landroid/content/res/TypedArray;

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    invoke-virtual {p3, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lg95;->q0:I

    .line 79
    .line 80
    const/4 v0, 0x2

    .line 81
    invoke-virtual {p2, v0}, Lu94;->a(I)Landroid/content/res/ColorStateList;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lg95;->u0:Landroid/content/res/ColorStateList;

    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    invoke-virtual {p3, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 93
    .line 94
    invoke-static {v0, v1}, Lyc9;->L(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lg95;->v0:Landroid/graphics/PorterDuff$Mode;

    .line 99
    .line 100
    const/4 v0, 0x4

    .line 101
    invoke-virtual {p2, v0}, Lu94;->b(I)Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lg95;->s0:Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    const/4 v0, 0x5

    .line 108
    invoke-virtual {p2, v0}, Lu94;->a(I)Landroid/content/res/ColorStateList;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lg95;->x0:Landroid/content/res/ColorStateList;

    .line 113
    .line 114
    const/4 v0, 0x6

    .line 115
    invoke-virtual {p3, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-static {p1, v1}, Lyc9;->L(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lg95;->y0:Landroid/graphics/PorterDuff$Mode;

    .line 124
    .line 125
    invoke-virtual {p2}, Lu94;->f()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/SwitchCompat;->setEnforceSwitchWidth(Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lg95;->e()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lg95;->f()V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public static g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p4, p2, p1}, Lxl1;->b(FII)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg95;->o0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v1, p0, Lg95;->t0:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2}, Ldu;->b(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lg95;->o0:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    iget-object v0, p0, Lg95;->p0:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iget-object v1, p0, Lg95;->u0:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    iget-object v2, p0, Lg95;->v0:Landroid/graphics/PorterDuff$Mode;

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Ldu;->b(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lg95;->p0:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-virtual {p0}, Lg95;->h()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lg95;->o0:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    iget-object v1, p0, Lg95;->p0:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    iget v2, p0, Lg95;->q0:I

    .line 35
    .line 36
    invoke-static {v0, v1, v2, v2}, Ldu;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-super {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg95;->r0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v1, p0, Lg95;->w0:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2}, Ldu;->b(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lg95;->r0:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    iget-object v0, p0, Lg95;->s0:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iget-object v1, p0, Lg95;->x0:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    iget-object v2, p0, Lg95;->y0:Landroid/graphics/PorterDuff$Mode;

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Ldu;->b(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lg95;->s0:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-virtual {p0}, Lg95;->h()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lg95;->r0:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lg95;->s0:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 39
    .line 40
    iget-object v1, p0, Lg95;->r0:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    iget-object v2, p0, Lg95;->s0:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    filled-new-array {v1, v2}, [Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lg95;->s0:Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    :goto_0
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchMinWidth(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-super {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg95;->o0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getThumbIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg95;->p0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getThumbIconSize()I
    .locals 0

    .line 1
    iget p0, p0, Lg95;->q0:I

    .line 2
    .line 3
    return p0
.end method

.method public getThumbIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lg95;->u0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getThumbIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lg95;->v0:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    return-object p0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lg95;->t0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTrackDecorationDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg95;->s0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTrackDecorationTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lg95;->x0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTrackDecorationTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lg95;->y0:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg95;->r0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lg95;->w0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg95;->t0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lg95;->u0:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lg95;->w0:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lg95;->x0:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbPosition()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lg95;->t0:Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lg95;->o0:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    iget-object v3, p0, Lg95;->z0:[I

    .line 29
    .line 30
    iget-object v4, p0, Lg95;->A0:[I

    .line 31
    .line 32
    invoke-static {v2, v1, v3, v4, v0}, Lg95;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lg95;->u0:Landroid/content/res/ColorStateList;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lg95;->p0:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    iget-object v3, p0, Lg95;->z0:[I

    .line 42
    .line 43
    iget-object v4, p0, Lg95;->A0:[I

    .line 44
    .line 45
    invoke-static {v2, v1, v3, v4, v0}, Lg95;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Lg95;->w0:Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-object v2, p0, Lg95;->r0:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    iget-object v3, p0, Lg95;->z0:[I

    .line 55
    .line 56
    iget-object v4, p0, Lg95;->A0:[I

    .line 57
    .line 58
    invoke-static {v2, v1, v3, v4, v0}, Lg95;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object v1, p0, Lg95;->x0:Landroid/content/res/ColorStateList;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    iget-object v2, p0, Lg95;->s0:Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    iget-object v3, p0, Lg95;->z0:[I

    .line 68
    .line 69
    iget-object p0, p0, Lg95;->A0:[I

    .line 70
    .line 71
    invoke-static {v2, v1, v3, p0, v0}, Lg95;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_0
    return-void
.end method

.method public final invalidate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg95;->h()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 6

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onCreateDrawableState(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lg95;->p0:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lg95;->B0:[I

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 14
    .line 15
    .line 16
    :cond_0
    array-length v0, p1

    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    array-length v1, p1

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    if-ge v2, v1, :cond_2

    .line 23
    .line 24
    aget v4, p1, v2

    .line 25
    .line 26
    const v5, 0x10100a0

    .line 27
    .line 28
    .line 29
    if-eq v4, v5, :cond_1

    .line 30
    .line 31
    add-int/lit8 v5, v3, 0x1

    .line 32
    .line 33
    aput v4, v0, v3

    .line 34
    .line 35
    move v3, v5

    .line 36
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iput-object v0, p0, Lg95;->z0:[I

    .line 40
    .line 41
    invoke-static {p1}, Ldu;->c([I)[I

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lg95;->A0:[I

    .line 46
    .line 47
    return-object p1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/SwitchCompat;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lg95;->r0:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/android/material/focus/FocusRingDrawable;->c(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/focus/FocusRingDrawable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/material/focus/FocusRingDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lg95;->r0:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p1, p1, Lcom/google/android/material/focus/FocusRingDrawable;->G:Lfj3;

    .line 28
    .line 29
    iput-object p0, p1, Lfj3;->w:Landroid/graphics/Rect;

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg95;->o0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg95;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setThumbIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg95;->p0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg95;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setThumbIconResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Liz1;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lg95;->setThumbIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setThumbIconSize(I)V
    .locals 1

    .line 1
    iget v0, p0, Lg95;->q0:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lg95;->q0:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lg95;->e()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setThumbIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg95;->u0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg95;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setThumbIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg95;->v0:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg95;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg95;->t0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg95;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lg95;->e()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setTrackDecorationDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg95;->s0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg95;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTrackDecorationResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Liz1;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lg95;->setTrackDecorationDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setTrackDecorationTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg95;->x0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg95;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTrackDecorationTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg95;->y0:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg95;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg95;->r0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg95;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg95;->w0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg95;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lg95;->f()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
