.class public abstract Lcom/microsoft/identity/common/java/base64/Base64Util;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:I

.field private static final base64:Lcom/microsoft/identity/common/base64/AndroidBase64;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/microsoft/identity/common/base64/AndroidBase64;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast v1, Lcom/microsoft/identity/common/base64/AndroidBase64;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v2, v2, [B

    .line 19
    .line 20
    sget-object v3, Lcom/microsoft/identity/common/java/base64/Base64Flags;->DEFAULT:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 21
    .line 22
    filled-new-array {v3}, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v2, v3}, Lcom/microsoft/identity/common/base64/AndroidBase64;->encode([B[Lcom/microsoft/identity/common/java/base64/Base64Flags;)[B
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-object v1, v0

    .line 31
    :goto_0
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto :goto_4

    .line 34
    :cond_0
    :try_start_1
    const-string v1, "com.microsoft.identity.broker.base64.MseberaBase64ForLinux"

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    check-cast v1, Lcom/microsoft/identity/common/base64/AndroidBase64;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-object v1, v0

    .line 55
    :goto_1
    if-eqz v1, :cond_1

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_1
    :try_start_2
    const-string v1, "com.microsoft.identity.common.java.MseberaBase64ForCommon4jTests"

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    check-cast v1, Lcom/microsoft/identity/common/base64/AndroidBase64;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catch_2
    move-object v1, v0

    .line 79
    :goto_2
    if-eqz v1, :cond_2

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_2
    :try_start_3
    const-string v1, "com.microsoft.identity.broker4j.MseberaBase64ForBroker4jTests"

    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    check-cast v1, Lcom/microsoft/identity/common/base64/AndroidBase64;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catch_3
    move-object v1, v0

    .line 103
    :goto_3
    if-eqz v1, :cond_3

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_3
    :try_start_4
    const-string v1, "com.microsoft.identity.internal.testutils.MseberaBase64ForTestUtils"

    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    check-cast v1, Lcom/microsoft/identity/common/base64/AndroidBase64;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 124
    .line 125
    move-object v0, v1

    .line 126
    :catch_4
    if-eqz v0, :cond_4

    .line 127
    .line 128
    move-object v1, v0

    .line 129
    :goto_4
    sput-object v1, Lcom/microsoft/identity/common/java/base64/Base64Util;->base64:Lcom/microsoft/identity/common/base64/AndroidBase64;

    .line 130
    .line 131
    return-void

    .line 132
    :cond_4
    const-string v0, "Cannot find a Base64 implementation to initialize."

    .line 133
    .line 134
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public static final synthetic access$getBase64$cp()Lcom/microsoft/identity/common/base64/AndroidBase64;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/base64/Base64Util;->base64:Lcom/microsoft/identity/common/base64/AndroidBase64;

    .line 2
    .line 3
    return-object v0
.end method
