.class public final synthetic Li52;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

.field public final synthetic b:Lmt3;

.field public final synthetic c:Z

.field public final synthetic d:Lbt3;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;Lmt3;ZLbt3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li52;->a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 5
    .line 6
    iput-object p2, p0, Li52;->b:Lmt3;

    .line 7
    .line 8
    iput-boolean p3, p0, Li52;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Li52;->d:Lbt3;

    .line 11
    .line 12
    iput-object p5, p0, Li52;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Li52;->a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 3
    .line 4
    iput-boolean v0, v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->N0:Z

    .line 5
    .line 6
    iget-object v0, p0, Li52;->b:Lmt3;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-interface {v0, v2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget-object v2, Lbe8;->a:Lbe8;

    .line 20
    .line 21
    if-nez v0, :cond_4

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-boolean v0, p0, Li52;->c:Z

    .line 31
    .line 32
    iget-object v3, p0, Li52;->d:Lbt3;

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    sget-object v0, Ldz5;->a:Ldz5;

    .line 37
    .line 38
    const-string v0, "android.permission.ACCESS_LOCAL_NETWORK"

    .line 39
    .line 40
    invoke-static {v0}, Ldz5;->h(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance v4, Le52;

    .line 48
    .line 49
    iget-object p0, p0, Li52;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {v4, v3, v1, p0}, Le52;-><init>(Lbt3;Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    filled-new-array {v0}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v1, v4, p0}, Ldz5;->a(Lzm;Lt45;[Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v2

    .line 62
    :cond_3
    :goto_0
    invoke-interface {v3}, Lbt3;->invoke()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_1
    return-object v2
.end method
