.class public final Lxr7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Lgj1;


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:Ln3;

.field public final c:Lx74;

.field public final d:Lyr7;

.field public final e:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgj1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lgj1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lxr7;->f:Lgj1;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lyr7;Lx74;Ln3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lxr7;->a:Ljava/util/UUID;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lxr7;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    iput-object p1, p0, Lxr7;->d:Lyr7;

    .line 18
    .line 19
    iput-object p2, p0, Lxr7;->c:Lx74;

    .line 20
    .line 21
    iput-object p3, p0, Lxr7;->b:Ln3;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/AutoCloseable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxr7;->b:Ln3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln3;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    new-array v0, p1, [Ljava/lang/Runnable;

    .line 8
    .line 9
    iget-object p0, p0, Lxr7;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, [Ljava/lang/Runnable;

    .line 16
    .line 17
    array-length v0, p0

    .line 18
    :goto_0
    if-ge p1, v0, :cond_0

    .line 19
    .line 20
    aget-object v1, p0, p1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 23
    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method
