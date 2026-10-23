.class final Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager$DefaultValueFlightsProvider;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;


# static fields
.field public static final INSTANCE:Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager$DefaultValueFlightsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager$DefaultValueFlightsProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager$DefaultValueFlightsProvider;->INSTANCE:Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager$DefaultValueFlightsProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getBooleanValue(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->getDefaultValue()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getIntValue(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->getDefaultValue()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager$DefaultValueFlightsProvider;->getBooleanValue(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method
