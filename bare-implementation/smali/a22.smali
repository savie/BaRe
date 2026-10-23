.class public final synthetic La22;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lt22;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lt22;I)V
    .locals 0

    .line 1
    iput p3, p0, La22;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La22;->b:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iput-object p2, p0, La22;->c:Lt22;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, La22;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La22;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iget-object p0, p0, La22;->c:Lt22;

    .line 9
    .line 10
    invoke-static {v0, p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$xgrl6ZZEG6yNGAU_HQNbfaxXN8I(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    iget-object v0, p0, La22;->b:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    iget-object p0, p0, La22;->c:Lt22;

    .line 18
    .line 19
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$zkGnpDDNsVFwHCJOiX-5XJVtI70(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
