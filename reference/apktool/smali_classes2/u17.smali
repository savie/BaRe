.class public abstract Lu17;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static volatile a:Lz84;

.field public static volatile b:Z

.field public static final c:Ljava/lang/Object;

.field public static final d:Lt17;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu17;->c:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lt17;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lu17;->d:Lt17;

    .line 14
    .line 15
    return-void
.end method

.method public static a()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lu17;->b:Z

    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lke7;

    .line 5
    .line 6
    new-instance v1, Landroid/content/ComponentName;

    .line 7
    .line 8
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 9
    .line 10
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-class v3, Lorg/swiftapps/rootservice/ShizukuAidlService;

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lke7;-><init>(Landroid/content/ComponentName;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "swiftbackup_sba"

    .line 23
    .line 24
    iput-object v1, v0, Lke7;->d:Ljava/lang/String;

    .line 25
    .line 26
    const/16 v1, 0x26c

    .line 27
    .line 28
    iput v1, v0, Lke7;->b:I

    .line 29
    .line 30
    const-string v1, "sba"

    .line 31
    .line 32
    iput-object v1, v0, Lke7;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Lle7;->c(Lke7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object v4, v0

    .line 40
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lu17;->b:Z

    .line 42
    .line 43
    sget-object v0, Lu17;->c:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 46
    .line 47
    .line 48
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 49
    .line 50
    const/16 v6, 0x8

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    const-string v2, "SbaShizukuServiceManager"

    .line 54
    .line 55
    const-string v3, "Failed to bind Shizuku SBA service"

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-static/range {v1 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
