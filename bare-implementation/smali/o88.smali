.class public final Lo88;
.super Lnc8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lr88;

.field public final f:Landroid/view/Window$Callback;

.field public final g:Ltr9;

.field public h:Z

.field public i:Z

.field public j:Z

.field public final k:Ljava/util/ArrayList;

.field public final l:Lib0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Lxn;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo88;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lib0;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lib0;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lo88;->l:Lib0;

    .line 19
    .line 20
    new-instance v0, Lvk9;

    .line 21
    .line 22
    const/16 v1, 0x12

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lvk9;-><init>(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v1, Lr88;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, p1, v2}, Lr88;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lo88;->e:Lr88;

    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iput-object p3, p0, Lo88;->f:Landroid/view/Window$Callback;

    .line 42
    .line 43
    iput-object p3, v1, Lr88;->k:Landroid/view/Window$Callback;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Lm88;)V

    .line 46
    .line 47
    .line 48
    iget-boolean p3, v1, Lr88;->g:Z

    .line 49
    .line 50
    if-nez p3, :cond_0

    .line 51
    .line 52
    iput-object p2, v1, Lr88;->h:Ljava/lang/CharSequence;

    .line 53
    .line 54
    iget p3, v1, Lr88;->b:I

    .line 55
    .line 56
    and-int/lit8 p3, p3, 0x8

    .line 57
    .line 58
    if-eqz p3, :cond_0

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-boolean p3, v1, Lr88;->g:Z

    .line 64
    .line 65
    if-eqz p3, :cond_0

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1, p2}, Ldl8;->o(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    new-instance p1, Ltr9;

    .line 75
    .line 76
    const/16 p2, 0x13

    .line 77
    .line 78
    invoke-direct {p1, p0, p2}, Ltr9;-><init>(Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lo88;->g:Ltr9;

    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final B()I
    .locals 0

    .line 1
    iget-object p0, p0, Lo88;->e:Lr88;

    .line 2
    .line 3
    iget p0, p0, Lr88;->b:I

    .line 4
    .line 5
    return p0
.end method

.method public final C()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lo88;->e:Lr88;

    .line 2
    .line 3
    iget-object p0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final F()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo88;->e:Lr88;

    .line 2
    .line 3
    iget-object v1, v0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    iget-object p0, p0, Lo88;->l:Lib0;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 11
    .line 12
    sget-object v1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method public final N()V
    .locals 0

    .line 1
    return-void
.end method

.method public final O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo88;->e:Lr88;

    .line 2
    .line 3
    iget-object v0, v0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    iget-object p0, p0, Lo88;->l:Lib0;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final Q(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo88;->x0()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v0

    .line 25
    :goto_0
    invoke-interface {p0, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    return v0
.end method

.method public final S(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lo88;->U()Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return v0
.end method

.method public final U()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lo88;->e:Lr88;

    .line 2
    .line 3
    iget-object p0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->u()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final Y(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final Z(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1, p1}, Lo88;->y0(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final a0()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, v0}, Lo88;->y0(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final b0(Z)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move p1, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo88;->y0(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c0(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d0(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lo88;->e:Lr88;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr88;->b(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e0(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lo88;->e:Lr88;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lr88;->g:Z

    .line 19
    .line 20
    iget-object v0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 21
    .line 22
    iput-object p1, p0, Lr88;->h:Ljava/lang/CharSequence;

    .line 23
    .line 24
    iget v1, p0, Lr88;->b:I

    .line 25
    .line 26
    and-int/lit8 v1, v1, 0x8

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p0, p0, Lr88;->g:Z

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0, p1}, Ldl8;->o(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final f0(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lo88;->e:Lr88;

    .line 3
    .line 4
    iput-boolean v0, p0, Lr88;->g:Z

    .line 5
    .line 6
    iget-object v0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 7
    .line 8
    iput-object p1, p0, Lr88;->h:Ljava/lang/CharSequence;

    .line 9
    .line 10
    iget v1, p0, Lr88;->b:I

    .line 11
    .line 12
    and-int/lit8 v1, v1, 0x8

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-boolean p0, p0, Lr88;->g:Z

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0, p1}, Ldl8;->o(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final g0(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lo88;->e:Lr88;

    .line 2
    .line 3
    iget-boolean v0, p0, Lr88;->g:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 8
    .line 9
    iput-object p1, p0, Lr88;->h:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iget v1, p0, Lr88;->b:I

    .line 12
    .line 13
    and-int/lit8 v1, v1, 0x8

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p0, p0, Lr88;->g:Z

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0, p1}, Ldl8;->o(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lo88;->e:Lr88;

    .line 2
    .line 3
    iget-object p0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->L:Lo8;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lo8;->b()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lo88;->e:Lr88;

    .line 2
    .line 3
    iget-object p0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->h0:Lk88;

    .line 6
    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lk88;->b:Lic5;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lic5;->collapseActionView()Z

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_2
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final v(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo88;->j:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lo88;->j:Z

    .line 7
    .line 8
    iget-object p0, p0, Lo88;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-gtz p1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Le6;->d()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final x0()Landroid/view/Menu;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lo88;->i:Z

    .line 2
    .line 3
    iget-object v1, p0, Lo88;->e:Lr88;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Lrc6;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lrc6;-><init>(Lo88;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lnh;

    .line 13
    .line 14
    const/16 v3, 0x11

    .line 15
    .line 16
    invoke-direct {v2, p0, v3}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v1, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 20
    .line 21
    iput-object v0, v3, Landroidx/appcompat/widget/Toolbar;->i0:Lrc6;

    .line 22
    .line 23
    iput-object v2, v3, Landroidx/appcompat/widget/Toolbar;->j0:Lnh;

    .line 24
    .line 25
    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iput-object v0, v3, Landroidx/appcompat/widget/ActionMenuView;->M:Lrc6;

    .line 30
    .line 31
    iput-object v2, v3, Landroidx/appcompat/widget/ActionMenuView;->N:Ldc5;

    .line 32
    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lo88;->i:Z

    .line 35
    .line 36
    :cond_1
    iget-object p0, v1, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final y0(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lo88;->e:Lr88;

    .line 2
    .line 3
    iget v0, p0, Lr88;->b:I

    .line 4
    .line 5
    and-int/2addr p1, p2

    .line 6
    not-int p2, p2

    .line 7
    and-int/2addr p2, v0

    .line 8
    or-int/2addr p1, p2

    .line 9
    invoke-virtual {p0, p1}, Lr88;->a(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
