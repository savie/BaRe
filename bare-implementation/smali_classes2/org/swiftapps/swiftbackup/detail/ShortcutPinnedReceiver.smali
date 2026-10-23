.class public final Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic b:I


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
    const-string v0, "SPR"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Lgn3;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, v1, p2, p1, p0}, Lgn3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/16 p1, 0xe

    .line 14
    .line 15
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;->a:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p0, p2, v1, v0, p1}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method
