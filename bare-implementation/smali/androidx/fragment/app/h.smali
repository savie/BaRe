.class public Landroidx/fragment/app/h;
.super Landroidx/fragment/app/o;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public G:Z

.field public H:Z

.field public a:Landroid/os/Handler;

.field public final b:Lw7;

.field public final c:Lvk2;

.field public final d:Lwk2;

.field public e:I

.field public f:I

.field public k:Z

.field public n:Z

.field public p:I

.field public q:Z

.field public final r:Lxk2;

.field public t:Landroid/app/Dialog;

.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/o;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw7;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lw7;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/fragment/app/h;->b:Lw7;

    .line 11
    .line 12
    new-instance v0, Lvk2;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lvk2;-><init>(Landroidx/fragment/app/h;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/fragment/app/h;->c:Lvk2;

    .line 18
    .line 19
    new-instance v0, Lwk2;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lwk2;-><init>(Landroidx/fragment/app/h;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/fragment/app/h;->d:Lwk2;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Landroidx/fragment/app/h;->e:I

    .line 28
    .line 29
    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 30
    .line 31
    iput-boolean v1, p0, Landroidx/fragment/app/h;->k:Z

    .line 32
    .line 33
    iput-boolean v1, p0, Landroidx/fragment/app/h;->n:Z

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    iput v1, p0, Landroidx/fragment/app/h;->p:I

    .line 37
    .line 38
    new-instance v1, Lxk2;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lxk2;-><init>(Landroidx/fragment/app/h;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Landroidx/fragment/app/h;->r:Lxk2;

    .line 44
    .line 45
    iput-boolean v0, p0, Landroidx/fragment/app/h;->H:Z

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final createFragmentContainer()Lms8;
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/app/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/fragment/app/l;-><init>(Landroidx/fragment/app/o;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lyk2;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lyk2;-><init>(Landroidx/fragment/app/h;Landroidx/fragment/app/l;)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public final i(ZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/h;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/h;->y:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/h;->G:Z

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object v1, p0, Landroidx/fragment/app/h;->a:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-ne p2, v1, :cond_1

    .line 38
    .line 39
    iget-object p2, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Landroidx/fragment/app/h;->onDismiss(Landroid/content/DialogInterface;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/h;->a:Landroid/os/Handler;

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/fragment/app/h;->b:Lw7;

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/h;->x:Z

    .line 53
    .line 54
    iget p2, p0, Landroidx/fragment/app/h;->p:I

    .line 55
    .line 56
    if-ltz p2, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iget v0, p0, Landroidx/fragment/app/h;->p:I

    .line 63
    .line 64
    if-ltz v0, :cond_3

    .line 65
    .line 66
    new-instance v1, Ltr3;

    .line 67
    .line 68
    invoke-direct {v1, p2, v0}, Ltr3;-><init>(Landroidx/fragment/app/z;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v1, p1}, Landroidx/fragment/app/z;->x(Lsr3;Z)V

    .line 72
    .line 73
    .line 74
    const/4 p1, -0x1

    .line 75
    iput p1, p0, Landroidx/fragment/app/h;->p:I

    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    const-string p0, "Bad id: "

    .line 79
    .line 80
    invoke-static {v0, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    new-instance v1, Landroidx/fragment/app/a;

    .line 93
    .line 94
    invoke-direct {v1, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 95
    .line 96
    .line 97
    iput-boolean v0, v1, Landroidx/fragment/app/a;->p:Z

    .line 98
    .line 99
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/o;)V

    .line 100
    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v1, v0, v0}, Landroidx/fragment/app/a;->f(ZZ)I

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_5
    invoke-virtual {v1}, Landroidx/fragment/app/a;->e()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public j()Landroid/app/Dialog;
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "onCreateDialog called for DialogFragment "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance v0, Lko1;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget p0, p0, Landroidx/fragment/app/h;->f:I

    .line 34
    .line 35
    invoke-direct {v0, v1, p0}, Lko1;-><init>(Landroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public k(Landroidx/fragment/app/z;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/h;->y:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroidx/fragment/app/h;->G:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroidx/fragment/app/a;

    .line 11
    .line 12
    invoke-direct {v2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 13
    .line 14
    .line 15
    iput-boolean v1, v2, Landroidx/fragment/app/a;->p:Z

    .line 16
    .line 17
    invoke-virtual {v2, v0, p0, p2, v1}, Landroidx/fragment/app/a;->g(ILandroidx/fragment/app/o;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/fragment/app/a;->e()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/o;->mViewLifecycleOwnerLiveData:Lgj5;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/h;->r:Lxk2;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lzy4;->f(Les5;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Landroidx/fragment/app/h;->G:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Landroidx/fragment/app/h;->y:Z

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/fragment/app/h;->a:Landroid/os/Handler;

    .line 10
    .line 11
    iget v0, p0, Landroidx/fragment/app/o;->mContainerId:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/h;->n:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string v0, "android:style"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Landroidx/fragment/app/h;->e:I

    .line 31
    .line 32
    const-string v0, "android:theme"

    .line 33
    .line 34
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 39
    .line 40
    const-string v0, "android:cancelable"

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput-boolean v0, p0, Landroidx/fragment/app/h;->k:Z

    .line 47
    .line 48
    const-string v0, "android:showsDialog"

    .line 49
    .line 50
    iget-boolean v1, p0, Landroidx/fragment/app/h;->n:Z

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput-boolean v0, p0, Landroidx/fragment/app/h;->n:Z

    .line 57
    .line 58
    const-string v0, "android:backStackId"

    .line 59
    .line 60
    const/4 v1, -0x1

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Landroidx/fragment/app/h;->p:I

    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Landroidx/fragment/app/h;->x:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/fragment/app/h;->y:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/fragment/app/h;->onDismiss(Landroid/content/DialogInterface;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iput-object v1, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/h;->H:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onDetach()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/fragment/app/h;->G:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/fragment/app/h;->y:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroidx/fragment/app/h;->y:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o;->mViewLifecycleOwnerLiveData:Lgj5;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/fragment/app/h;->r:Lxk2;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lzy4;->j(Les5;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroidx/fragment/app/h;->x:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-static {p1}, Landroidx/fragment/app/z;->K(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "onDismiss called for DialogFragment "

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "FragmentManager"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/h;->i(ZZ)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/h;->n:Z

    .line 6
    .line 7
    const-string v1, "FragmentManager"

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    iget-boolean v3, p0, Landroidx/fragment/app/h;->q:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :cond_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_4

    .line 21
    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/h;->H:Z

    .line 22
    .line 23
    if-nez v0, :cond_6

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    :try_start_0
    iput-boolean v3, p0, Landroidx/fragment/app/h;->q:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/h;->j()Landroid/app/Dialog;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iput-object v4, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 34
    .line 35
    iget-boolean v5, p0, Landroidx/fragment/app/h;->n:Z

    .line 36
    .line 37
    if-eqz v5, :cond_5

    .line 38
    .line 39
    iget v5, p0, Landroidx/fragment/app/h;->e:I

    .line 40
    .line 41
    if-eq v5, v3, :cond_3

    .line 42
    .line 43
    if-eq v5, v2, :cond_3

    .line 44
    .line 45
    const/4 v6, 0x3

    .line 46
    if-eq v5, v6, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    const/16 v6, 0x18

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    iget-object v5, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 70
    .line 71
    check-cast v4, Landroid/app/Activity;

    .line 72
    .line 73
    invoke-virtual {v5, v4}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    :goto_1
    iget-object v4, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 80
    .line 81
    iget-boolean v5, p0, Landroidx/fragment/app/h;->k:Z

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 87
    .line 88
    iget-object v5, p0, Landroidx/fragment/app/h;->c:Lvk2;

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v4, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 94
    .line 95
    iget-object v5, p0, Landroidx/fragment/app/h;->d:Lwk2;

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 98
    .line 99
    .line 100
    iput-boolean v3, p0, Landroidx/fragment/app/h;->H:Z

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    const/4 v3, 0x0

    .line 104
    iput-object v3, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    :goto_2
    iput-boolean v0, p0, Landroidx/fragment/app/h;->q:Z

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :goto_3
    iput-boolean v0, p0, Landroidx/fragment/app/h;->q:Z

    .line 110
    .line 111
    throw p1

    .line 112
    :cond_6
    :goto_4
    invoke-static {v2}, Landroidx/fragment/app/z;->K(I)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, "get layout inflater for DialogFragment "

    .line 121
    .line 122
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, " from dialog context"

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_7
    iget-object p0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 141
    .line 142
    if-eqz p0, :cond_a

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0

    .line 153
    :cond_8
    :goto_5
    invoke-static {v2}, Landroidx/fragment/app/z;->K(I)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_a

    .line 158
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v2, "getting layout inflater for DialogFragment "

    .line 162
    .line 163
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-boolean p0, p0, Landroidx/fragment/app/h;->n:Z

    .line 174
    .line 175
    if-nez p0, :cond_9

    .line 176
    .line 177
    const-string p0, "mShowsDialog = false: "

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    return-object p1

    .line 187
    :cond_9
    const-string p0, "mCreatingDialog = true: "

    .line 188
    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    :cond_a
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android:dialogShowing"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    const-string v1, "android:savedDialogState"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p0, Landroidx/fragment/app/h;->e:I

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v1, "android:style"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget v0, p0, Landroidx/fragment/app/h;->f:I

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v1, "android:theme"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/h;->k:Z

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    const-string v1, "android:cancelable"

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/h;->n:Z

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    const-string v1, "android:showsDialog"

    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    :cond_4
    iget p0, p0, Landroidx/fragment/app/h;->p:I

    .line 57
    .line 58
    const/4 v0, -0x1

    .line 59
    if-eq p0, v0, :cond_5

    .line 60
    .line 61
    const-string v0, "android:backStackId"

    .line 62
    .line 63
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    :cond_5
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Landroidx/fragment/app/h;->x:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0a05e2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a05e6

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const v1, 0x7f0a05e5

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "android:savedDialogState"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/o;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const-string p1, "android:savedDialogState"

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
