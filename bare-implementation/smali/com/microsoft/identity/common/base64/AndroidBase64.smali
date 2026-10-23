.class public final Lcom/microsoft/identity/common/base64/AndroidBase64;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final varargs combineFlags([Lcom/microsoft/identity/common/java/base64/Base64Flags;)I
    .locals 1

    .line 1
    sget-object p0, Lcom/microsoft/identity/common/java/base64/Base64Flags;->URL_SAFE:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 2
    .line 3
    invoke-static {p1, p0}, Lx50;->e0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x8

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    sget-object v0, Lcom/microsoft/identity/common/java/base64/Base64Flags;->NO_WRAP:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lx50;->e0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    or-int/lit8 p0, p0, 0x2

    .line 22
    .line 23
    :cond_1
    sget-object v0, Lcom/microsoft/identity/common/java/base64/Base64Flags;->NO_PADDING:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 24
    .line 25
    invoke-static {p1, v0}, Lx50;->e0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    or-int/lit8 p0, p0, 0x1

    .line 32
    .line 33
    :cond_2
    return p0
.end method


# virtual methods
.method public varargs decode([B[Lcom/microsoft/identity/common/java/base64/Base64Flags;)[B
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    array-length v0, p2

    .line 8
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 13
    .line 14
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/base64/AndroidBase64;->combineFlags([Lcom/microsoft/identity/common/java/base64/Base64Flags;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p1, p0}, Landroid/util/Base64;->decode([BI)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public varargs encode([B[Lcom/microsoft/identity/common/java/base64/Base64Flags;)[B
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    array-length v0, p2

    .line 8
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 13
    .line 14
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/base64/AndroidBase64;->combineFlags([Lcom/microsoft/identity/common/java/base64/Base64Flags;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p1, p0}, Landroid/util/Base64;->encode([BI)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    return-object p0
.end method
