.class public final synthetic Le80;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le80;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Le80;->b:Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;

    .line 7
    .line 8
    iput-object p3, p0, Le80;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Le80;->d:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le80;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Le80;->d:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, p0, Le80;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Le80;->b:Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;

    .line 8
    .line 9
    invoke-static {v2, p0, v0, v1}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->a(Ljava/lang/String;Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
