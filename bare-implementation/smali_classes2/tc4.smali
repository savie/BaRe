.class public final Ltc4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Lbt3;

.field public final c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Lbt3;I)V
    .locals 1

    .line 1
    and-int/lit8 v0, p3, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p3, 0x0

    .line 13
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Ltc4;-><init>(Ljava/io/InputStream;Lbt3;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lbt3;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ltc4;->a:Ljava/io/InputStream;

    .line 19
    iput-object p2, p0, Ltc4;->b:Lbt3;

    .line 20
    iput-boolean p3, p0, Ltc4;->c:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ltc4;->b:Lbt3;

    .line 3
    .line 4
    iget-boolean v2, p0, Ltc4;->c:Z

    .line 5
    .line 6
    iget-object p0, p0, Ltc4;->a:Ljava/io/InputStream;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 11
    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    :try_start_0
    invoke-interface {v1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    check-cast v0, Lbe8;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    :goto_0
    if-eqz v1, :cond_2

    .line 28
    .line 29
    :try_start_2
    invoke-interface {v1}, Lbt3;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    move-object v0, p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-static {v0, p0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 42
    .line 43
    instance-of p0, v0, Ljava/io/IOException;

    .line 44
    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    check-cast v0, Ljava/io/IOException;

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    move-object v0, p0

    .line 56
    :goto_2
    throw v0

    .line 57
    :cond_4
    return-void
.end method
