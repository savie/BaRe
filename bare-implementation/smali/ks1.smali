.class public final Lks1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lks1;


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
    sput-object v0, Lks1;->a:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lhs9;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lhs9;Ljava/util/concurrent/Executor;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string p2, "com.google.android.gms"

    .line 13
    .line 14
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {p1}, Lkw8;->a(Landroid/content/Context;)Lbe4;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p2, p2, Lbe4;->b:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p2, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    const/high16 p2, 0x200000

    .line 35
    .line 36
    and-int/2addr p0, p2

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const-string p0, "Attempted to bind to a service in a STOPPED package."

    .line 40
    .line 41
    const-string p1, "ConnectionTracker"

    .line 42
    .line 43
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return v0

    .line 47
    :catch_0
    :cond_1
    :goto_0
    if-nez p5, :cond_2

    .line 48
    .line 49
    const/4 p5, 0x0

    .line 50
    :cond_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 p2, 0x1d

    .line 53
    .line 54
    const/16 v0, 0x1081

    .line 55
    .line 56
    if-lt p0, p2, :cond_3

    .line 57
    .line 58
    if-eqz p5, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1, p3, v0, p5, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p1, p3, p4, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    :goto_1
    return p0
.end method
