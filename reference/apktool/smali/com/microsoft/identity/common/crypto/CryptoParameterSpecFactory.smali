.class public final Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final flightsProvider:Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

.field private final keyGenParamSpecLegacy:Lcom/microsoft/identity/common/crypto/LegacyKeyGenSpec;

.field private final keyGenParamSpecWithPurposeWrapKey$delegate:Lgv7;

.field private final keyGenParamSpecWithoutPurposeWrapKey$delegate:Lgv7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;->flightsProvider:Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Initialized CryptoParameterSpecFactory - API: "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", flags: [keySpecWithWrapPurposeKey="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 31
    .line 32
    invoke-interface {v0, v2}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ", keySpecWithoutWrapPurposeKey="

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    sget-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 45
    .line 46
    invoke-interface {v0, v2}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ", oaepSupported="

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_OAEP_WITH_SHA_AND_MGF1_PADDING:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 59
    .line 60
    invoke-interface {v0, v2}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x5d

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 77
    .line 78
    const-string v1, "CryptoParameterSpecFactory:init"

    .line 79
    .line 80
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory$keyGenParamSpecWithPurposeWrapKey$2;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory$keyGenParamSpecWithPurposeWrapKey$2;-><init>(Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Lgv7;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;->keyGenParamSpecWithPurposeWrapKey$delegate:Lgv7;

    .line 94
    .line 95
    new-instance v0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory$keyGenParamSpecWithoutPurposeWrapKey$2;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory$keyGenParamSpecWithoutPurposeWrapKey$2;-><init>(Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lgv7;

    .line 101
    .line 102
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;->keyGenParamSpecWithoutPurposeWrapKey$delegate:Lgv7;

    .line 106
    .line 107
    const-string v0, "PKCS1Padding"

    .line 108
    .line 109
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v1, Lcom/microsoft/identity/common/crypto/LegacyKeyGenSpec;

    .line 114
    .line 115
    invoke-direct {v1, p1, v0}, Lcom/microsoft/identity/common/crypto/LegacyKeyGenSpec;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;->keyGenParamSpecLegacy:Lcom/microsoft/identity/common/crypto/LegacyKeyGenSpec;

    .line 119
    .line 120
    return-void
.end method

.method public static final access$getEncryptionPaddingsForKeyGen(Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    const-string v0, "PKCS1Padding"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;->flightsProvider:Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 12
    .line 13
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_OAEP_WITH_SHA_AND_MGF1_PADDING:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 14
    .line 15
    invoke-interface {p0, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const-string p0, "OAEPPadding"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getPrioritizedKeyGenParameterSpecs()Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1c

    .line 9
    .line 10
    iget-object v3, p0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;->flightsProvider:Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 11
    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 15
    .line 16
    invoke-interface {v3, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;->keyGenParamSpecWithPurposeWrapKey$delegate:Lgv7;

    .line 23
    .line 24
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/microsoft/identity/common/crypto/KeyGenSpec;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 34
    .line 35
    invoke-interface {v3, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;->keyGenParamSpecWithoutPurposeWrapKey$delegate:Lgv7;

    .line 42
    .line 43
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/microsoft/identity/common/crypto/KeyGenSpec;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;->keyGenParamSpecLegacy:Lcom/microsoft/identity/common/crypto/LegacyKeyGenSpec;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    sget-object v4, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory$getPrioritizedKeyGenParameterSpecs$1;->INSTANCE:Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory$getPrioritizedKeyGenParameterSpecs$1;

    .line 58
    .line 59
    const/16 v5, 0x1f

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v1, "Key generation specs: "

    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 75
    .line 76
    const-string v1, "CryptoParameterSpecFactory:getPrioritizedKeyGenParameterSpecs"

    .line 77
    .line 78
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v0
.end method
