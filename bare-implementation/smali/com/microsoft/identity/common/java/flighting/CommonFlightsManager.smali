.class public final Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final INSTANCE:Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->INSTANCE:Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;

    .line 7
    .line 8
    return-void
.end method

.method public static getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager$DefaultValueFlightsProvider;->INSTANCE:Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager$DefaultValueFlightsProvider;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final getFlightsProviderForTenant(Ljava/lang/String;)Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager$DefaultValueFlightsProvider;->INSTANCE:Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager$DefaultValueFlightsProvider;

    .line 5
    .line 6
    return-object p0
.end method
