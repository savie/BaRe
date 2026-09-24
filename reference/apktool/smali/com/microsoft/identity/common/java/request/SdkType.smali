.class public final enum Lcom/microsoft/identity/common/java/request/SdkType;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/request/SdkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/request/SdkType;

.field public static final enum ADAL:Lcom/microsoft/identity/common/java/request/SdkType;

.field public static final enum MSAL:Lcom/microsoft/identity/common/java/request/SdkType;

.field public static final enum MSAL_CPP:Lcom/microsoft/identity/common/java/request/SdkType;

.field public static final enum MSAL_XPLAT_LINUX:Lcom/microsoft/identity/common/java/request/SdkType;

.field public static final enum UNKNOWN:Lcom/microsoft/identity/common/java/request/SdkType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/request/SdkType;

    .line 2
    .line 3
    const-string v1, "ADAL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/microsoft/identity/common/java/request/SdkType;->ADAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 10
    .line 11
    new-instance v1, Lcom/microsoft/identity/common/java/request/SdkType;

    .line 12
    .line 13
    const-string v2, "MSAL"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 20
    .line 21
    new-instance v2, Lcom/microsoft/identity/common/java/request/SdkType;

    .line 22
    .line 23
    const-string v3, "MSAL_CPP"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL_CPP:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 30
    .line 31
    new-instance v3, Lcom/microsoft/identity/common/java/request/SdkType;

    .line 32
    .line 33
    const-string v4, "MSAL_XPLAT_LINUX"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL_XPLAT_LINUX:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 40
    .line 41
    new-instance v4, Lcom/microsoft/identity/common/java/request/SdkType;

    .line 42
    .line 43
    const-string v5, "UNKNOWN"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/microsoft/identity/common/java/request/SdkType;->UNKNOWN:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 50
    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/identity/common/java/request/SdkType;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/microsoft/identity/common/java/request/SdkType;->$VALUES:[Lcom/microsoft/identity/common/java/request/SdkType;

    .line 56
    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/request/SdkType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/request/SdkType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/request/SdkType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/request/SdkType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/request/SdkType;->$VALUES:[Lcom/microsoft/identity/common/java/request/SdkType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/request/SdkType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/java/request/SdkType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getProductName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/request/SdkType;->ADAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 2
    .line 3
    if-eq v0, p0, :cond_3

    .line 4
    .line 5
    sget-object v0, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 6
    .line 7
    if-ne v0, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL_CPP:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 11
    .line 12
    if-ne v0, p0, :cond_1

    .line 13
    .line 14
    const-string p0, "MSAL.xplat.Android"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    sget-object v0, Lcom/microsoft/identity/common/java/request/SdkType;->MSAL_XPLAT_LINUX:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 18
    .line 19
    if-ne v0, p0, :cond_2

    .line 20
    .line 21
    const-string p0, "MSAL.xplat.Linux"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    const-string p0, ""

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    :goto_0
    const-string p0, "MSAL.Android"

    .line 28
    .line 29
    return-object p0
.end method
