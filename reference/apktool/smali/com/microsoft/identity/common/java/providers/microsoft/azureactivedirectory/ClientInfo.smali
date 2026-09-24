.class public final Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mRawClientInfo:Ljava/lang/String;

.field private final mUid:Ljava/lang/String;

.field private final mUtid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ServiceException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    sget-object v1, Lcom/microsoft/identity/common/java/base64/Base64Flags;->URL_SAFE:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 14
    .line 15
    filled-new-array {v1}, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget v2, Lcom/microsoft/identity/common/java/base64/Base64Util;->a:I

    .line 20
    .line 21
    invoke-static {p1, v1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->decode(Ljava/lang/String;[Lcom/microsoft/identity/common/java/base64/Base64Flags;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/String;

    .line 26
    .line 27
    sget-object v3, Lcom/microsoft/identity/common/java/AuthenticationConstants;->ENCODING_UTF8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-nez v5, :cond_0

    .line 63
    .line 64
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "uid"

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mUid:Ljava/lang/String;

    .line 85
    .line 86
    const-string v0, "utid"

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/String;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mUtid:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    :cond_2
    const-string v0, "xms_tdbr"

    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/lang/String;

    .line 116
    .line 117
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mRawClientInfo:Ljava/lang/String;

    .line 118
    .line 119
    return-void

    .line 120
    :catch_0
    move-exception p0

    .line 121
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 122
    .line 123
    const-string v0, ""

    .line 124
    .line 125
    const-string v1, "invalid_jwt"

    .line 126
    .line 127
    invoke-direct {p1, p0, v0, v1}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_3
    const-string p0, "ClientInfo cannot be null or blank."

    .line 132
    .line 133
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_4
    const-string p0, "rawClientInfo is marked non-null but is null"

    .line 138
    .line 139
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0
.end method


# virtual methods
.method public final getRawClientInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mRawClientInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mUid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUtid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mUtid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
