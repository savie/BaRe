.class public final Liy7;
.super Ljava/util/TimerTask;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Ljy7;


# direct methods
.method public constructor <init>(Ljy7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liy7;->a:Ljy7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Liy7;->a:Ljy7;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljy7;->c()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    return-void
.end method
