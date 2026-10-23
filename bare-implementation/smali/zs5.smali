.class public final Lzs5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Lgv7;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzs5;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    new-instance p1, Lus5;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lus5;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lgv7;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lzs5;->b:Lgv7;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lfu4;Lss5;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lfu4;->getLifecycle()Lhu4;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, v0, Lhu4;->d:Lst4;

    .line 12
    .line 13
    sget-object v2, Lst4;->a:Lst4;

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v1, Lts5;

    .line 19
    .line 20
    invoke-direct {v1, p1, p2}, Lts5;-><init>(Lfu4;Lss5;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Lss5;->createNavigationEventHandler$activity(Lts5;)Lrs5;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v1}, Lrs5;->b(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lzs5;->b()Lws5;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v1, v1, Lws5;->c:Lf41;

    .line 36
    .line 37
    invoke-static {v1, p1}, Lf41;->a(Lf41;Lrs5;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lys5;

    .line 41
    .line 42
    invoke-direct {v1, p1, p0, v0}, Lys5;-><init>(Lrs5;Lzs5;Lhu4;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lhu4;->a(Leu4;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lvs5;

    .line 49
    .line 50
    invoke-direct {p0, v0, v1}, Lvs5;-><init>(Lhu4;Lys5;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p0}, Lss5;->addCloseable$activity(Lvs5;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final b()Lws5;
    .locals 0

    .line 1
    iget-object p0, p0, Lzs5;->b:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lws5;

    .line 8
    .line 9
    return-object p0
.end method

.method public final c(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lzs5;->b()Lws5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lws5;->c:Lf41;

    .line 6
    .line 7
    new-instance v1, Lms5;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, v2}, Lps5;-><init>(Landroid/window/OnBackInvokedDispatcher;I)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v1, v3}, Lf41;->c(Lps5;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lzs5;->b()Lws5;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object p0, p0, Lws5;->c:Lf41;

    .line 22
    .line 23
    new-instance v0, Lqs5;

    .line 24
    .line 25
    const v1, 0xf4240

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1, v1}, Lps5;-><init>(Landroid/window/OnBackInvokedDispatcher;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v2}, Lf41;->c(Lps5;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
