.class public final Lit0;
.super Lo3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Ljava/lang/Thread;

.field public final k:Luy2;


# direct methods
.method public constructor <init>(Lox1;Ljava/lang/Thread;Luy2;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lo3;-><init>(Lox1;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lit0;->f:Ljava/lang/Thread;

    .line 6
    .line 7
    iput-object p3, p0, Lit0;->k:Luy2;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lit0;->f:Ljava/lang/Thread;

    .line 6
    .line 7
    invoke-static {p1, p0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
