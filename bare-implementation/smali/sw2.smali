.class public final Lsw2;
.super Lrs9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final w:Lrw2;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrw2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsw2;->w:Lrw2;

    .line 5
    .line 6
    iput-object p2, p0, Lsw2;->x:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final l()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsw2;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final v()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lsw2;->w:Lrw2;

    .line 12
    .line 13
    invoke-virtual {v2}, Lrw2;->b()Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "request"

    .line 18
    .line 19
    invoke-static {v1, v3, v2}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "state"

    .line 23
    .line 24
    iget-object p0, p0, Lsw2;->x:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1, v2, p0}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v1, "net.openid.appauth.EndSessionResponse"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
