.class public final synthetic Le52;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt45;


# instance fields
.field public final synthetic a:Lbt3;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbt3;Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le52;->a:Lbt3;

    .line 5
    .line 6
    iput-object p2, p0, Le52;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 7
    .line 8
    iput-object p3, p0, Le52;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(ZZ)V
    .locals 1

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Le52;->a:Lbt3;

    .line 6
    .line 7
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Le52;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    sget-object p0, Ldz5;->a:Ldz5;

    .line 16
    .line 17
    const-string p0, "android.permission.ACCESS_LOCAL_NETWORK"

    .line 18
    .line 19
    invoke-static {p0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-static {p1, p0, p2}, Ldz5;->o(Lzm;Ljava/util/Set;Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object p2, Lzn4;->a:Lzn4;

    .line 36
    .line 37
    iget-object p0, p0, Le52;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1, p0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
