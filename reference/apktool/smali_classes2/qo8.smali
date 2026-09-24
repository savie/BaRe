.class public final synthetic Lqo8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqo8;->a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lqo8;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    sget p1, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->W:I

    .line 2
    .line 3
    iget-object p1, p0, Lqo8;->a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->Y()Lpp8;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lqo8;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p2, "KEY_SAVED_UNSUPPORTED_LAUNCHER"

    .line 18
    .line 19
    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "editor"

    .line 28
    .line 29
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method
