.class public final Lc84;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lqw0;

.field public c:Z

.field public final d:Lmp7;

.field public e:[B

.field public f:[C

.field public k:Z


# direct methods
.method public constructor <init>(Lmp7;Lqw0;Lvu1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc84;->c:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lc84;->k:Z

    .line 9
    .line 10
    iput-object p1, p0, Lc84;->d:Lmp7;

    .line 11
    .line 12
    iput-object p2, p0, Lc84;->b:Lqw0;

    .line 13
    .line 14
    iget-object p1, p3, Lvu1;->a:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p1, p0, Lc84;->a:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc84;->e:[B

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    array-length v0, v0

    .line 7
    if-lt v1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "Trying to release buffer smaller than original"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lc84;->e:[B

    .line 18
    .line 19
    iget-object p0, p0, Lc84;->b:Lqw0;

    .line 20
    .line 21
    iget-object p0, p0, Lqw0;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, [B

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    array-length v2, p1

    .line 33
    array-length v1, v1

    .line 34
    if-le v2, v1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    return-void

    .line 38
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc84;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lc84;->k:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Lc84;->c:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lc84;->c:Z

    .line 14
    .line 15
    iget-object p0, p0, Lc84;->b:Lqw0;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
