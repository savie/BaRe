.class public final Lcom/microsoft/identity/common/internal/broker/BrokerData;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:I

.field private static final accountManagerBrokers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final allBrokers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;"
        }
    .end annotation
.end field

.field private static final prodBrokers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;"
        }
    .end annotation
.end field

.field private static final prodMicrosoftAuthenticator:Lcom/microsoft/identity/common/internal/broker/BrokerData;


# instance fields
.field private final nickName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final signingCertificateThumbprint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 2
    .line 3
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln81;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 11
    .line 12
    const-string v1, "pdAtoxfsEwbpQsIaua5Uobl5AQEjqt40aPXI7UY1lIW0NTmg0G4jHQ5T5mujSjjU06q4mEHs5hb6z/Mr0PNlmQ=="

    .line 13
    .line 14
    const-string v2, "debugMicrosoftAuthenticator"

    .line 15
    .line 16
    const-string v3, "com.azure.authenticator"

    .line 17
    .line 18
    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 22
    .line 23
    const-string v2, "Gu8CuaYmSV5CHWd6dz3tGPXIE+YTalCVIXi5lEBXpvUgsMKoHbU9Rqou3WNRNU1tsz8pvEADTCCJ5f02fbw9qw=="

    .line 24
    .line 25
    const-string v4, "prodMicrosoftAuthenticator"

    .line 26
    .line 27
    invoke-direct {v1, v3, v2, v4}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sput-object v1, Lcom/microsoft/identity/common/internal/broker/BrokerData;->prodMicrosoftAuthenticator:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 31
    .line 32
    new-instance v2, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 33
    .line 34
    const-string v4, "oIuNoUwMsxC10VneTQXnt/GXN+Pjqd6mpOKEMF/cH3i06K93TZMBWq+fHN/zt4zUe/W6zGj6YLymd1/tGuypNQ=="

    .line 35
    .line 36
    const-string v5, "debugCompanyPortal"

    .line 37
    .line 38
    const-string v6, "com.microsoft.windowsintune.companyportal"

    .line 39
    .line 40
    invoke-direct {v2, v6, v4, v5}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 44
    .line 45
    const-string v5, "jPpMoaNvcxSLMX4yG4C3Gf86rtTqh33SqpuRKg4WOP+MnnpA52zZgvKLW76U4Cqqf68iaBk9W7k/jhciiSAtgQ=="

    .line 46
    .line 47
    const-string v7, "prodCompanyPortal"

    .line 48
    .line 49
    invoke-direct {v4, v6, v5, v7}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 53
    .line 54
    const-string v7, "xxAk8S05zu0Nkce+X2J6IKJ2e7YE4F9ZorZj0YnYUQ2vw8vLc8VGGOqJdTnVySbbcy9VY8UDbOfeOETSErYllw=="

    .line 55
    .line 56
    const-string v8, "debugBrokerHost"

    .line 57
    .line 58
    const-string v9, "com.microsoft.identity.testuserapp"

    .line 59
    .line 60
    invoke-direct {v5, v9, v7, v8}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v7, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 64
    .line 65
    const-string v8, "EZ2RCcsmf869Ec41PgHHnFdI0MgmVsADFFy8AtcfEKsjD1YAPtKxCMZVdT+y+K1IWRnPk4Lf2PUAcL5N49OqAA=="

    .line 66
    .line 67
    const-string v10, "debugMockCp"

    .line 68
    .line 69
    const-string v11, "com.microsoft.mockcp"

    .line 70
    .line 71
    invoke-direct {v7, v11, v8, v10}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v8, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 75
    .line 76
    const-string v10, "QhjKSYYD31K7+C4q4Mpd08crE0LN/3GgnKVVuej4JWckUTc0Wp/i//LWLQnANaWiAjdESJJrjavu0cE6hkQihQ=="

    .line 77
    .line 78
    const-string v12, "debugMockAuthApp"

    .line 79
    .line 80
    const-string v13, "com.microsoft.mockauthapp"

    .line 81
    .line 82
    invoke-direct {v8, v13, v10, v12}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v10, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 86
    .line 87
    const-string v12, "felxzv/rpqa69dOADXVVKnawk5x8snBW2k/kDxzQLVkbcdzAvrGm8gcBRItzUGIQTupHCTWksN6WBGbn+b0KIA=="

    .line 88
    .line 89
    const-string v14, "debugMockLtw"

    .line 90
    .line 91
    const-string v15, "com.microsoft.mockltw"

    .line 92
    .line 93
    invoke-direct {v10, v15, v12, v14}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v12, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 97
    .line 98
    const-string v14, "WhUdh04ZkQLmNb//lKmohyqDdPMWXHcI0O3AvoLMtgF/smnED4r+Vguvgj6d4QG77Jl3avUKt6LeqF2TJPZVzg=="

    .line 99
    .line 100
    const-string v15, "prodLTW"

    .line 101
    .line 102
    move-object/from16 v16, v4

    .line 103
    .line 104
    const-string v4, "com.microsoft.appmanager"

    .line 105
    .line 106
    invoke-direct {v12, v4, v14, v15}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v14, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 110
    .line 111
    const-string v15, "5PAhhZNSRRvq7vpTT5vrYJbSLh05AU8USf7oUTS239PEltebX87uGN7GhAe5244lJepwZ5RU4vu8N6ospXVOlg=="

    .line 112
    .line 113
    move-object/from16 v17, v12

    .line 114
    .line 115
    const-string v12, "debugLTW"

    .line 116
    .line 117
    invoke-direct {v14, v4, v15, v12}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Lcom/microsoft/identity/common/internal/broker/BrokerData$Companion$accountManagerBrokers$1;

    .line 121
    .line 122
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v11}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    sput-object v3, Lcom/microsoft/identity/common/internal/broker/BrokerData;->accountManagerBrokers:Ljava/util/Set;

    .line 148
    .line 149
    new-instance v3, Lcom/microsoft/identity/common/internal/broker/BrokerData$Companion$debugBrokers$1;

    .line 150
    .line 151
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v14}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    new-instance v2, Lcom/microsoft/identity/common/internal/broker/BrokerData$Companion$prodBrokers$1;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-object/from16 v1, v16

    .line 191
    .line 192
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-object/from16 v1, v17

    .line 196
    .line 197
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    sput-object v1, Lcom/microsoft/identity/common/internal/broker/BrokerData;->prodBrokers:Ljava/util/Set;

    .line 208
    .line 209
    new-instance v2, Lcom/microsoft/identity/common/internal/broker/BrokerData$Companion$allBrokers$1;

    .line 210
    .line 211
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 218
    .line 219
    .line 220
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    sput-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->allBrokers:Ljava/util/Set;

    .line 228
    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->signingCertificateThumbprint:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->nickName:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic access$getAccountManagerBrokers$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->accountManagerBrokers:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getAllBrokers$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->allBrokers:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getProdBrokers$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->prodBrokers:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getProdMicrosoftAuthenticator$cp()Lcom/microsoft/identity/common/internal/broker/BrokerData;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->prodMicrosoftAuthenticator:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/broker/BrokerData;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-static {v2, v0, v3}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->signingCertificateThumbprint:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/broker/BrokerData;->signingCertificateThumbprint:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    return v3

    .line 31
    :cond_1
    return v1
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSigningCertificateThumbprint()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->signingCertificateThumbprint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->signingCertificateThumbprint:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->nickName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-object v0

    .line 13
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "::"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->signingCertificateThumbprint:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
