.class public final enum Lcom/microsoft/identity/common/java/dto/CredentialType;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/dto/CredentialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/dto/CredentialType;

.field public static final enum AccessToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

.field public static final enum AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/java/dto/CredentialType;

.field public static final ID_TOKEN_TYPES:Ljava/util/List;

.field public static final enum IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

.field public static final enum PrimaryRefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

.field public static final enum RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

.field public static final enum V1IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 2
    .line 3
    const-string v1, "RefreshToken"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 10
    .line 11
    new-instance v1, Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 12
    .line 13
    const-string v2, "AccessToken"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 20
    .line 21
    new-instance v2, Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 22
    .line 23
    const-string v3, "IdToken"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/microsoft/identity/common/java/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 30
    .line 31
    new-instance v3, Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 32
    .line 33
    const-string v4, "V1IdToken"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/microsoft/identity/common/java/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 40
    .line 41
    new-instance v4, Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 42
    .line 43
    const-string v5, "Password"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 50
    .line 51
    const-string v6, "Cookie"

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 58
    .line 59
    const-string v7, "Certificate"

    .line 60
    .line 61
    const/4 v8, 0x6

    .line 62
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    new-instance v7, Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 66
    .line 67
    const-string v8, "AccessToken_With_AuthScheme"

    .line 68
    .line 69
    const/4 v9, 0x7

    .line 70
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    sput-object v7, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 74
    .line 75
    new-instance v8, Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 76
    .line 77
    const-string v9, "PrimaryRefreshToken"

    .line 78
    .line 79
    const/16 v10, 0x8

    .line 80
    .line 81
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    sput-object v8, Lcom/microsoft/identity/common/java/dto/CredentialType;->PrimaryRefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 85
    .line 86
    filled-new-array/range {v0 .. v8}, [Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Lcom/microsoft/identity/common/java/dto/CredentialType;->$VALUES:[Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 91
    .line 92
    filled-new-array {v2, v3}, [Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lcom/microsoft/identity/common/java/dto/CredentialType;->ID_TOKEN_TYPES:Ljava/util/List;

    .line 105
    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/CredentialType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static valueSet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/microsoft/identity/common/java/dto/CredentialType;->values()[Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_0

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/dto/CredentialType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/dto/CredentialType;->$VALUES:[Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/dto/CredentialType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 8
    .line 9
    return-object v0
.end method
