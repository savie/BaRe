.class public final synthetic Lx52;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lst3;


# instance fields
.field public final synthetic a:La62;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(La62;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx52;->a:La62;

    .line 5
    .line 6
    iput-object p2, p0, Lx52;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    check-cast p2, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    check-cast p3, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast p4, Ljava/io/OutputStream;

    .line 19
    .line 20
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p3, p0, Lx52;->a:La62;

    .line 24
    .line 25
    iget-object v2, p3, La62;->n:Ljh1;

    .line 26
    .line 27
    new-instance v3, Lt15;

    .line 28
    .line 29
    invoke-direct {v3, v0, v1, p1, p2}, Lt15;-><init>(JJ)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lx52;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v2, p0, v3}, Ljh1;->c(Ljava/lang/String;Lt15;)Ltc4;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :try_start_0
    iget-object p1, p3, Lno2;->d:Lgz7;

    .line 39
    .line 40
    invoke-virtual {p1}, Lgz7;->isCancelled()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Ltc4;->a:Ljava/io/InputStream;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 49
    .line 50
    .line 51
    const/high16 p2, 0x40000

    .line 52
    .line 53
    :try_start_1
    invoke-static {p1, p4, p2}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    :try_start_2
    invoke-interface {p4}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p2

    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p2

    .line 66
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 67
    :catchall_2
    move-exception p3

    .line 68
    :try_start_5
    invoke-static {p4, p2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 72
    :goto_0
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 73
    :catchall_3
    move-exception p3

    .line 74
    :try_start_7
    invoke-static {p1, p2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 78
    :catchall_4
    move-exception p1

    .line 79
    goto :goto_2

    .line 80
    :cond_0
    :goto_1
    const/4 p1, 0x0

    .line 81
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    sget-object p0, Lbe8;->a:Lbe8;

    .line 85
    .line 86
    return-object p0

    .line 87
    :goto_2
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 88
    :catchall_5
    move-exception p2

    .line 89
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw p2
.end method
