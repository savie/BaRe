.class public final Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;
.super Landroidx/credentials/playservices/controllers/CredentialProviderController;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/credentials/playservices/controllers/CredentialProviderController<",
        "Lpf7;",
        "Lof7;",
        "Lqf7;",
        "Lrf7;",
        "Lcm1;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;

.field public static final MAX_RETRY_TIME:J = 0x927c0L

.field public static final RATE_LIMIT_EXCEPTION_MESSAGE_MATCHER:Ljava/lang/String; = "called too frequently"

.field public static final SIGNAL_REQUEST_JSON_KEY:Ljava/lang/String; = "androidx.credentials.signal_request_json_key"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$KrTtx6vXoS47G4MDU3Ul3ZfTkJ4(Lt22;Lrf7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->invokePlayServices$lambda$0$1(Lt22;Lrf7;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$a1iprMjAVocEOB93f2u-yyTumBs(Lt22;Llh6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->invokePlayServices$lambda$2$0(Lt22;Llh6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$b3puoOwGj3hPeeVU7q4sQGzSAjA(Lt22;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->invokePlayServices$lambda$0$0(Lt22;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->Companion:Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController;-><init>(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->context:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->Companion:Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;->getInstance(Landroid/content/Context;)Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static final invokePlayServices$lambda$0(Ljava/util/concurrent/Executor;Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;Lt22;Lqf7;)Lbe8;
    .locals 2

    .line 1
    sget-object v0, Lbe8;->a:Lbe8;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    new-instance p1, Lis;

    .line 6
    .line 7
    const/16 p3, 0xa

    .line 8
    .line 9
    invoke-direct {p1, p2, p3}, Lis;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p1, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->convertResponseToCredentialManager(Lqf7;)Lrf7;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p3, Lav1;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-direct {p3, v1, p2, p1}, Lav1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method private static final invokePlayServices$lambda$0$0(Lt22;)V
    .locals 3

    .line 1
    sget v0, Lcm1;->a:I

    .line 2
    .line 3
    new-instance v0, Lsf7;

    .line 4
    .line 5
    const-string v1, "androidx.credentials.SignalCredentialStateException.TYPE_UNKNOWN"

    .line 6
    .line 7
    const-string v2, "No SignalCredentialStateResponse received"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final invokePlayServices$lambda$0$1(Lt22;Lrf7;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lt22;->onResult(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokePlayServices$lambda$1(Lmt3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokePlayServices$lambda$2(Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Llh6;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget v1, Lcm1;->a:I

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lsf7;

    .line 16
    .line 17
    const-string v3, "androidx.credentials.SignalCredentialStateException.TYPE_UNKNOWN"

    .line 18
    .line 19
    invoke-direct {v2, v3, v1}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v2, v0, Llh6;->a:Ljava/lang/Object;

    .line 23
    .line 24
    instance-of v1, p2, Lre;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    move-object v1, p2

    .line 29
    check-cast v1, Lre;

    .line 30
    .line 31
    invoke-virtual {v1}, Lre;->getStatusCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/16 v2, 0x10

    .line 36
    .line 37
    if-ne v1, v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    const-string v2, "called too frequently"

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-static {v1, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    if-ne v1, v2, :cond_0

    .line 54
    .line 55
    new-instance v1, Lmf7;

    .line 56
    .line 57
    sget-object v2, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->Companion:Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;->parseRefillMinutesRegex(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string v2, "androidx.credentials.SignalCredentialStateException.RATE_LIMIT_EXCEEDED"

    .line 71
    .line 72
    invoke-direct {v1, v2, p2}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object v1, v0, Llh6;->a:Ljava/lang/Object;

    .line 76
    .line 77
    :cond_0
    new-instance p2, Lp12;

    .line 78
    .line 79
    const/4 v1, 0x6

    .line 80
    invoke-direct {p2, v1, p1, v0}, Lp12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private static final invokePlayServices$lambda$2$0(Lt22;Llh6;)V
    .locals 0

    .line 1
    iget-object p1, p1, Llh6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lt22;->onError(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic convertRequestToPlayServices(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->convertRequestToPlayServices(Lpf7;)Lof7;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {}, Le6;->d()V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public convertRequestToPlayServices(Lpf7;)Lof7;
    .locals 0

    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public bridge synthetic convertResponseToCredentialManager(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lqf7;

    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->convertResponseToCredentialManager(Lqf7;)Lrf7;

    move-result-object p0

    return-object p0
.end method

.method public convertResponseToCredentialManager(Lqf7;)Lrf7;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lrf7;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public synthetic invokePlayServices(Ljava/lang/Object;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->invokePlayServices(Lpf7;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Le6;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public invokePlayServices(Lpf7;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf7;",
            "Lt22;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 12
    throw p0
.end method
