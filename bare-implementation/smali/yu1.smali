.class public final synthetic Lyu1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyu1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lyu1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyu1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 4
    .line 5
    iget-object p0, p0, Lyu1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/os/CancellationSignal;

    .line 8
    .line 9
    invoke-static {v0, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$X7C_ZlfIYxWiFWlSmjScArT1Nl0(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Landroid/os/CancellationSignal;Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
