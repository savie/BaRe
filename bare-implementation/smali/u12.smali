.class public final synthetic Lu12;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu12;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu12;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lu12;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lu12;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 9
    .line 10
    sget-object v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lw44;->c:Lx44;

    .line 17
    .line 18
    iget-object v0, v0, Lx44;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->e(ZZ)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p0, p0, Lw44;->c:Lx44;

    .line 32
    .line 33
    iget-object p0, p0, Lx44;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 36
    .line 37
    invoke-virtual {p0, v2, v2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->d(ZZZ)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    check-cast p0, Lpg3;

    .line 42
    .line 43
    invoke-virtual {p0}, Lpg3;->a()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_1
    check-cast p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 48
    .line 49
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->$r8$lambda$naIOWdCKAquvY5mpM041Fb8tbi4(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
