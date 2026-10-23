.class public final synthetic Lwr0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lg36;
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwr0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lwr0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lwr0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lwr0;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lwr0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;

    .line 4
    .line 5
    iget-object v1, p0, Lwr0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/os/CancellationSignal;

    .line 8
    .line 9
    iget-object v2, p0, Lwr0;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    iget-object p0, p0, Lwr0;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lt22;

    .line 16
    .line 17
    invoke-static {v0, v1, v2, p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$KPnyPsbzUo0kEQwputkdgA68I1Y(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lwr0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lwr0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 8
    .line 9
    iget-object v2, p0, Lwr0;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lbs0;

    .line 12
    .line 13
    iget-object p0, p0, Lwr0;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Landroid/view/View;

    .line 16
    .line 17
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const v3, 0x7f0a004a

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-ne p1, v3, :cond_0

    .line 26
    .line 27
    sget-object p0, Lzn4;->a:Lzn4;

    .line 28
    .line 29
    new-instance p0, Las0;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-direct {p0, v1, v2, v4, p1}, Las0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v4, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const v3, 0x7f0a00cb

    .line 40
    .line 41
    .line 42
    if-ne p1, v3, :cond_1

    .line 43
    .line 44
    iget-object p0, v2, Lgm7;->e:Lfm7;

    .line 45
    .line 46
    iget-object p0, p0, Lfm7;->a:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {p0}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {v0, v1, p0, v4}, Lns0;->l(Lzm;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/util/ArrayList;Lxi;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const v2, 0x7f0a0056

    .line 57
    .line 58
    .line 59
    if-ne p1, v2, :cond_2

    .line 60
    .line 61
    new-instance p0, Lrm;

    .line 62
    .line 63
    const/4 p1, 0x2

    .line 64
    invoke-direct {p0, p1, v0, v1}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const p1, 0x7f1301e8

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p1, p0}, Lorg/swiftapps/swiftbackup/common/Const;->J(Lio1;ILbt3;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const v0, 0x7f0a0077

    .line 75
    .line 76
    .line 77
    if-ne p1, v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Lai8;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 94
    return p0
.end method
