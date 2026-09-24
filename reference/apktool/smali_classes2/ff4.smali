.class public final synthetic Lff4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/intro/IntroActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/intro/IntroActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lff4;->a:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lff4;->a:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 2
    .line 3
    sget p1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->R()Lorg/swiftapps/swiftbackup/intro/d;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/intro/d;->p:Lnf4;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-boolean p1, p0, Lnf4;->h:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lnf4;->g:Lmf4;

    .line 17
    .line 18
    sget-object p2, Lmf4;->IDLE:Lmf4;

    .line 19
    .line 20
    if-eq p1, p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lmf4;->CHECKING_ROOT:Lmf4;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lnf4;->a(Lmf4;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lnf4;->a:Ldq;

    .line 29
    .line 30
    new-instance p2, Lej;

    .line 31
    .line 32
    const/16 v0, 0x18

    .line 33
    .line 34
    invoke-direct {p2, p0, v0}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p1
.end method
