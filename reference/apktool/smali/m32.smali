.class public final synthetic Lm32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lt22;

.field public final synthetic d:Llh6;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lt22;Llh6;I)V
    .locals 0

    .line 1
    iput p4, p0, Lm32;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm32;->b:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iput-object p2, p0, Lm32;->c:Lt22;

    .line 6
    .line 7
    iput-object p3, p0, Lm32;->d:Llh6;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lm32;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lm32;->d:Llh6;

    .line 4
    .line 5
    iget-object v2, p0, Lm32;->c:Lt22;

    .line 6
    .line 7
    iget-object p0, p0, Lm32;->b:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$_y5WH3MEXM44F4UiflADvlnUoCA(Ljava/util/concurrent/Executor;Lt22;Llh6;)Lbe8;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    invoke-static {p0, v2, v1}, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;->$r8$lambda$Qr2yod4HQKAhMYR2yqtwdQMONlk(Ljava/util/concurrent/Executor;Lt22;Llh6;)Lbe8;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
