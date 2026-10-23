.class public final synthetic Liq0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lw76;
.implements Lmo1;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lg36;
.implements Ldv7;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liq0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Liq0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lyq0;Lib;)V
    .locals 7

    .line 1
    iget-object v0, p0, Liq0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object p0, p0, Liq0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p2, Lib;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p2, Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, "Fetched subscription SKU details: Total: ("

    .line 26
    .line 27
    const-string v4, ")"

    .line 28
    .line 29
    invoke-static {v2, v3, v4}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v5, 0x4

    .line 34
    const/4 v6, 0x0

    .line 35
    const-string v2, "BillingManager"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v1 .. v6}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget v1, p1, Lyq0;->a:I

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object p2, Lwq0;->a:Lwq0;

    .line 56
    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "Error when querying subscription skus: "

    .line 60
    .line 61
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "_queryProductDetailsFromGooglePlay"

    .line 72
    .line 73
    invoke-static {p2, p1}, Lwq0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public g()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Liq0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lfg8;

    .line 4
    .line 5
    iget-object p0, p0, Liq0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Loe0;

    .line 8
    .line 9
    iget-object v0, v0, Lfg8;->c:Lmw6;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lvf1;

    .line 15
    .line 16
    invoke-direct {v1, v0, p0}, Lvf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lmw6;->g(Lkw6;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Iterable;

    .line 24
    .line 25
    return-object p0
.end method

.method public m(Lpp0;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Liq0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Liq0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lkt4;

    .line 8
    .line 9
    const-class v1, Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lpp0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/content/Context;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Lkt4;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Lwd0;

    .line 22
    .line 23
    invoke-direct {p1, v0, p0}, Lwd0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 1
    iget-object v0, p0, Liq0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld45;

    .line 4
    .line 5
    iget-object p0, p0, Liq0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lmt3;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "d45"

    .line 13
    .line 14
    const-string v2, "clearAnonymousSignIn"

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Lorg/swiftapps/swiftbackup/common/V;->setNon(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ld45;->b()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Liq0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lje5;

    .line 4
    .line 5
    iget-object p0, p0, Liq0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lvd5;

    .line 8
    .line 9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const v1, 0x7f0a007d

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lje5;->V(Lvd5;)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    const v1, 0x7f0a008d

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-ne p1, v1, :cond_1

    .line 28
    .line 29
    new-instance p1, Lcv;

    .line 30
    .line 31
    const/16 v1, 0xc

    .line 32
    .line 33
    invoke-direct {p1, v1, v0, p0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v3, p1, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    const v1, 0x7f0a005b

    .line 41
    .line 42
    .line 43
    if-ne p1, v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lvd5;->isCloudItem()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    sget-object p1, Ltb1;->a:Ltb1;

    .line 58
    .line 59
    invoke-static {}, Lqb1;->m()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    new-instance p1, Lhv1;

    .line 67
    .line 68
    const v1, 0x7f140160

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0, v1}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 72
    .line 73
    .line 74
    new-instance v4, Ls35;

    .line 75
    .line 76
    invoke-direct {v4, v0, v1, p1, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 77
    .line 78
    .line 79
    const p1, 0x7f1301e5

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, p1}, Lv75;->v(I)V

    .line 83
    .line 84
    .line 85
    const p1, 0x7f13054e

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, p1}, Lv75;->n(I)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Lie5;

    .line 92
    .line 93
    invoke-direct {p1, v0, p0}, Lie5;-><init>(Lje5;Lvd5;)V

    .line 94
    .line 95
    .line 96
    const p0, 0x7f1305d0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, p0, p1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    const p0, 0x7f1303ba

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, p0, v3}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_0
    return v2
.end method
