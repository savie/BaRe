.class public final Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lx22;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

.field public static final MIN_GMS_APK_VERSION:I = 0xdc1f545

.field public static final MIN_GMS_APK_VERSION_DIGITAL_CRED:I = 0xe7d6960

.field public static final MIN_GMS_APK_VERSION_RESTORE_CRED:I = 0xe6fadc0

.field public static final MIN_GMS_APK_VERSION_SIGNAL_API:I = 0xf2d44e8

.field public static final PRE_U_MIN_GMS_APK_VERSION:I = 0xf0b5180

.field private static final TAG:Ljava/lang/String; = "PlayServicesImpl"


# instance fields
.field private final context:Landroid/content/Context;

.field private googleApiAvailability:Llz3;


# direct methods
.method public static synthetic $r8$lambda$1UTL-i4hwhJk_BYM4Zcx0ZRJ19w(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$6(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$27hAKj8hhFiHQnNA1lTKsiG-Oxw(Lt22;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$0$0$0(Lt22;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$AS0yfz0pVQO1Ewzm5zGeHqWtm6I(Lt22;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$2$0$0$0(Lt22;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$CkXA6uyZF5r3Uy4uE_kF2MrG3TY(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Void;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$0(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Void;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$EfEsA0oxTYc7AqOZZSNy2cLCz-o(Lt22;Llh6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$3$0$0(Lt22;Llh6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$I96JcpYfaG8OJdM-2J7UmFIJHiE(Ljava/lang/Exception;Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$2$0$0(Ljava/lang/Exception;Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$KPnyPsbzUo0kEQwputkdgA68I1Y(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$2(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$NFvwqGaQl8vK3ul8X_0RI454oIM(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$0(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$NQbSk4pvJcM237tlhW3qXRMIF0Y(Lp32;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$5(Lmt3;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$VsxIaY9CMEklHrOXk5cdkiRsqcE(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$0$0(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$Z8tlc7Lp2cNhbHTy0dCxp0FF7rQ(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$3(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ZmeORH0b9a1FJ17DY04w0WU6DDE(Lt22;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$1$0$0(Lt22;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$_y5WH3MEXM44F4UiflADvlnUoCA(Ljava/util/concurrent/Executor;Lt22;Llh6;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$3$0(Ljava/util/concurrent/Executor;Lt22;Llh6;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$deaEx7cFJz8WB4dww9fPUSax2YE(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$4$0(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$e26-TJ45BetGQtJZIcAQ5s9rm3c(Lt22;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onGetCredential$lambda$1$0(Lt22;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$eKxW_gs1lUPICybr1syVFaQsVp0(Lt22;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$4$0$0(Lt22;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$hCjUIdJpkFZZ_R4jPEVDfW9xTXk(Lt22;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$0$0(Lt22;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$mCecmz7sSDa7vQZdPoDQHAX0H3U(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$1$0(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$nLqf08e3fIgSrrhjRatjutfw5fE(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Lg91;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$4(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Lg91;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$pdpGIYvPEfq-hpYnJSMZXGd3BSQ(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Boolean;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$1(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Boolean;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$v2_cK85gsZZQw32xnN1qU13GbKQ(Lt22;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onGetCredential$lambda$0$0(Lt22;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$v5kLi_w59Ybz8Cu6DmJc3hm3YW4(Lt22;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onCreateCredential$lambda$0$0(Lt22;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$wBiSTxUbOhG0ep8ucfM6ivfiSz8(Lu32;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$2(Lmt3;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$wNyRQU4FRR3qZkFIXqBcIQRWXcc(Lt32;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$1(Lmt3;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$xgrl6ZZEG6yNGAU_HQNbfaxXN8I(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onGetCredential$lambda$1(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$xrkLPQ171M9o-LLsi3Kz8A_1kSE(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onGetCredential$lambda$0(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->context:Landroid/content/Context;

    .line 8
    .line 9
    sget-object p1, Llz3;->d:Llz3;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->googleApiAvailability:Llz3;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic getGoogleApiAvailability$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final isGooglePlayServicesAvailable(Landroid/content/Context;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->googleApiAvailability:Llz3;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lmz3;->c(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static final onClearCredential$lambda$0(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 2

    .line 1
    new-instance v0, Lj70;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p1, v1}, Lj70;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lbe8;->a:Lbe8;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final onClearCredential$lambda$0$0(Lt22;)V
    .locals 1

    .line 1
    new-instance v0, Ld91;

    .line 2
    .line 3
    invoke-direct {v0}, Ld91;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final onClearCredential$lambda$1(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Boolean;)Lbe8;
    .locals 2

    .line 1
    sget-object p3, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    .line 2
    .line 3
    new-instance v0, Lc22;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, p1, p2, v1}, Lc22;-><init>(Ljava/util/concurrent/Executor;Lt22;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lbe8;->a:Lbe8;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final onClearCredential$lambda$1$0(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 2

    .line 1
    const-string v0, "PlayServicesImpl"

    .line 2
    .line 3
    const-string v1, "Cleared restore credential successfully!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ls32;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p1, v1}, Ls32;-><init>(Lt22;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lbe8;->a:Lbe8;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final onClearCredential$lambda$1$0$0(Lt22;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lt22;->onResult(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final onClearCredential$lambda$2(Lmt3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onClearCredential$lambda$3(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "PlayServicesImpl"

    .line 5
    .line 6
    const-string v1, "Clearing restore credential failed"

    .line 7
    .line 8
    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    new-instance v0, Llh6;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lh91;

    .line 17
    .line 18
    const-string v2, "Clear restore credential failed for unknown reason."

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lh91;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Llh6;->a:Ljava/lang/Object;

    .line 24
    .line 25
    instance-of v1, p3, Lre;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    check-cast p3, Lre;

    .line 30
    .line 31
    invoke-virtual {p3}, Lre;->getStatusCode()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    const v1, 0x9d09

    .line 36
    .line 37
    .line 38
    if-ne p3, v1, :cond_0

    .line 39
    .line 40
    new-instance p3, Lh91;

    .line 41
    .line 42
    const-string v1, "The restore credential internal service had a failure."

    .line 43
    .line 44
    invoke-direct {p3, v1}, Lh91;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object p3, v0, Llh6;->a:Ljava/lang/Object;

    .line 48
    .line 49
    :cond_0
    sget-object p3, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    .line 50
    .line 51
    new-instance v1, Lm32;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-direct {v1, p1, p2, v0, v2}, Lm32;-><init>(Ljava/util/concurrent/Executor;Lt22;Llh6;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p0, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static final onClearCredential$lambda$3$0(Ljava/util/concurrent/Executor;Lt22;Llh6;)Lbe8;
    .locals 2

    .line 1
    new-instance v0, Lzu1;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1, p1, p2}, Lzu1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lbe8;->a:Lbe8;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final onClearCredential$lambda$3$0$0(Lt22;Llh6;)V
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

.method private static final onClearCredential$lambda$4(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Lg91;)Lbe8;
    .locals 2

    .line 1
    sget-object p3, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    .line 2
    .line 3
    new-instance v0, Ly2;

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    invoke-direct {v0, v1, p1, p2}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lbe8;->a:Lbe8;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final onClearCredential$lambda$4$0(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 2

    .line 1
    const-string v0, "PlayServicesImpl"

    .line 2
    .line 3
    const-string v1, "During clear credential, signed out successfully!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Lz12;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p1, v1}, Lz12;-><init>(Lt22;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lbe8;->a:Lbe8;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final onClearCredential$lambda$4$0$0(Lt22;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lt22;->onResult(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final onClearCredential$lambda$5(Lmt3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onClearCredential$lambda$6(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p5, "PlayServicesImpl"

    .line 5
    .line 6
    const-string v0, "GMS Clear credential flow failed, calling fallback"

    .line 7
    .line 8
    invoke-static {p5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow(Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final onCreateCredential$lambda$0(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 2

    .line 1
    new-instance v0, Lr32;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Lr32;-><init>(Lt22;I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lbe8;->a:Lbe8;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final onCreateCredential$lambda$0$0(Lt22;)V
    .locals 2

    .line 1
    new-instance v0, Lg12;

    .line 2
    .line 3
    const-string v1, "createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lg12;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final onGetCredential$lambda$0(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 2

    .line 1
    new-instance v0, Ls32;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Ls32;-><init>(Lt22;I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lbe8;->a:Lbe8;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final onGetCredential$lambda$0$0(Lt22;)V
    .locals 2

    .line 1
    new-instance v0, Lyv3;

    .line 2
    .line 3
    const-string v1, "this device requires a Google Play Services update for the given feature to be supported"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyv3;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final onGetCredential$lambda$1(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 2

    .line 1
    new-instance v0, Lr32;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lr32;-><init>(Lt22;I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lbe8;->a:Lbe8;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final onGetCredential$lambda$1$0(Lt22;)V
    .locals 2

    .line 1
    new-instance v0, Lyv3;

    .line 2
    .line 3
    const-string v1, "getCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyv3;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final onSignalCredentialState$lambda$0(Lt22;)V
    .locals 3

    .line 1
    new-instance v0, Lnf7;

    .line 2
    .line 3
    const-string v1, "this device requires a Google Play Services update for the given feature to be supported"

    .line 4
    .line 5
    const-string v2, "androidx.credentials.SignalCredentialStateException.TYPE_PROVIDER_CONFIGURATION"

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final runFallbackClearCredFlow(Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf91;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Lt22;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lxx3;->k(Landroid/content/Context;)Lu29;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p1, Lkz3;->a:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "com.google.android.gms.signin"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Li19;->b:Ljava/util/Set;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-static {}, Lpz3;->a()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lr19;->a()Lby7;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lsz8;->c:Ly53;

    .line 49
    .line 50
    filled-new-array {v1}, [Ly53;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v0, Lby7;->c:[Ly53;

    .line 55
    .line 56
    new-instance v1, Lfu;

    .line 57
    .line 58
    invoke-direct {v1, p1}, Lfu;-><init>(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, v0, Lby7;->a:Lyi6;

    .line 62
    .line 63
    iput-boolean v2, v0, Lby7;->b:Z

    .line 64
    .line 65
    const/16 v1, 0x612

    .line 66
    .line 67
    iput v1, v0, Lby7;->d:I

    .line 68
    .line 69
    invoke-virtual {v0}, Lby7;->a()Lr19;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1, v1, v0}, Lkz3;->b(ILr19;)Lcom/google/android/gms/tasks/Task;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v0, Lt32;

    .line 79
    .line 80
    invoke-direct {v0, p2, p3, p4}, Lt32;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lgb;

    .line 84
    .line 85
    const/4 v2, 0x4

    .line 86
    invoke-direct {v1, v0, v2}, Lgb;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v0, Lwr0;

    .line 94
    .line 95
    invoke-direct {v0, p0, p2, p3, p4}, Lwr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Li19;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lx5;->e()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw p0
.end method

.method private static final runFallbackClearCredFlow$lambda$0(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Void;)Lbe8;
    .locals 2

    .line 1
    sget-object p3, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    .line 2
    .line 3
    new-instance v0, Lo20;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-direct {v0, v1, p1, p2}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lbe8;->a:Lbe8;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final runFallbackClearCredFlow$lambda$0$0(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 2

    .line 1
    const-string v0, "PlayServicesImpl"

    .line 2
    .line 3
    const-string v1, "During clear credential, signed out successfully!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Li41;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p1, v1}, Li41;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lbe8;->a:Lbe8;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final runFallbackClearCredFlow$lambda$0$0$0(Lt22;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lt22;->onResult(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final runFallbackClearCredFlow$lambda$1(Lmt3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final runFallbackClearCredFlow$lambda$2(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    .line 5
    .line 6
    new-instance v0, Ly10;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {v0, v1, p4, p2, p3}, Ly10;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final runFallbackClearCredFlow$lambda$2$0$0(Ljava/lang/Exception;Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "During clear credential sign out failed with "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "PlayServicesImpl"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Lc32;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, p2, p0, v1}, Lc32;-><init>(Lt22;Ljava/lang/Exception;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lbe8;->a:Lbe8;

    .line 30
    .line 31
    return-object p0
.end method

.method private static final runFallbackClearCredFlow$lambda$2$0$0$0(Lt22;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    new-instance v0, Lh91;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lh91;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getGoogleApiAvailability()Llz3;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->googleApiAvailability:Llz3;

    .line 2
    .line 3
    return-object p0
.end method

.method public isAvailableOnDevice()Z
    .locals 1

    const v0, 0xdc1f545

    .line 40
    invoke-virtual {p0, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    move-result p0

    return p0
.end method

.method public final isAvailableOnDevice(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    new-instance v0, Lhs1;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p0, v1, v1}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Connection with Google Play Services was not successful. Connection result is: "

    .line 23
    .line 24
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "PlayServicesImpl"

    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    return p1
.end method

.method public onClearCredential(Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf91;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Lt22;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth(Landroid/os/CancellationSignal;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p1, Lf91;->a:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x3

    .line 28
    sget-object v7, Lme;->g:Lle;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    const v1, 0xe6fadc0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    new-instance p0, Lqf;

    .line 42
    .line 43
    const/16 p1, 0xa

    .line 44
    .line 45
    invoke-direct {p0, p1, p3, p4}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2, p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iget-object v4, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->context:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v3, Lle4;

    .line 58
    .line 59
    sget-object v8, Ljz3;->c:Ljz3;

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    sget-object v6, Lle4;->k:Loe;

    .line 63
    .line 64
    invoke-direct/range {v3 .. v8}, Lkz3;-><init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V

    .line 65
    .line 66
    .line 67
    new-instance p0, Lm91;

    .line 68
    .line 69
    iget-object p1, p1, Lf91;->b:Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-direct {p0, p1}, Lm91;-><init>(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lr19;->a()Lby7;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object v0, Ljb9;->J:Ly53;

    .line 79
    .line 80
    filled-new-array {v0}, [Ly53;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p1, Lby7;->c:[Ly53;

    .line 85
    .line 86
    new-instance v0, Ljq6;

    .line 87
    .line 88
    const/16 v1, 0xd

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljq6;-><init>(I)V

    .line 91
    .line 92
    .line 93
    iput-object p0, v0, Ljq6;->b:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v0, p1, Lby7;->a:Lyi6;

    .line 96
    .line 97
    const/16 p0, 0x69e

    .line 98
    .line 99
    iput p0, p1, Lby7;->d:I

    .line 100
    .line 101
    invoke-virtual {p1}, Lby7;->a()Lr19;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const/4 p1, 0x0

    .line 106
    invoke-virtual {v3, p1, p0}, Lkz3;->b(ILr19;)Lcom/google/android/gms/tasks/Task;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance p1, Lu32;

    .line 114
    .line 115
    invoke-direct {p1, p2, p3, p4}, Lu32;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lgb;

    .line 119
    .line 120
    invoke-direct {v0, p1, v2}, Lgb;-><init>(Ljava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    new-instance p1, Ll02;

    .line 128
    .line 129
    invoke-direct {p1, p2, p3, p4}, Ll02;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_2
    const v0, 0xf0b5180

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    iget-object v4, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->context:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    new-instance v3, Lhe4;

    .line 155
    .line 156
    sget-object v8, Ljz3;->c:Ljz3;

    .line 157
    .line 158
    const/4 v5, 0x0

    .line 159
    sget-object v6, Lhe4;->k:Loe;

    .line 160
    .line 161
    invoke-direct/range {v3 .. v8}, Lkz3;-><init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Le91;

    .line 165
    .line 166
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-static {}, Lr19;->a()Lby7;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    sget-object v4, Lcy0;->g:Ly53;

    .line 174
    .line 175
    filled-new-array {v4}, [Ly53;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    iput-object v4, v1, Lby7;->c:[Ly53;

    .line 180
    .line 181
    new-instance v4, Lzq8;

    .line 182
    .line 183
    const/16 v5, 0x14

    .line 184
    .line 185
    invoke-direct {v4, v0, v5}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 186
    .line 187
    .line 188
    iput-object v4, v1, Lby7;->a:Lyi6;

    .line 189
    .line 190
    const/16 v0, 0x7fc4

    .line 191
    .line 192
    iput v0, v1, Lby7;->d:I

    .line 193
    .line 194
    invoke-virtual {v1}, Lby7;->a()Lr19;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const/4 v1, 0x1

    .line 199
    invoke-virtual {v3, v1, v0}, Lkz3;->b(ILr19;)Lcom/google/android/gms/tasks/Task;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    new-instance v1, Lp32;

    .line 207
    .line 208
    invoke-direct {v1, p2, p3, p4}, Lp32;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V

    .line 209
    .line 210
    .line 211
    new-instance v3, Lrn1;

    .line 212
    .line 213
    invoke-direct {v3, v1, v2}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    new-instance v1, Lq32;

    .line 221
    .line 222
    move-object v2, p0

    .line 223
    move-object v3, p1

    .line 224
    move-object v4, p2

    .line 225
    move-object v5, p3

    .line 226
    move-object v6, p4

    .line 227
    invoke-direct/range {v1 .. v6}, Lq32;-><init>(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_3
    move-object v2, p0

    .line 239
    move-object v3, p1

    .line 240
    move-object v4, p2

    .line 241
    move-object v5, p3

    .line 242
    move-object v6, p4

    .line 243
    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow(Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method public onCreateCredential(Landroid/content/Context;Li12;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Li12;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Lt22;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    .line 14
    .line 15
    invoke-virtual {v0, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth(Landroid/os/CancellationSignal;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    instance-of v0, p2, Le22;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const v0, 0xf0b5180

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    check-cast p2, Le22;

    .line 36
    .line 37
    sget-object p0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->Companion:Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController$Companion;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController$Companion;->getInstance(Landroid/content/Context;)Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->invokePlayServices(Le22;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    sget-object p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->Companion:Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$Companion;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$Companion;->getInstance(Landroid/content/Context;)Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p2, Le22;

    .line 54
    .line 55
    invoke-virtual {p0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices(Le22;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    const-string p0, "Create Credential request is unsupported, not password or publickeycredential"

    .line 60
    .line 61
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onGetCredential(Landroid/content/Context;Lq56;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 0

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public onGetCredential(Landroid/content/Context;Lzv3;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lzv3;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Lt22;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    .line 14
    .line 15
    invoke-virtual {v0, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth(Landroid/os/CancellationSignal;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->isDigitalCredentialRequest$credentials_play_services_auth(Lzv3;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const v1, 0xe7d6960

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    new-instance p0, Lc22;

    .line 39
    .line 40
    invoke-direct {p0, p4, p5, v2}, Lc22;-><init>(Ljava/util/concurrent/Executor;Lt22;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p3, p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance p0, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;

    .line 48
    .line 49
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->invokePlayServices(Lzv3;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->isGetRestoreCredentialRequest$credentials_play_services_auth(Lzv3;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    const v1, 0xe6fadc0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_3

    .line 70
    .line 71
    new-instance p0, La22;

    .line 72
    .line 73
    invoke-direct {p0, p4, p5, v2}, La22;-><init>(Ljava/util/concurrent/Executor;Lt22;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p3, p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    new-instance p0, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;

    .line 81
    .line 82
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;->invokePlayServices(Lzv3;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    const v1, 0xf0b5180

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_5

    .line 97
    .line 98
    new-instance p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;

    .line 99
    .line 100
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->invokePlayServices(Lzv3;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    invoke-virtual {v0, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->isGetSignInIntentRequest$credentials_play_services_auth(Lzv3;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_6

    .line 112
    .line 113
    new-instance p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 114
    .line 115
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices(Lzv3;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_6
    new-instance p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 123
    .line 124
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->invokePlayServices(Lzv3;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public onPrepareCredential(Lzv3;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSignalCredentialState(Lpf7;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf7;",
            "Ljava/util/concurrent/Executor;",
            "Lt22;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public final setGoogleApiAvailability(Llz3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->googleApiAvailability:Llz3;

    .line 5
    .line 6
    return-void
.end method
