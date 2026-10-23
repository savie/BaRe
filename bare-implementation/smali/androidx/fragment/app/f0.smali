.class public final Landroidx/fragment/app/f0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lw24;
.implements Lwx6;
.implements Lzl8;


# instance fields
.field public final a:Landroidx/fragment/app/o;

.field public final b:Lyl8;

.field public final c:Landroidx/fragment/app/i;

.field public d:Lwl8;

.field public e:Lhu4;

.field public f:Lw00;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/o;Lyl8;Landroidx/fragment/app/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/f0;->e:Lhu4;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/fragment/app/f0;->f:Lw00;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/fragment/app/f0;->a:Landroidx/fragment/app/o;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/fragment/app/f0;->b:Lyl8;

    .line 12
    .line 13
    iput-object p3, p0, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/i;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lrt4;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Lhu4;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhu4;->d(Lrt4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f0;->e:Lhu4;

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
    iput-object v0, p0, Landroidx/fragment/app/f0;->e:Lhu4;

    .line 11
    .line 12
    new-instance v0, Lvx6;

    .line 13
    .line 14
    new-instance v1, Las4;

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    invoke-direct {v1, p0, v2}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lvx6;-><init>(Lwx6;Las4;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lw00;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lw00;-><init>(Lvx6;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroidx/fragment/app/f0;->f:Lw00;

    .line 30
    .line 31
    invoke-virtual {v0}, Lvx6;->a()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/i;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/i;->run()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Lej5;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f0;->a:Landroidx/fragment/app/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    instance-of v2, v1, Landroid/app/Application;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast v1, Landroid/app/Application;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    new-instance v2, Lej5;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, v3}, Lej5;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iget-object v3, v2, Ln22;->a:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    sget-object v4, Lvl8;->d:Lsl4;

    .line 41
    .line 42
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2
    sget-object v1, Lcy0;->c:Lq34;

    .line 46
    .line 47
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcy0;->d:Lma2;

    .line 51
    .line 52
    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object p0, v0, Landroidx/fragment/app/o;->mArguments:Landroid/os/Bundle;

    .line 56
    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    sget-object v0, Lcy0;->e:Llv1;

    .line 60
    .line 61
    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_3
    return-object v2
.end method

.method public final getDefaultViewModelProviderFactory()Lwl8;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f0;->a:Landroidx/fragment/app/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getDefaultViewModelProviderFactory()Lwl8;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Landroidx/fragment/app/o;->mDefaultFactory:Lxx6;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iput-object v1, p0, Landroidx/fragment/app/f0;->d:Lwl8;

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/f0;->d:Lwl8;

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    instance-of v2, v1, Landroid/app/Application;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    check-cast v1, Landroid/app/Application;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    check-cast v1, Landroid/content/ContextWrapper;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    :goto_1
    new-instance v2, Lxx6;

    .line 50
    .line 51
    iget-object v3, v0, Landroidx/fragment/app/o;->mArguments:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {v2, v1, v0, v3}, Lxx6;-><init>(Landroid/app/Application;Lwx6;Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Landroidx/fragment/app/f0;->d:Lwl8;

    .line 57
    .line 58
    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/f0;->d:Lwl8;

    .line 59
    .line 60
    return-object p0
.end method

.method public final getLifecycle()Lhu4;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Lhu4;

    .line 5
    .line 6
    return-object p0
.end method

.method public final getSavedStateRegistry()Lot9;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/fragment/app/f0;->f:Lw00;

    .line 5
    .line 6
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lot9;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getViewModelStore()Lyl8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/fragment/app/f0;->b:Lyl8;

    .line 5
    .line 6
    return-object p0
.end method
