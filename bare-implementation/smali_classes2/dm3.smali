.class public final Ldm3;
.super Lkk3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

.field public final f:Lex6;

.field public final g:Lex6;

.field public final h:Lex6;

.field public final i:Lex6;

.field public final j:Lex6;

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public final l:Ljava/util/concurrent/atomic/AtomicLong;

.field public m:Lzc2;

.field public n:Lkm5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkk3;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ldm3;->f:Lex6;

    .line 10
    .line 11
    new-instance v0, Lex6;

    .line 12
    .line 13
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ldm3;->g:Lex6;

    .line 17
    .line 18
    new-instance v0, Lex6;

    .line 19
    .line 20
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ldm3;->h:Lex6;

    .line 24
    .line 25
    new-instance v0, Lex6;

    .line 26
    .line 27
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Ldm3;->i:Lex6;

    .line 31
    .line 32
    new-instance v0, Lex6;

    .line 33
    .line 34
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Ldm3;->j:Lex6;

    .line 38
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Ldm3;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Ldm3;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 52
    .line 53
    return-void
.end method

.method public static final l(JLdm3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Z
    .locals 2

    .line 1
    iget-object v0, p2, Ldm3;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long p0, p0, v0

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p2, Ldm3;->e:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p3}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static final m(Ldm3;JLjava/lang/String;Lbm3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldm3;->k:Ljava/util/concurrent/atomic/AtomicLong;

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
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Ldm3;->e:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1, p3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Ldm3;->g:Lex6;

    .line 30
    .line 31
    invoke-virtual {p0, p4}, Lex6;->k(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
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
    iget-object v0, p0, Ldm3;->m:Lzc2;

    .line 7
    .line 8
    iget-object p0, p0, Ldm3;->n:Lkm5;

    .line 9
    .line 10
    invoke-static {v0, p0}, Lre3;->n(Lzc2;Laj8;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;
    .locals 0

    .line 1
    iget-object p0, p0, Ldm3;->e:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "folderItem"

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

.method public final onFolderEvent(Lmm3;)V
    .locals 3
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "onFolderEvent: "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Ldm3;->e:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object p1, p1, Lmm3;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Ldm3;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lo20;

    .line 53
    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    invoke-direct {v0, v1, p0, p1}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method
