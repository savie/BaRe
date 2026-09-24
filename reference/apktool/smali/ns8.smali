.class public final synthetic Lns8;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# static fields
.field public static final a:Lns8;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lns8;

    .line 2
    .line 3
    const-string v4, "currentWifiAccessSnapshot()Lorg/swiftapps/swiftbackup/wifi/device/WifiAccessSnapshot;"

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const-class v2, Lms8;

    .line 8
    .line 9
    const-string v3, "currentWifiAccessSnapshot"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lcu3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lns8;->a:Lns8;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance p0, Lqr8;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    sget-boolean v1, Lmp6;->g:Z

    .line 6
    .line 7
    sget-object v2, Lqe7;->a:Lgv7;

    .line 8
    .line 9
    invoke-static {}, Lle7;->f()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {}, Lqe7;->b()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {p0, v0, v1, v2, v3}, Lqr8;-><init>(IZZZ)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method
