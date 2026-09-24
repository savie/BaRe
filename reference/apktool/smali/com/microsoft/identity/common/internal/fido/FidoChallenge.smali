.class public final Lcom/microsoft/identity/common/internal/fido/FidoChallenge;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final allowedCredentials:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final challenge:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyTypes:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final relyingPartyIdentifier:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final submitUrl:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userVerificationPolicy:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final version:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->challenge:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->relyingPartyIdentifier:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->userVerificationPolicy:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->version:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->submitUrl:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->context:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->keyTypes:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->allowedCredentials:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 19
    .line 20
    return-void
.end method

.method public static final createFromRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/fido/FidoChallenge;
    .locals 21

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static/range {p0 .. p0}, Lcom/microsoft/identity/common/java/util/UrlUtil;->getParameters(Ljava/lang/String;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;

    .line 12
    .line 13
    new-instance v2, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 14
    .line 15
    sget-object v3, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->CHALLENGE:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->getFieldName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-instance v5, Lcom/microsoft/identity/common/internal/fido/FidoChallenge$Companion$createFromRedirectUri$1;

    .line 26
    .line 27
    const-string v10, "throwIfInvalidRequiredParameter(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;"

    .line 28
    .line 29
    const/4 v11, 0x0

    .line 30
    const/4 v6, 0x2

    .line 31
    sget-object v14, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->Companion:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 32
    .line 33
    const-class v8, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 34
    .line 35
    const-string v9, "throwIfInvalidRequiredParameter"

    .line 36
    .line 37
    move-object v7, v14

    .line 38
    invoke-direct/range {v5 .. v11}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;-><init>(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/Object;Lqt3;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 45
    .line 46
    sget-object v4, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->RELYING_PARTY_IDENTIFIER:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->getFieldName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    new-instance v12, Lcom/microsoft/identity/common/internal/fido/FidoChallenge$Companion$createFromRedirectUri$2;

    .line 57
    .line 58
    const-string v17, "throwIfInvalidRelyingPartyIdentifier(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;"

    .line 59
    .line 60
    const/16 v18, 0x0

    .line 61
    .line 62
    const/4 v13, 0x2

    .line 63
    const-class v15, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 64
    .line 65
    const-string v16, "throwIfInvalidRelyingPartyIdentifier"

    .line 66
    .line 67
    invoke-direct/range {v12 .. v18}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, v4, v5, v12}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;-><init>(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/Object;Lqt3;)V

    .line 71
    .line 72
    .line 73
    new-instance v4, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 74
    .line 75
    sget-object v5, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->USER_VERIFICATION_POLICY:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->getFieldName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Ljava/lang/String;

    .line 86
    .line 87
    if-nez v6, :cond_0

    .line 88
    .line 89
    const-string v6, "required"

    .line 90
    .line 91
    :cond_0
    new-instance v12, Lcom/microsoft/identity/common/internal/fido/FidoChallenge$Companion$createFromRedirectUri$3;

    .line 92
    .line 93
    const-string v17, "throwIfInvalidRequiredParameter(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;"

    .line 94
    .line 95
    const/16 v18, 0x0

    .line 96
    .line 97
    const/4 v13, 0x2

    .line 98
    const-class v15, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 99
    .line 100
    const-string v16, "throwIfInvalidRequiredParameter"

    .line 101
    .line 102
    invoke-direct/range {v12 .. v18}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v4, v5, v6, v12}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;-><init>(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/Object;Lqt3;)V

    .line 106
    .line 107
    .line 108
    new-instance v5, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 109
    .line 110
    sget-object v6, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->VERSION:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->getFieldName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    new-instance v12, Lcom/microsoft/identity/common/internal/fido/FidoChallenge$Companion$createFromRedirectUri$4;

    .line 121
    .line 122
    const-string v17, "throwIfInvalidProtocolVersion(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;"

    .line 123
    .line 124
    const-class v15, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 125
    .line 126
    const-string v16, "throwIfInvalidProtocolVersion"

    .line 127
    .line 128
    invoke-direct/range {v12 .. v18}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v5, v6, v7, v12}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;-><init>(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/Object;Lqt3;)V

    .line 132
    .line 133
    .line 134
    new-instance v6, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 135
    .line 136
    sget-object v7, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->SUBMIT_URL:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 137
    .line 138
    invoke-virtual {v7}, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->getFieldName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    new-instance v12, Lcom/microsoft/identity/common/internal/fido/FidoChallenge$Companion$createFromRedirectUri$5;

    .line 147
    .line 148
    const-string v17, "throwIfInvalidSubmitUrl(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;"

    .line 149
    .line 150
    const-class v15, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 151
    .line 152
    const-string v16, "throwIfInvalidSubmitUrl"

    .line 153
    .line 154
    invoke-direct/range {v12 .. v18}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    invoke-direct {v6, v7, v8, v12}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;-><init>(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/Object;Lqt3;)V

    .line 158
    .line 159
    .line 160
    new-instance v7, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 161
    .line 162
    sget-object v8, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->CONTEXT:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 163
    .line 164
    invoke-virtual {v8}, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->getFieldName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    new-instance v12, Lcom/microsoft/identity/common/internal/fido/FidoChallenge$Companion$createFromRedirectUri$6;

    .line 173
    .line 174
    const-string v17, "throwIfInvalidRequiredParameter(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;"

    .line 175
    .line 176
    const-class v15, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 177
    .line 178
    const-string v16, "throwIfInvalidRequiredParameter"

    .line 179
    .line 180
    invoke-direct/range {v12 .. v18}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    invoke-direct {v7, v8, v9, v12}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;-><init>(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/Object;Lqt3;)V

    .line 184
    .line 185
    .line 186
    new-instance v8, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 187
    .line 188
    sget-object v9, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->KEY_TYPES:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 189
    .line 190
    invoke-virtual {v9}, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->getFieldName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    check-cast v10, Ljava/lang/String;

    .line 199
    .line 200
    const/4 v11, 0x6

    .line 201
    const/16 v19, 0x0

    .line 202
    .line 203
    const-string v20, ","

    .line 204
    .line 205
    if-eqz v10, :cond_1

    .line 206
    .line 207
    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    invoke-static {v10, v12, v11}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    goto :goto_0

    .line 216
    :cond_1
    move-object/from16 v10, v19

    .line 217
    .line 218
    :goto_0
    new-instance v12, Lcom/microsoft/identity/common/internal/fido/FidoChallenge$Companion$createFromRedirectUri$7;

    .line 219
    .line 220
    const-string v17, "throwIfInvalidOptionalListParameter(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/util/List;)Ljava/util/List;"

    .line 221
    .line 222
    const/16 v18, 0x0

    .line 223
    .line 224
    const/4 v13, 0x2

    .line 225
    const-class v15, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 226
    .line 227
    const-string v16, "throwIfInvalidOptionalListParameter"

    .line 228
    .line 229
    invoke-direct/range {v12 .. v18}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    .line 231
    .line 232
    invoke-direct {v8, v9, v10, v12}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;-><init>(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/Object;Lqt3;)V

    .line 233
    .line 234
    .line 235
    new-instance v9, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 236
    .line 237
    sget-object v10, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->ALLOWED_CREDENTIALS:Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 238
    .line 239
    invoke-virtual {v10}, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;->getFieldName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Ljava/lang/String;

    .line 248
    .line 249
    if-eqz v0, :cond_2

    .line 250
    .line 251
    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    invoke-static {v0, v12, v11}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v19

    .line 259
    :cond_2
    move-object/from16 v0, v19

    .line 260
    .line 261
    new-instance v12, Lcom/microsoft/identity/common/internal/fido/FidoChallenge$Companion$createFromRedirectUri$8;

    .line 262
    .line 263
    const-string v17, "throwIfInvalidOptionalListParameter(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/util/List;)Ljava/util/List;"

    .line 264
    .line 265
    const/16 v18, 0x0

    .line 266
    .line 267
    const/4 v13, 0x2

    .line 268
    const-class v15, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 269
    .line 270
    const-string v16, "throwIfInvalidOptionalListParameter"

    .line 271
    .line 272
    invoke-direct/range {v12 .. v18}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    invoke-direct {v9, v10, v0, v12}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;-><init>(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/Object;Lqt3;)V

    .line 276
    .line 277
    .line 278
    invoke-direct/range {v1 .. v9}, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;-><init>(Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;)V

    .line 279
    .line 280
    .line 281
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->challenge:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->challenge:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->relyingPartyIdentifier:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->relyingPartyIdentifier:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->userVerificationPolicy:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->userVerificationPolicy:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->version:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 45
    .line 46
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->version:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->submitUrl:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 56
    .line 57
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->submitUrl:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_6

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->context:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 67
    .line 68
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->context:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->keyTypes:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 78
    .line 79
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->keyTypes:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_8

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_8
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->allowedCredentials:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->allowedCredentials:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_9

    .line 97
    .line 98
    :goto_0
    const/4 p0, 0x0

    .line 99
    return p0

    .line 100
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 101
    return p0
.end method

.method public final getAllowedCredentials()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->allowedCredentials:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getChallenge()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->challenge:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContext()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->context:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeyTypes()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->keyTypes:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRelyingPartyIdentifier()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->relyingPartyIdentifier:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubmitUrl()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->submitUrl:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUserVerificationPolicy()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->userVerificationPolicy:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersion()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/fido/FidoChallengeField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->version:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->challenge:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->relyingPartyIdentifier:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->userVerificationPolicy:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->version:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->submitUrl:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->context:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v1, v0

    .line 52
    mul-int/lit8 v1, v1, 0x1f

    .line 53
    .line 54
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->keyTypes:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->allowedCredentials:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    add-int/2addr p0, v0

    .line 70
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FidoChallenge(challenge="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->challenge:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", relyingPartyIdentifier="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->relyingPartyIdentifier:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", userVerificationPolicy="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->userVerificationPolicy:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", version="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->version:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", submitUrl="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->submitUrl:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", context="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->context:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", keyTypes="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->keyTypes:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", allowedCredentials="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->allowedCredentials:Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 p0, 0x29

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method
