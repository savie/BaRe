.class public final Lvo0;
.super Lv40;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lso0;

.field public final c:Lso0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lso0;

    .line 5
    .line 6
    invoke-direct {v0}, Lso0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvo0;->b:Lso0;

    .line 10
    .line 11
    new-instance v0, Lso0;

    .line 12
    .line 13
    invoke-direct {v0}, Lso0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lvo0;->c:Lso0;

    .line 17
    .line 18
    return-void
.end method

.method public static e(Lso0;I)Ljava/lang/Object;
    .locals 3

    .line 1
    const v0, 0x8000

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lto0;

    .line 18
    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    monitor-enter p1

    .line 24
    :try_start_1
    iget-object p0, p1, Lto0;->a:[Ljava/lang/Object;

    .line 25
    .line 26
    iget v0, p1, Lto0;->b:I

    .line 27
    .line 28
    aget-object v2, p0, v0

    .line 29
    .line 30
    aput-object v1, p0, v0

    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    and-int/lit16 p0, v0, 0x1ff

    .line 35
    .line 36
    iput p0, p1, Lto0;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    monitor-exit p1

    .line 39
    check-cast v2, Ljava/lang/ref/Reference;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    :goto_0
    return-object v1

    .line 44
    :cond_2
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw p0

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    throw p1
.end method

.method public static f(Lso0;Ljava/lang/Object;I)V
    .locals 1

    .line 1
    const v0, 0x8000

    .line 2
    .line 3
    .line 4
    if-ge p2, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lto0;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lto0;

    .line 21
    .line 22
    invoke-direct {v0}, Lto0;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    new-instance p0, Ljava/lang/ref/SoftReference;

    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_1
    iget p1, v0, Lto0;->b:I

    .line 43
    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 45
    .line 46
    and-int/lit16 p1, p1, 0x1ff

    .line 47
    .line 48
    iput p1, v0, Lto0;->b:I

    .line 49
    .line 50
    iget-object p2, v0, Lto0;->a:[Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p0, p2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    throw p0

    .line 59
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    throw p1
.end method


# virtual methods
.method public final a(I)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->b:Lso0;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lvo0;->e(Lso0;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [B

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    new-array p0, p1, [B

    .line 12
    .line 13
    :cond_0
    return-object p0
.end method

.method public final b(IZ)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->c:Lso0;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lvo0;->e(Lso0;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [I

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    new-array p0, p1, [I

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-object p0
.end method

.method public final c([B)V
    .locals 1

    .line 1
    iget-object p0, p0, Lvo0;->b:Lso0;

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    invoke-static {p0, p1, v0}, Lvo0;->f(Lso0;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final d([I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lvo0;->c:Lso0;

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    invoke-static {p0, p1, v0}, Lvo0;->f(Lso0;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
