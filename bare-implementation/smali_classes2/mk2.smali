.class public final Lmk2;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Lji;

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public final i:Lex6;

.field public final j:Lex6;

.field public final k:Lex6;

.field public final l:Lex6;

.field public m:Lzc2;

.field public n:Llk2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmk2;->g:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lmk2;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    .line 14
    new-instance v0, Lex6;

    .line 15
    .line 16
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lmk2;->i:Lex6;

    .line 20
    .line 21
    new-instance v0, Lex6;

    .line 22
    .line 23
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lmk2;->j:Lex6;

    .line 27
    .line 28
    new-instance v0, Lex6;

    .line 29
    .line 30
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lmk2;->k:Lex6;

    .line 34
    .line 35
    new-instance v0, Lex6;

    .line 36
    .line 37
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lmk2;->l:Lex6;

    .line 41
    .line 42
    return-void
.end method

.method public static final n(Lmk2;JLjava/lang/String;Lak2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmk2;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long p1, p1, v0

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lmk2;->e:Lji;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, p3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lmk2;->k:Lex6;

    .line 28
    .line 29
    invoke-virtual {p0, p4}, Lex6;->k(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string p0, "app"

    .line 34
    .line 35
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0

    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    invoke-super {p0}, La55;->b()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lre3;->a:Lzc2;

    .line 5
    .line 6
    iget-object v0, p0, Lmk2;->m:Lzc2;

    .line 7
    .line 8
    iget-object p0, p0, Lmk2;->n:Llk2;

    .line 9
    .line 10
    invoke-static {v0, p0}, Lre3;->n(Lzc2;Laj8;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final j(Lh80;)V
    .locals 10

    .line 1
    new-instance v0, Lhz;

    .line 2
    .line 3
    iget-object v1, p0, Lmk2;->e:Lji;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, p1, Lh80;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Liu;

    .line 10
    .line 11
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object p1, p1, Lh80;->c:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v3, p1

    .line 18
    check-cast v3, Ljava/util/List;

    .line 19
    .line 20
    invoke-static {}, Lz85;->w()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-static {}, Lz85;->r()Lxp1;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    sget-object p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-direct/range {v0 .. v9}, Lhz;-><init>(Lji;Ljava/util/List;Ljava/util/List;Lhk;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;ZLxp1;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lky7;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-direct {p1, v1, v2}, Lty7;-><init>(II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0, p1}, Lmk2;->l(Lkz;Lty7;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    const-string p0, "app"

    .line 55
    .line 56
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    throw p0
.end method

.method public final k()Lji;
    .locals 0

    .line 1
    iget-object p0, p0, Lmk2;->e:Lji;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "app"

    .line 7
    .line 8
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final l(Lkz;Lty7;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lc40;

    .line 6
    .line 7
    new-instance v1, Lb40;

    .line 8
    .line 9
    invoke-direct {v1}, Lb40;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1, p2, v1}, Lc40;-><init>(Ljava/util/List;Lty7;Lb40;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, v0, Lc40;->u:Z

    .line 17
    .line 18
    const-class p1, Lc40;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lqo0;->c(Ljava/lang/Class;Lpw6;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final m(Ljava/util/List;Lhk;)V
    .locals 10

    .line 1
    new-instance v0, Lhz;

    .line 2
    .line 3
    iget-object v1, p0, Lmk2;->e:Lji;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Lq05;->DEVICE:Lq05;

    .line 8
    .line 9
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {}, Lz85;->w()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    invoke-static {}, Lz85;->r()Lxp1;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    sget-object v2, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v2, p1

    .line 33
    move-object v4, p2

    .line 34
    invoke-direct/range {v0 .. v9}, Lhz;-><init>(Lji;Ljava/util/List;Ljava/util/List;Lhk;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;ZLxp1;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lky7;

    .line 38
    .line 39
    const/4 p2, 0x2

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {p1, p2, v1}, Lty7;-><init>(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, p1}, Lmk2;->l(Lkz;Lty7;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const-string p0, "app"

    .line 49
    .line 50
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    throw p0
.end method

.method public final o(Lgm;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-static {p2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x1e

    .line 18
    .line 19
    invoke-static {v1, p2}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_1

    .line 38
    .line 39
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    move-object v0, p2

    .line 46
    :cond_1
    sget-object p2, Lzn4;->a:Lzn4;

    .line 47
    .line 48
    new-instance p2, Loj;

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-direct {p2, v1, p1, v0, p0}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onAppEvent(Loq;)V
    .locals 5
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Loq;->a:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Lmk2;->e:Lji;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "app"

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v4, "onAppEvent: ["

    .line 30
    .line 31
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, "]"

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lmk2;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lmk2;->e:Lji;

    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    new-instance v0, Llx;

    .line 59
    .line 60
    invoke-direct {v0, p0, p1}, Llx;-><init>(Lmk2;Lji;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :cond_1
    return-void

    .line 72
    :cond_2
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_3
    return-void
.end method

.method public final p(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-static {p2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x1e

    .line 18
    .line 19
    invoke-static {v1, p2}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_1

    .line 38
    .line 39
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    move-object v0, p2

    .line 46
    :cond_1
    sget-object p2, Lzn4;->a:Lzn4;

    .line 47
    .line 48
    new-instance p2, Lv20;

    .line 49
    .line 50
    const/4 v1, 0x4

    .line 51
    invoke-direct {p2, v1, p1, v0, p0}, Lv20;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
