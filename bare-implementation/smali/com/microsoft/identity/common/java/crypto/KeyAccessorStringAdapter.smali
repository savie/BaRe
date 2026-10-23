.class public final Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mKeyAccessor:Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;->mKeyAccessor:Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/microsoft/identity/common/java/AuthenticationConstants;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;->mKeyAccessor:Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->decrypt([B)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method public final encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/microsoft/identity/common/java/AuthenticationConstants;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;->mKeyAccessor:Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->encrypt([B)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method
