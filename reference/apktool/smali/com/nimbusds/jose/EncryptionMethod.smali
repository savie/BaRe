.class public final Lcom/nimbusds/jose/EncryptionMethod;
.super Lcom/nimbusds/jose/Algorithm;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/EncryptionMethod$Family;
    }
.end annotation


# static fields
.field public static final A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final XC20P:Lcom/nimbusds/jose/EncryptionMethod;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cekBitLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    .line 2
    .line 3
    sget-object v1, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    .line 4
    .line 5
    const-string v2, "A128CBC-HS256"

    .line 6
    .line 7
    const/16 v3, 0x100

    .line 8
    .line 9
    invoke-direct {v0, v2, v1, v3}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    .line 13
    .line 14
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    .line 15
    .line 16
    sget-object v2, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    .line 17
    .line 18
    const/16 v4, 0x180

    .line 19
    .line 20
    const-string v5, "A192CBC-HS384"

    .line 21
    .line 22
    invoke-direct {v0, v5, v2, v4}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    .line 26
    .line 27
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    .line 28
    .line 29
    const-string v4, "A256CBC-HS512"

    .line 30
    .line 31
    const/16 v5, 0x200

    .line 32
    .line 33
    invoke-direct {v0, v4, v1, v5}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    .line 37
    .line 38
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    .line 39
    .line 40
    const-string v1, "A128CBC+HS256"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 46
    .line 47
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    .line 48
    .line 49
    const-string v1, "A256CBC+HS512"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2, v5}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 55
    .line 56
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    .line 57
    .line 58
    sget-object v1, Lcom/nimbusds/jose/Requirement;->RECOMMENDED:Lcom/nimbusds/jose/Requirement;

    .line 59
    .line 60
    const/16 v4, 0x80

    .line 61
    .line 62
    const-string v5, "A128GCM"

    .line 63
    .line 64
    invoke-direct {v0, v5, v1, v4}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 68
    .line 69
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    .line 70
    .line 71
    const-string v4, "A192GCM"

    .line 72
    .line 73
    const/16 v5, 0xc0

    .line 74
    .line 75
    invoke-direct {v0, v4, v2, v5}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 79
    .line 80
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    .line 81
    .line 82
    const-string v4, "A256GCM"

    .line 83
    .line 84
    invoke-direct {v0, v4, v1, v3}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 88
    .line 89
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    .line 90
    .line 91
    const-string v1, "XC20P"

    .line 92
    .line 93
    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->XC20P:Lcom/nimbusds/jose/EncryptionMethod;

    .line 97
    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/Algorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength:I

    .line 5
    .line 6
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/EncryptionMethod;
    .locals 2

    .line 1
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_6
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_7
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->XC20P:Lcom/nimbusds/jose/EncryptionMethod;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_8

    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_8
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-object v0
.end method


# virtual methods
.method public cekBitLength()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength:I

    .line 2
    .line 3
    return p0
.end method
