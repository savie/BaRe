.class public final Lkg4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

.field public final b:Lmb8;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public final e:Lcl;

.field public final f:Ldl;

.field public final g:Lh80;

.field public final h:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;[Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkg4;->a:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 5
    .line 6
    new-instance v8, Lmb8;

    .line 7
    .line 8
    iget-boolean v9, p1, Leo6;->j:Z

    .line 9
    .line 10
    new-instance v0, Loh1;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x5

    .line 14
    const/4 v1, 0x1

    .line 15
    const-class v3, Lkg4;

    .line 16
    .line 17
    const-string v4, "notifyInvalidatedObservers"

    .line 18
    .line 19
    const-string v5, "notifyInvalidatedObservers(Ljava/util/Set;)V"

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v0 .. v7}, Loh1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    move-object v3, p3

    .line 28
    move-object v4, p4

    .line 29
    move-object v6, v0

    .line 30
    move-object v0, v8

    .line 31
    move v5, v9

    .line 32
    invoke-direct/range {v0 .. v6}, Lmb8;-><init>(Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;[Ljava/lang/String;ZLoh1;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lkg4;->b:Lmb8;

    .line 36
    .line 37
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lkg4;->c:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lkg4;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 50
    .line 51
    new-instance v2, Lcl;

    .line 52
    .line 53
    const/16 v3, 0xb

    .line 54
    .line 55
    invoke-direct {v2, p0, v3}, Lcl;-><init>(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lkg4;->e:Lcl;

    .line 59
    .line 60
    new-instance v2, Ldl;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Ldl;-><init>(Lkg4;)V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lkg4;->f:Ldl;

    .line 66
    .line 67
    new-instance v2, Lh80;

    .line 68
    .line 69
    invoke-direct {v2, p1}, Lh80;-><init>(Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lkg4;->g:Lh80;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/Object;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lkg4;->h:Ljava/lang/Object;

    .line 80
    .line 81
    new-instance v1, Lck;

    .line 82
    .line 83
    const/16 v2, 0x1b

    .line 84
    .line 85
    invoke-direct {v1, p0, v2}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    iput-object v1, v0, Lmb8;->k:Lbt3;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lkg4;->b:Lmb8;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkg4;->e:Lcl;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lkg4;->f:Ldl;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lmb8;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v0, Lmb8;->a:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 27
    .line 28
    iget-object v1, v1, Leo6;->a:Ldv1;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    new-instance v3, Ltx1;

    .line 34
    .line 35
    invoke-direct {v3}, Ltx1;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v4, Lhb8;

    .line 39
    .line 40
    invoke-direct {v4, v0, p0, v2}, Lhb8;-><init>(Lmb8;Lbt3;Ljv1;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x2

    .line 44
    invoke-static {v1, v3, v4, p0}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const-string p0, "coroutineScope"

    .line 49
    .line 50
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v2

    .line 54
    :cond_1
    return-void
.end method
