.class public Lko1;
.super Landroid/app/Dialog;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfu4;
.implements Lwx6;


# instance fields
.field public a:Lhu4;

.field public final b:Lw00;

.field public final c:Lgv7;

.field public final d:Lgv7;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lvx6;

    .line 8
    .line 9
    new-instance p2, Las4;

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    invoke-direct {p2, p0, v0}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p0, p2}, Lvx6;-><init>(Lwx6;Las4;)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Lw00;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Lw00;-><init>(Lvx6;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lko1;->b:Lw00;

    .line 25
    .line 26
    new-instance p1, Lkf;

    .line 27
    .line 28
    const/16 p2, 0x13

    .line 29
    .line 30
    invoke-direct {p1, p0, p2}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Lgv7;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lko1;->c:Lgv7;

    .line 39
    .line 40
    new-instance p1, Llf;

    .line 41
    .line 42
    const/16 p2, 0xd

    .line 43
    .line 44
    invoke-direct {p1, p0, p2}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lgv7;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lko1;->d:Lgv7;

    .line 53
    .line 54
    return-void
.end method

.method public static a(Lko1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lko1;->c()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b()Lzs5;
    .locals 0

    .line 1
    iget-object p0, p0, Lko1;->d:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzs5;

    .line 8
    .line 9
    return-object p0
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a05e2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0a05e4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const v1, 0x7f0a05e5

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const v1, 0x7f0a05e3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final getLifecycle()Lhu4;
    .locals 1

    .line 1
    iget-object v0, p0, Lko1;->a:Lhu4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lhu4;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lhu4;-><init>(Lfu4;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lko1;->a:Lhu4;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method public final getSavedStateRegistry()Lot9;
    .locals 0

    .line 1
    iget-object p0, p0, Lko1;->b:Lw00;

    .line 2
    .line 3
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lot9;

    .line 6
    .line 7
    return-object p0
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    iget-object p0, p0, Lko1;->c:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ltl2;

    .line 8
    .line 9
    invoke-virtual {p0}, Lrl5;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x21

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lko1;->b()Lzs5;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lzs5;->c(Landroid/window/OnBackInvokedDispatcher;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lko1;->b:Lw00;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lw00;->u(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lko1;->a:Lhu4;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    new-instance p1, Lhu4;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lhu4;-><init>(Lfu4;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lko1;->a:Lhu4;

    .line 39
    .line 40
    :cond_1
    sget-object p0, Lrt4;->ON_CREATE:Lrt4;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lhu4;->d(Lrt4;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lko1;->b:Lw00;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lw00;->v(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lko1;->a:Lhu4;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lhu4;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lhu4;-><init>(Lfu4;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lko1;->a:Lhu4;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lrt4;->ON_RESUME:Lrt4;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lhu4;->d(Lrt4;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lko1;->a:Lhu4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lhu4;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lhu4;-><init>(Lfu4;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lko1;->a:Lhu4;

    .line 11
    .line 12
    :cond_0
    sget-object v1, Lrt4;->ON_DESTROY:Lrt4;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lhu4;->d(Lrt4;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lko1;->a:Lhu4;

    .line 19
    .line 20
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 11
    invoke-virtual {p0}, Lko1;->c()V

    .line 12
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lko1;->c()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p0}, Lko1;->c()V

    .line 14
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
