.class public final Lorg/swiftapps/swiftbackup/jobs/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BootReceiver"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/jobs/BootReceiver;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 20
    .line 21
    invoke-direct {p1}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lo37;->b()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->c()V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    const/4 v5, 0x0

    .line 37
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/jobs/BootReceiver;->a:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "Schedule enabled after device boot"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->a()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
