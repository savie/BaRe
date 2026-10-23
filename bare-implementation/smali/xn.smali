.class public final Lxn;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final a:Landroid/view/Window$Callback;

.field public b:Ltr9;

.field public c:Z

.field public d:Z

.field public e:Z

.field public final synthetic f:Lfo;


# direct methods
.method public constructor <init>(Lfo;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxn;->f:Lfo;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p2, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "Window callback may not be null"

    .line 12
    .line 13
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lxn;->c:Z

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lxn;->c:Z

    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v1, p0, Lxn;->c:Z

    .line 13
    .line 14
    throw p1
.end method

.method public final b(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lku8;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lxn;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p0, p0, Lxn;->f:Lfo;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lfo;->u(Landroid/view/KeyEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object p0, p0, Lxn;->f:Lfo;

    .line 15
    .line 16
    invoke-virtual {p0}, Lfo;->A()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lfo;->y:Lnc8;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, v0, p1}, Lnc8;->Q(ILandroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lfo;->d0:Leo;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p0, v0, v2, p1}, Lfo;->F(Leo;ILandroid/view/KeyEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lfo;->d0:Leo;

    .line 45
    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    iput-boolean v1, p0, Leo;->l:Z

    .line 49
    .line 50
    return v1

    .line 51
    :cond_1
    iget-object v0, p0, Lfo;->d0:Leo;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lfo;->z(I)Leo;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0, p1}, Lfo;->G(Leo;Landroid/view/KeyEvent;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {p0, v0, v3, p1}, Lfo;->F(Leo;ILandroid/view/KeyEvent;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    iput-boolean v2, v0, Leo;->k:Z

    .line 72
    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return v2

    .line 77
    :cond_3
    :goto_0
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxn;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p2, Lfc5;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lxn;->b:Ltr9;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/view/View;

    .line 8
    .line 9
    iget-object v0, v0, Ltr9;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lo88;

    .line 12
    .line 13
    iget-object v0, v0, Lo88;->e:Lr88;

    .line 14
    .line 15
    iget-object v0, v0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 30
    .line 31
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lxn;->b(ILandroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x6c

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lxn;->f:Lfo;

    .line 10
    .line 11
    invoke-virtual {p0}, Lfo;->A()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lfo;->y:Lnc8;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lnc8;->v(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxn;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lxn;->c(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/16 p2, 0x6c

    .line 15
    .line 16
    iget-object p0, p0, Lxn;->f:Lfo;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-ne p1, p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lfo;->A()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lfo;->y:Lnc8;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lnc8;->v(Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    if-nez p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lfo;->z(I)Leo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-boolean p2, p1, Leo;->m:Z

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Lfo;->s(Leo;Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {p0, p1}, Llu8;->a(Landroid/view/Window$Callback;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 5

    .line 1
    instance-of v0, p3, Lfc5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lfc5;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iput-boolean v2, v0, Lfc5;->Q:Z

    .line 20
    .line 21
    :cond_2
    iget-object v3, p0, Lxn;->b:Ltr9;

    .line 22
    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object v3, v3, Ltr9;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lo88;

    .line 30
    .line 31
    iget-boolean v4, v3, Lo88;->h:Z

    .line 32
    .line 33
    if-nez v4, :cond_3

    .line 34
    .line 35
    iget-object v4, v3, Lo88;->e:Lr88;

    .line 36
    .line 37
    iput-boolean v2, v4, Lr88;->l:Z

    .line 38
    .line 39
    iput-boolean v2, v3, Lo88;->h:Z

    .line 40
    .line 41
    :cond_3
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 42
    .line 43
    invoke-interface {p0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iput-boolean v1, v0, Lfc5;->Q:Z

    .line 50
    .line 51
    :cond_4
    return p0
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxn;->f:Lfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lfo;->z(I)Leo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Leo;->h:Lfc5;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p3}, Lxn;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lxn;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 0

    .line 8
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result p0

    return p0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lju8;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 445
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 7

    .line 1
    iget-object v0, p0, Lxn;->f:Lfo;

    .line 2
    .line 3
    iget-object v1, v0, Lfo;->r:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lxn;->a:Landroid/view/Window$Callback;

    .line 8
    .line 9
    invoke-static {p0, p1, p2}, Lju8;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lx91;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lx91;->c:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p1, p0, Lx91;->a:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lx91;->b:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance p1, Ldg7;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-direct {p1, p2}, Ldg7;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lx91;->d:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object p1, v0, Lfo;->L:Ls8;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Ls8;->a()V

    .line 43
    .line 44
    .line 45
    :cond_1
    new-instance p1, Lh80;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-direct {p1, v2, v0, p0}, Lh80;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lfo;->A()V

    .line 52
    .line 53
    .line 54
    iget-object v3, v0, Lfo;->y:Lnc8;

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {v3, p1}, Lnc8;->j0(Lh80;)Ls8;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iput-object v3, v0, Lfo;->L:Ls8;

    .line 63
    .line 64
    :cond_2
    iget-object v3, v0, Lfo;->L:Ls8;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    if-nez v3, :cond_10

    .line 68
    .line 69
    iget-object v3, v0, Lfo;->P:Llm8;

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    invoke-virtual {v3}, Llm8;->b()V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v3, v0, Lfo;->L:Ls8;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3}, Ls8;->a()V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object v3, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 84
    .line 85
    if-nez v3, :cond_9

    .line 86
    .line 87
    iget-boolean v3, v0, Lfo;->Z:Z

    .line 88
    .line 89
    if-eqz v3, :cond_6

    .line 90
    .line 91
    new-instance v3, Landroid/util/TypedValue;

    .line 92
    .line 93
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const v6, 0x7f04000b

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v6, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 104
    .line 105
    .line 106
    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    .line 107
    .line 108
    if-eqz v6, :cond_5

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 119
    .line 120
    .line 121
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    .line 122
    .line 123
    invoke-virtual {v6, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 124
    .line 125
    .line 126
    new-instance v5, Lhv1;

    .line 127
    .line 128
    invoke-direct {v5, v1, p2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Lhv1;->getTheme()Landroid/content/res/Resources$Theme;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 136
    .line 137
    .line 138
    move-object v1, v5

    .line 139
    :cond_5
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    .line 140
    .line 141
    invoke-direct {v5, v1}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    iput-object v5, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 145
    .line 146
    new-instance v5, Landroid/widget/PopupWindow;

    .line 147
    .line 148
    const v6, 0x7f04001a

    .line 149
    .line 150
    .line 151
    invoke-direct {v5, v1, v4, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    .line 153
    .line 154
    iput-object v5, v0, Lfo;->N:Landroid/widget/PopupWindow;

    .line 155
    .line 156
    const/4 v6, 0x2

    .line 157
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 158
    .line 159
    .line 160
    iget-object v5, v0, Lfo;->N:Landroid/widget/PopupWindow;

    .line 161
    .line 162
    iget-object v6, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 163
    .line 164
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    iget-object v5, v0, Lfo;->N:Landroid/widget/PopupWindow;

    .line 168
    .line 169
    const/4 v6, -0x1

    .line 170
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    const v6, 0x7f040005

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v6, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 181
    .line 182
    .line 183
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 184
    .line 185
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v3, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    iget-object v3, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 198
    .line 199
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 200
    .line 201
    .line 202
    iget-object v1, v0, Lfo;->N:Landroid/widget/PopupWindow;

    .line 203
    .line 204
    const/4 v3, -0x2

    .line 205
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 206
    .line 207
    .line 208
    new-instance v1, Lqn;

    .line 209
    .line 210
    invoke-direct {v1, v0, p2}, Lqn;-><init>(Ljava/lang/Object;I)V

    .line 211
    .line 212
    .line 213
    iput-object v1, v0, Lfo;->O:Lqn;

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_6
    iget-object v3, v0, Lfo;->R:Landroid/view/ViewGroup;

    .line 217
    .line 218
    const v5, 0x7f0a0072

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    check-cast v3, Landroidx/appcompat/widget/ViewStubCompat;

    .line 226
    .line 227
    if-eqz v3, :cond_9

    .line 228
    .line 229
    invoke-virtual {v0}, Lfo;->A()V

    .line 230
    .line 231
    .line 232
    iget-object v5, v0, Lfo;->y:Lnc8;

    .line 233
    .line 234
    if-eqz v5, :cond_7

    .line 235
    .line 236
    invoke-virtual {v5}, Lnc8;->C()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    goto :goto_0

    .line 241
    :cond_7
    move-object v5, v4

    .line 242
    :goto_0
    if-nez v5, :cond_8

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_8
    move-object v1, v5

    .line 246
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Landroidx/appcompat/widget/ActionBarContextView;

    .line 258
    .line 259
    iput-object v1, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 260
    .line 261
    :cond_9
    :goto_2
    iget-object v1, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 262
    .line 263
    if-eqz v1, :cond_f

    .line 264
    .line 265
    iget-object v1, v0, Lfo;->P:Llm8;

    .line 266
    .line 267
    if-eqz v1, :cond_a

    .line 268
    .line 269
    invoke-virtual {v1}, Llm8;->b()V

    .line 270
    .line 271
    .line 272
    :cond_a
    iget-object v1, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 273
    .line 274
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 275
    .line 276
    .line 277
    new-instance v1, Lal7;

    .line 278
    .line 279
    iget-object v3, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 280
    .line 281
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    iget-object v5, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 286
    .line 287
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 288
    .line 289
    .line 290
    iput-object v3, v1, Lal7;->c:Landroid/content/Context;

    .line 291
    .line 292
    iput-object v5, v1, Lal7;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 293
    .line 294
    iput-object p1, v1, Lal7;->e:Lh80;

    .line 295
    .line 296
    new-instance v3, Lfc5;

    .line 297
    .line 298
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-direct {v3, v5}, Lfc5;-><init>(Landroid/content/Context;)V

    .line 303
    .line 304
    .line 305
    iput v2, v3, Lfc5;->t:I

    .line 306
    .line 307
    iput-object v3, v1, Lal7;->n:Lfc5;

    .line 308
    .line 309
    iput-object v1, v3, Lfc5;->e:Ldc5;

    .line 310
    .line 311
    iget-object p1, p1, Lh80;->b:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast p1, Lx91;

    .line 314
    .line 315
    invoke-virtual {p1, v1, v3}, Lx91;->h(Ls8;Landroid/view/Menu;)Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_e

    .line 320
    .line 321
    invoke-virtual {v1}, Lal7;->h()V

    .line 322
    .line 323
    .line 324
    iget-object p1, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 325
    .line 326
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->c(Ls8;)V

    .line 327
    .line 328
    .line 329
    iput-object v1, v0, Lfo;->L:Ls8;

    .line 330
    .line 331
    iget-boolean p1, v0, Lfo;->Q:Z

    .line 332
    .line 333
    if-eqz p1, :cond_b

    .line 334
    .line 335
    iget-object p1, v0, Lfo;->R:Landroid/view/ViewGroup;

    .line 336
    .line 337
    if-eqz p1, :cond_b

    .line 338
    .line 339
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-eqz p1, :cond_b

    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_b
    move v2, p2

    .line 347
    :goto_3
    iget-object p1, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 348
    .line 349
    const/high16 v1, 0x3f800000    # 1.0f

    .line 350
    .line 351
    if-eqz v2, :cond_c

    .line 352
    .line 353
    const/4 p2, 0x0

    .line 354
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 355
    .line 356
    .line 357
    iget-object p1, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 358
    .line 359
    invoke-static {p1}, Ldl8;->a(Landroid/view/View;)Llm8;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p1, v1}, Llm8;->a(F)V

    .line 364
    .line 365
    .line 366
    iput-object p1, v0, Lfo;->P:Llm8;

    .line 367
    .line 368
    new-instance p2, Lrn;

    .line 369
    .line 370
    invoke-direct {p2, v0}, Lrn;-><init>(Lfo;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, p2}, Llm8;->d(Lom8;)V

    .line 374
    .line 375
    .line 376
    goto :goto_4

    .line 377
    :cond_c
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 378
    .line 379
    .line 380
    iget-object p1, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 381
    .line 382
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 383
    .line 384
    .line 385
    iget-object p1, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 386
    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    instance-of p1, p1, Landroid/view/View;

    .line 392
    .line 393
    if-eqz p1, :cond_d

    .line 394
    .line 395
    iget-object p1, v0, Lfo;->M:Landroidx/appcompat/widget/ActionBarContextView;

    .line 396
    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    check-cast p1, Landroid/view/View;

    .line 402
    .line 403
    sget-object p2, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 404
    .line 405
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 406
    .line 407
    .line 408
    :cond_d
    :goto_4
    iget-object p1, v0, Lfo;->N:Landroid/widget/PopupWindow;

    .line 409
    .line 410
    if-eqz p1, :cond_f

    .line 411
    .line 412
    iget-object p1, v0, Lfo;->t:Landroid/view/Window;

    .line 413
    .line 414
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    iget-object p2, v0, Lfo;->O:Lqn;

    .line 419
    .line 420
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 421
    .line 422
    .line 423
    goto :goto_5

    .line 424
    :cond_e
    iput-object v4, v0, Lfo;->L:Ls8;

    .line 425
    .line 426
    :cond_f
    :goto_5
    invoke-virtual {v0}, Lfo;->I()V

    .line 427
    .line 428
    .line 429
    iget-object p1, v0, Lfo;->L:Ls8;

    .line 430
    .line 431
    iput-object p1, v0, Lfo;->L:Ls8;

    .line 432
    .line 433
    :cond_10
    invoke-virtual {v0}, Lfo;->I()V

    .line 434
    .line 435
    .line 436
    iget-object p1, v0, Lfo;->L:Ls8;

    .line 437
    .line 438
    if-eqz p1, :cond_11

    .line 439
    .line 440
    invoke-virtual {p0, p1}, Lx91;->e(Ls8;)Lgs7;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    :cond_11
    return-object v4
.end method
