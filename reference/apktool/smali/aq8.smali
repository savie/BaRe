.class public final Laq8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lm3;

.field public final synthetic b:Lcq8;


# direct methods
.method public constructor <init>(Lcq8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Laq8;->b:Lcq8;

    .line 5
    .line 6
    iget-object p1, p1, Ln3;->d:Lm3;

    .line 7
    .line 8
    iput-object p1, p0, Laq8;->a:Lm3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Laq8;->b:Lcq8;

    .line 2
    .line 3
    iget-object v1, v0, Ln3;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Laq8;->a:Lm3;

    .line 13
    .line 14
    iget-object v3, v2, Lm3;->a:Lm3;

    .line 15
    .line 16
    iput-object v3, p0, Laq8;->a:Lm3;

    .line 17
    .line 18
    iget-object v4, v0, Ln3;->d:Lm3;

    .line 19
    .line 20
    if-ne v2, v4, :cond_1

    .line 21
    .line 22
    iget-object v4, v4, Lm3;->a:Lm3;

    .line 23
    .line 24
    iput-object v4, v0, Ln3;->d:Lm3;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_0
    iget-object v4, v2, Lm3;->b:Lm3;

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    iput-object v3, v4, Lm3;->a:Lm3;

    .line 34
    .line 35
    iget-object v2, v2, Lm3;->a:Lm3;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    iput-object v4, v2, Lm3;->b:Lm3;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    if-eqz v3, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iput-object v2, v3, Lm3;->b:Lm3;

    .line 46
    .line 47
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 48
    .line 49
    invoke-virtual {v3}, Lm3;->a()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    :cond_4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public final hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Laq8;->a:Lm3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lm3;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Laq8;->a()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Laq8;->a:Lm3;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    return v1

    .line 23
    :cond_2
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Laq8;->a:Lm3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lm3;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Laq8;->a()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Laq8;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    iget-object v1, p0, Laq8;->a:Lm3;

    .line 22
    .line 23
    iget-object v1, v1, Lm3;->a:Lm3;

    .line 24
    .line 25
    iput-object v1, p0, Laq8;->a:Lm3;

    .line 26
    .line 27
    return-object v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Laq8;->a:Lm3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, v0, Lm3;->a:Lm3;

    .line 7
    .line 8
    iget-object v2, p0, Laq8;->b:Lcq8;

    .line 9
    .line 10
    invoke-virtual {v0}, Lm3;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v2, v0}, Ln3;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Laq8;->a:Lm3;

    .line 18
    .line 19
    return-void
.end method
