.class public final synthetic Lmi5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lni5;

.field public final synthetic b:Loi5;

.field public final synthetic c:Lmt3;


# direct methods
.method public synthetic constructor <init>(Lni5;Loi5;Lmt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmi5;->a:Lni5;

    .line 5
    .line 6
    iput-object p2, p0, Lmi5;->b:Loi5;

    .line 7
    .line 8
    iput-object p3, p0, Lmi5;->c:Lmt3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lmi5;->c:Lmt3;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Long;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-object p1, p0, Lmi5;->a:Lni5;

    .line 10
    .line 11
    iget-object p1, p1, Lni5;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lmi5;->b:Loi5;

    .line 17
    .line 18
    iget-object p1, p0, Loi5;->J:Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    .line 20
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    iget-object v3, p0, Loi5;->K:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    sub-long v6, v1, v4

    .line 34
    .line 35
    const-wide/16 v8, 0x7d0

    .line 36
    .line 37
    cmp-long v6, v6, v8

    .line 38
    .line 39
    if-gez v6, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v3, v4, v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    iget-wide p0, p0, Loi5;->c:J

    .line 53
    .line 54
    cmp-long v3, v1, p0

    .line 55
    .line 56
    if-lez v3, :cond_1

    .line 57
    .line 58
    move-wide v1, p0

    .line 59
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {v0, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    :catch_0
    :cond_2
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 67
    .line 68
    return-object p0
.end method
