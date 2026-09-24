.class public final enum Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field public static final enum GET:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field public static final enum PATCH:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field public static final enum POST:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field private static final validMethods:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 2
    .line 3
    const-string v1, "GET"

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    invoke-direct {v0, v1, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->GET:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 10
    .line 11
    new-instance v1, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 12
    .line 13
    const-string v2, "HEAD"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 20
    .line 21
    const-string v3, "PUT"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 28
    .line 29
    const-string v4, "POST"

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->POST:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 36
    .line 37
    new-instance v4, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 38
    .line 39
    const-string v5, "OPTIONS"

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 46
    .line 47
    const-string v6, "PATCH"

    .line 48
    .line 49
    const/4 v7, 0x5

    .line 50
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    sput-object v5, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->PATCH:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 54
    .line 55
    new-instance v6, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 56
    .line 57
    const-string v7, "DELETE"

    .line 58
    .line 59
    const/4 v9, 0x6

    .line 60
    invoke-direct {v6, v7, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    new-instance v7, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 64
    .line 65
    const-string v9, "TRACE"

    .line 66
    .line 67
    const/4 v10, 0x7

    .line 68
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    filled-new-array/range {v0 .. v7}, [Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->$VALUES:[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 76
    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    invoke-static {}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->values()[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    array-length v1, v1

    .line 84
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->validMethods:Ljava/util/LinkedHashMap;

    .line 88
    .line 89
    invoke-static {}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->values()[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    array-length v1, v0

    .line 94
    :goto_0
    if-ge v8, v1, :cond_0

    .line 95
    .line 96
    aget-object v2, v0, v8

    .line 97
    .line 98
    sget-object v3, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->validMethods:Ljava/util/LinkedHashMap;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    add-int/lit8 v8, v8, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->$VALUES:[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 8
    .line 9
    return-object v0
.end method
