.class public final Lzg8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Ll15;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/hardware/usb/UsbManager;

.field public c:Lyg8;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lbi7;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lvd4;-><init>(II)V

    .line 7
    .line 8
    .line 9
    const-class v1, Lrg8;

    .line 10
    .line 11
    invoke-static {v1, v0}, Las1;->c(Ljava/lang/Class;Lvd4;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lyu5;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-direct {v0, v3, v1}, Lvd4;-><init>(II)V

    .line 19
    .line 20
    .line 21
    const-class v1, Lpg8;

    .line 22
    .line 23
    invoke-static {v1, v0}, Las1;->c(Ljava/lang/Class;Lvd4;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Le63;

    .line 27
    .line 28
    invoke-direct {v0, v3, v2}, Lvd4;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const-class v1, Log8;

    .line 32
    .line 33
    invoke-static {v1, v0}, Las1;->c(Ljava/lang/Class;Lvd4;)V

    .line 34
    .line 35
    .line 36
    const-class v0, Lzg8;

    .line 37
    .line 38
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lzg8;->d:Ll15;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lzg8;->c:Lyg8;

    .line 6
    .line 7
    iput-object p1, p0, Lzg8;->a:Landroid/content/Context;

    .line 8
    .line 9
    const-string v0, "usb"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 16
    .line 17
    iput-object p1, p0, Lzg8;->b:Landroid/hardware/usb/UsbManager;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lzg8;->c:Lyg8;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lzg8;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lng8;->f(Landroid/content/Context;Lyg8;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lzg8;->c:Lyg8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized b(Lkg8;Lvz0;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lzg8;->a()V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lyg8;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2}, Lyg8;-><init>(Lzg8;Lkg8;Lvz0;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lzg8;->c:Lyg8;

    .line 11
    .line 12
    iget-object p1, p0, Lzg8;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lng8;->d(Landroid/content/Context;Lyg8;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method
