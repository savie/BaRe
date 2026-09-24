.class public final synthetic Lkb;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lig2;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lt45;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lkb;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lkb;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/Set;

    .line 8
    .line 9
    sget v1, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P:I

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    sget-object p1, Ldz5;->a:Ldz5;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-static {v0, p0, p1}, Ldz5;->o(Lzm;Ljava/util/Set;Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public c(Lga6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    iget-object p0, p0, Lkb;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lj58;

    .line 8
    .line 9
    invoke-interface {p1}, Lga6;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lae4;

    .line 14
    .line 15
    new-instance v1, Lob;

    .line 16
    .line 17
    invoke-direct {v1, v0, p0}, Lob;-><init>(Ljava/util/concurrent/ExecutorService;Lj58;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v1}, Lae4;->a(Lob;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 4
    .line 5
    iget-object p0, p0, Lkb;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/os/CancellationSignal;

    .line 8
    .line 9
    invoke-static {v0, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$todgVpRpq5O2Vis5Z7Mgc5ediXo(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Landroid/os/CancellationSignal;Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
