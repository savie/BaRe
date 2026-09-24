.class public final synthetic Lb22;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb22;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lb22;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lb22;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lb22;->d:Ljava/lang/Object;

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
    iget v0, p0, Lb22;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lb22;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lb22;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lb22;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 13
    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    check-cast v1, Luy7;

    .line 17
    .line 18
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, v2, v1}, Lqo3;->j(Ljava/util/ArrayList;Lty7;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lbe8;->a:Lbe8;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_0
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    check-cast v2, Lt22;

    .line 33
    .line 34
    check-cast v1, Ljava/lang/Exception;

    .line 35
    .line 36
    invoke-static {p0, v2, v1}, Landroidx/credentials/playservices/controllers/blockstore/createrestorecredential/CredentialProviderCreateRestoreCredentialController;->$r8$lambda$UocC3QxRDoycxx6BMp6avlxBbe4(Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)Lbe8;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_1
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    check-cast v2, Lt22;

    .line 44
    .line 45
    invoke-static {p0, v2, v1}, Landroidx/credentials/playservices/controllers/CredentialProviderController;->$r8$lambda$79ayB0QihD1PtURqqgQNUCNY1mI(Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Object;)Lbe8;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_2
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    check-cast v2, Lt22;

    .line 53
    .line 54
    check-cast v1, Lf22;

    .line 55
    .line 56
    invoke-static {p0, v2, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$DBCHD8NI2Uy6ofqKR01l45B4FoY(Ljava/util/concurrent/Executor;Lt22;Lf22;)Lbe8;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
