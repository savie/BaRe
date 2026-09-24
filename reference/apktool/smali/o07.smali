.class public final synthetic Lo07;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls07;

.field public final synthetic b:Landroid/os/ParcelFileDescriptor;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic d:Lz07;

.field public final synthetic e:Li07;

.field public final synthetic f:Loz6;


# direct methods
.method public synthetic constructor <init>(Ls07;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/atomic/AtomicReference;Lz07;Li07;Loz6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo07;->a:Ls07;

    .line 5
    .line 6
    iput-object p2, p0, Lo07;->b:Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    iput-object p3, p0, Lo07;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    iput-object p4, p0, Lo07;->d:Lz07;

    .line 11
    .line 12
    iput-object p5, p0, Lo07;->e:Li07;

    .line 13
    .line 14
    iput-object p6, p0, Lo07;->f:Loz6;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lo07;->a:Ls07;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Ls07;->h:Ll27;

    .line 4
    .line 5
    sget-object v2, Ll27;->Aes256GcmSiv:Ll27;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    .line 7
    iget-object v3, p0, Lo07;->b:Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    iget-object v4, p0, Lo07;->d:Lz07;

    .line 10
    .line 11
    iget-object v5, p0, Lo07;->e:Li07;

    .line 12
    .line 13
    iget-object v6, p0, Lo07;->f:Loz6;

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    :try_start_1
    sget-object v2, Ll27;->Aegis256:Ll27;

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    sget-object v2, Ll27;->Aegis128X2:Ll27;

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 27
    .line 28
    invoke-direct {v1, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 29
    .line 30
    .line 31
    :try_start_2
    invoke-virtual {v4, v5, v0, v6, v1}, Lz07;->b(Li07;Ls07;Loz6;Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    :catchall_1
    move-exception v2

    .line 39
    :try_start_4
    invoke-static {v1, v0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 43
    :catchall_2
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v5, v0, v6, v1}, Lz07;->a(Li07;Ls07;Loz6;Ljava/io/FileDescriptor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 53
    .line 54
    .line 55
    :try_start_6
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_3
    move-exception v0

    .line 60
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 61
    :catchall_4
    move-exception v1

    .line 62
    :try_start_8
    invoke-static {v3, v0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 66
    :goto_1
    iget-object p0, p0, Lo07;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
