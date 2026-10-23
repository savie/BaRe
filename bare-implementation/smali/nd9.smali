.class public final Lnd9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lud9;


# direct methods
.method public synthetic constructor <init>(Lud9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnd9;->a:Lud9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const-string p1, "BillingClientTesting"

    .line 2
    .line 3
    const-string v0, "Billing Override Service connected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lnd9;->a:Lud9;

    .line 9
    .line 10
    sget p1, Ld99;->b:I

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService"

    .line 17
    .line 18
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Le99;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    move-object p1, v0

    .line 27
    check-cast p1, Le99;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, La99;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-direct {v0, p2, p1, v1}, Lvz8;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    move-object p1, v0

    .line 37
    :goto_0
    iput-object p1, p0, Lud9;->E:Le99;

    .line 38
    .line 39
    const/4 p1, 0x2

    .line 40
    iput p1, p0, Lud9;->D:I

    .line 41
    .line 42
    sget p1, Lzd9;->a:I

    .line 43
    .line 44
    sget-object p1, Lwo9;->b:Lwo9;

    .line 45
    .line 46
    const/16 p2, 0x1a

    .line 47
    .line 48
    invoke-static {p2, p1}, Lzd9;->c(ILwo9;)Lno9;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p2, "ApiSuccess should not be null"

    .line 53
    .line 54
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Ldq0;->h:Ll39;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    :try_start_0
    iget-object p2, p0, Ll39;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p2, Lhp9;

    .line 65
    .line 66
    invoke-virtual {p0, p1, p2}, Ll39;->x(Lno9;Lhp9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    const-string p1, "BillingLogger"

    .line 72
    .line 73
    const-string p2, "Unable to log."

    .line 74
    .line 75
    invoke-static {p1, p2, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "BillingClientTesting"

    .line 2
    .line 3
    const-string v0, "Billing Override Service disconnected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lnd9;->a:Lud9;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lud9;->E:Le99;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lud9;->D:I

    .line 15
    .line 16
    return-void
.end method
