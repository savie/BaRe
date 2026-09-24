.class public final synthetic Lha5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic k:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([BJIILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lha5;->a:[B

    .line 5
    .line 6
    iput-wide p2, p0, Lha5;->b:J

    .line 7
    .line 8
    iput p4, p0, Lha5;->c:I

    .line 9
    .line 10
    iput p5, p0, Lha5;->d:I

    .line 11
    .line 12
    iput-object p6, p0, Lha5;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    iput-object p7, p0, Lha5;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    iput-object p8, p0, Lha5;->k:Ljava/util/concurrent/CountDownLatch;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lha5;->a:[B

    .line 2
    .line 3
    iget-wide v1, p0, Lha5;->b:J

    .line 4
    .line 5
    iget v3, p0, Lha5;->c:I

    .line 6
    .line 7
    iget v4, p0, Lha5;->d:I

    .line 8
    .line 9
    iget-object v7, p0, Lha5;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    iget-object v8, p0, Lha5;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    iget-object p0, p0, Lha5;->k:Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    int-to-long v5, v3

    .line 16
    int-to-long v3, v4

    .line 17
    move-wide v9, v5

    .line 18
    move-wide v5, v3

    .line 19
    move-wide v3, v9

    .line 20
    :try_start_0
    invoke-static/range {v0 .. v7}, Lka5;->b([BJJJLjava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v8, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 51
    .line 52
    .line 53
    throw v0
.end method
