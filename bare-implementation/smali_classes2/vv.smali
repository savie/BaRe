.class public final Lvv;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Ljava/lang/Boolean;

.field public final synthetic b:Ljava/lang/Boolean;

.field public final synthetic c:Llh6;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Llh6;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvv;->a:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object p2, p0, Lvv;->b:Ljava/lang/Boolean;

    .line 4
    .line 5
    iput-object p3, p0, Lvv;->c:Llh6;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance p1, Lvv;

    .line 2
    .line 3
    iget-object v0, p0, Lvv;->b:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v1, p0, Lvv;->c:Llh6;

    .line 6
    .line 7
    iget-object p0, p0, Lvv;->a:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lvv;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Llh6;Ljv1;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lvv;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lvv;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lvv;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iget-object v0, p0, Lvv;->a:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lmp6;->a:Lmp6;

    .line 15
    .line 16
    const-string v1, "settings put global package_verifier_enable 1"

    .line 17
    .line 18
    filled-new-array {v1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lip6;->SHIZUKU:Lip6;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lvv;->b:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-static {v0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lmp6;->a:Lmp6;

    .line 36
    .line 37
    const-string v1, "settings put global verifier_verify_adb_installs 1"

    .line 38
    .line 39
    filled-new-array {v1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v2, Lip6;->SHIZUKU:Lip6;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p0, p0, Lvv;->c:Llh6;

    .line 49
    .line 50
    iget-object p0, p0, Llh6;->a:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    sget-object p0, Lmp6;->a:Lmp6;

    .line 59
    .line 60
    const-string p1, "bmgr "

    .line 61
    .line 62
    const-string v0, "enable true"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    filled-new-array {p1}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object v0, Lip6;->SHIZUKU:Lip6;

    .line 73
    .line 74
    invoke-virtual {p0, p1, v0}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    :cond_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 78
    .line 79
    return-object p0
.end method
