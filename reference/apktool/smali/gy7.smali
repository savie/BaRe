.class public final Lgy7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpd7;


# static fields
.field public static final c:Ljava/lang/String;

.field public static final d:[B


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lgn6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lgy7;->c:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "__RET=$?;echo %1$s;echo %1$s >&2;echo $__RET;unset __RET\n"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lgy7;->d:[B

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lgn6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgy7;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lgy7;->b:Lgn6;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lhp7;

    .line 4
    .line 5
    iget-object v2, p0, Lgy7;->b:Lgn6;

    .line 6
    .line 7
    iget-object v3, v2, Lgn6;->a:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {v1, p2, v3}, Lip7;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    sget-object v0, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    new-instance v1, Lgp7;

    .line 19
    .line 20
    iget-object v3, v2, Lgn6;->b:Ljava/util/List;

    .line 21
    .line 22
    invoke-direct {v1, p3, v3}, Lip7;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    iget-object p0, p0, Lgy7;->a:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lae7;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Lae7;->d0(Ljava/io/OutputStream;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    sget-object p0, Lgy7;->d:[B

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    iput p0, v2, Lgn6;->c:I

    .line 70
    .line 71
    invoke-interface {p3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Ljava/io/InterruptedIOException;

    .line 86
    .line 87
    throw p0
.end method
