.class public final Lny1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# static fields
.field public static final e:Lly1;

.field public static final f:Lmy1;

.field public static final k:[B


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lly1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lny1;->e:Lly1;

    .line 7
    .line 8
    new-instance v0, Lmy1;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lny1;->f:Lmy1;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    sput-object v0, Lny1;->k:[B

    .line 19
    .line 20
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 135
    iput p1, p0, Lny1;->a:I

    iput-object p2, p0, Lny1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lny1;->c:Ljava/lang/Object;

    iput-object p4, p0, Lny1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lau1;Ljava/lang/annotation/Annotation;Lvq3;)V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lny1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ler4;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Ler4;-><init>(Lq27;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lny1;->d:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v1, Lq14;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lny1;->c:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p2, p0, Lny1;->b:Ljava/lang/Object;

    .line 23
    .line 24
    instance-of p0, p2, Lut2;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    new-instance p0, Lro;

    .line 29
    .line 30
    const-class v1, Lut2;

    .line 31
    .line 32
    const-class v3, Lw13;

    .line 33
    .line 34
    invoke-direct {p0, v0, v1, v3}, Lro;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    instance-of p0, p2, Ljt2;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    new-instance p0, Lro;

    .line 43
    .line 44
    const-class v1, Ljt2;

    .line 45
    .line 46
    const-class v3, Lx13;

    .line 47
    .line 48
    invoke-direct {p0, v0, v1, v3}, Lro;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    instance-of p0, p2, Lpt2;

    .line 53
    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    new-instance p0, Lro;

    .line 57
    .line 58
    const-class v1, Lpt2;

    .line 59
    .line 60
    const-class v3, Ly13;

    .line 61
    .line 62
    invoke-direct {p0, v0, v1, v3}, Lro;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object v0, p0, Lro;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Ljava/lang/Class;

    .line 68
    .line 69
    iget-object p0, p0, Lro;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Ljava/lang/Class;

    .line 72
    .line 73
    const-class v1, Lvq3;

    .line 74
    .line 75
    const-class v3, Lau1;

    .line 76
    .line 77
    filled-new-array {v3, p0, v1}, [Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 93
    .line 94
    .line 95
    :cond_2
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-nez p0, :cond_3

    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    invoke-static {}, Le6;->d()V

    .line 107
    .line 108
    .line 109
    throw v2

    .line 110
    :cond_4
    new-instance p0, Lkd5;

    .line 111
    .line 112
    const-string p1, "Annotation %s is not a union"

    .line 113
    .line 114
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-direct {p0, p1, p2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public constructor <init>(Lca3;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lny1;->a:I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lny1;->c:Ljava/lang/Object;

    .line 128
    iput-object v0, p0, Lny1;->d:Ljava/lang/Object;

    .line 129
    iput-object p1, p0, Lny1;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lro;Lu00;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lny1;->a:I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lny1;->d:Ljava/lang/Object;

    iput-object p2, p0, Lny1;->c:Ljava/lang/Object;

    .line 132
    new-instance p1, Lnf2;

    invoke-direct {p1, p0}, Lnf2;-><init>(Lny1;)V

    .line 133
    new-instance p2, Llf2;

    invoke-direct {p2, p0, p1}, Llf2;-><init>(Lny1;Lnf2;)V

    iput-object p2, p0, Lny1;->b:Ljava/lang/Object;

    const-wide/16 p0, 0x3

    .line 134
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>([B[BLjava/math/BigInteger;Lhr9;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lny1;->a:I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p1, p0, Lny1;->d:Ljava/lang/Object;

    .line 124
    iput-object p3, p0, Lny1;->c:Ljava/lang/Object;

    .line 125
    iput-object p4, p0, Lny1;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/view/View;)Lny1;
    .locals 4

    .line 1
    const v0, 0x7f0a0400

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0a0558

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    new-instance v0, Lny1;

    .line 24
    .line 25
    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    invoke-direct {v0, v3, p0, v1, v2}, Lny1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "Missing required view with ID: "

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public static f(Lca3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "aqs."

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, p2}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string p1, "Failed to persist App Quality Sessions session id."

    .line 21
    .line 22
    const-string p2, "FirebaseCrashlytics"

    .line 23
    .line 24
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public b()[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lny1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ler4;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ler4;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Luq4;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Luq4;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v1}, Luq4;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    new-array p0, p0, [Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, [Ljava/lang/String;

    .line 54
    .line 55
    return-object p0
.end method

.method public c()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lny1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ler4;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ler4;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Luq4;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Luq4;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    new-array p0, p0, [Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, [Ljava/lang/String;

    .line 47
    .line 48
    return-object p0
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Firebase Database encountered an OutOfMemoryError. You may need to reduce the amount of data you are syncing to the client (e.g. by using queries or syncing a deeper path). See https://firebase.google.com/docs/database/ios/structure-data#best_practices_for_data_structure and https://firebase.google.com/docs/database/android/retrieve-data#filtering_data"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Ljava/lang/NoClassDefFoundError;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v0, "A symbol that the Firebase Database SDK depends on failed to load. This usually indicates that your project includes an incompatible version of another Firebase dependency. If updating your dependencies to the latest version does not resolve this issue, please file a report at https://github.com/firebase/firebase-android-sdk"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    instance-of v0, p1, Lxc2;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const-string v0, "Uncaught exception in Firebase Database runloop (22.0.1). If you are not already on the latest version of the Firebase SDKs, try updating your dependencies. Should this problem persist, please file a report at https://github.com/firebase/firebase-android-sdk"

    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lny1;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lu00;

    .line 27
    .line 28
    invoke-virtual {v1, v0, p1}, Lu00;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroid/os/Handler;

    .line 32
    .line 33
    iget-object v2, p0, Lny1;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Lro;

    .line 36
    .line 37
    iget-object v2, v2, Lro;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lvb;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v2, v3, v0, p1}, Lvb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lny1;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Llf2;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lny1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lq14;

    .line 4
    .line 5
    invoke-virtual {p0}, Lq14;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Luq4;

    .line 20
    .line 21
    invoke-interface {v1}, Luq4;->isInline()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    xor-int/lit8 p0, p0, 0x1

    .line 34
    .line 35
    return p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lny1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lny1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lny1;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :sswitch_0
    iget-object p0, p0, Lny1;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/lang/annotation/Annotation;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :sswitch_1
    iget-object p0, p0, Lny1;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lri2;

    .line 23
    .line 24
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "creator for %s"

    .line 29
    .line 30
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
