.class public abstract Lokhttp3/internal/publicsuffix/BasePublicSuffixList;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/publicsuffix/PublicSuffixList;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public c:Lhy0;

.field public d:Lhy0;

.field public e:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->b:Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lhy0;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->c:Lhy0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "bytes"

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

.method public abstract b()Lij7;
.end method

.method public final c()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->b()Lij7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Ltf6;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ltf6;-><init>(Lij7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-virtual {v1}, Ltf6;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-long v2, v0

    .line 18
    invoke-virtual {v1, v2, v3}, Ltf6;->o(J)Lhy0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1}, Ltf6;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-long v2, v2

    .line 27
    invoke-virtual {v1, v2, v3}, Ltf6;->o(J)Lhy0;

    .line 28
    .line 29
    .line 30
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    :try_start_2
    invoke-virtual {v1}, Ltf6;->close()V

    .line 32
    .line 33
    .line 34
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->c:Lhy0;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->d:Lhy0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    .line 45
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 46
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->b:Ljava/util/concurrent/CountDownLatch;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception v0

    .line 55
    :try_start_5
    monitor-exit p0

    .line 56
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 57
    :catchall_2
    move-exception v0

    .line 58
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 59
    :catchall_3
    move-exception v2

    .line 60
    :try_start_7
    invoke-static {v1, v0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 64
    :goto_0
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->b:Ljava/util/concurrent/CountDownLatch;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 67
    .line 68
    .line 69
    throw v0
.end method
