.class public abstract Llp9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lht9;

.field public static final b:Lft9;

.field public static final c:Lfs9;

.field public static final d:Lds9;

.field public static final e:Ljava/util/Map;

.field public static final f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    .line 2
    .line 3
    invoke-static {v0}, Lau9;->c(Ljava/lang/String;)Ld2a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Llk;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lht9;

    .line 13
    .line 14
    const-class v3, Ldp9;

    .line 15
    .line 16
    invoke-direct {v2, v3, v1}, Lht9;-><init>(Ljava/lang/Class;Lgt9;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Llp9;->a:Lht9;

    .line 20
    .line 21
    new-instance v1, Lhi9;

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    invoke-direct {v1, v2}, Lhi9;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lft9;

    .line 28
    .line 29
    invoke-direct {v2, v0, v1}, Lft9;-><init>(Ld2a;Let9;)V

    .line 30
    .line 31
    .line 32
    sput-object v2, Llp9;->b:Lft9;

    .line 33
    .line 34
    new-instance v1, Lma2;

    .line 35
    .line 36
    const/16 v2, 0x1a

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lma2;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lfs9;

    .line 42
    .line 43
    const-class v4, Lto9;

    .line 44
    .line 45
    invoke-direct {v3, v4, v1}, Lfs9;-><init>(Ljava/lang/Class;Les9;)V

    .line 46
    .line 47
    .line 48
    sput-object v3, Llp9;->c:Lfs9;

    .line 49
    .line 50
    new-instance v1, Lcz4;

    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcz4;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lds9;

    .line 56
    .line 57
    invoke-direct {v2, v0, v1}, Lds9;-><init>(Ld2a;Lcs9;)V

    .line 58
    .line 59
    .line 60
    sput-object v2, Llp9;->d:Lds9;

    .line 61
    .line 62
    new-instance v0, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    sget-object v1, Lcp9;->d:Lcp9;

    .line 68
    .line 69
    sget-object v2, Lr0a;->e:Lr0a;

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    sget-object v3, Lcp9;->b:Lcp9;

    .line 75
    .line 76
    sget-object v4, Lr0a;->c:Lr0a;

    .line 77
    .line 78
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    sget-object v5, Lcp9;->c:Lcp9;

    .line 82
    .line 83
    sget-object v6, Lr0a;->f:Lr0a;

    .line 84
    .line 85
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sput-object v0, Llp9;->e:Ljava/util/Map;

    .line 93
    .line 94
    new-instance v0, Ljava/util/EnumMap;

    .line 95
    .line 96
    const-class v7, Lr0a;

    .line 97
    .line 98
    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v4, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    sget-object v1, Lr0a;->d:Lr0a;

    .line 111
    .line 112
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Llp9;->f:Ljava/util/Map;

    .line 120
    .line 121
    return-void
.end method

.method public static a(Lr0a;)Lcp9;
    .locals 2

    .line 1
    sget-object v0, Llp9;->f:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcp9;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 17
    .line 18
    invoke-virtual {p0}, Lr0a;->zza()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const-string v1, "Unable to parse OutputPrefixType: "

    .line 23
    .line 24
    invoke-static {p0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method
