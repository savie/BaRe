.class Lcom/jcraft/jsch/IdentityFile;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# instance fields
.field public a:Lcom/jcraft/jsch/KeyPair;

.field public final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jcraft/jsch/IdentityFile;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/IdentityFile;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/KeyPair;->o(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p2, Lcom/jcraft/jsch/IdentityFile;

    .line 6
    .line 7
    invoke-direct {p2, p1, p0}, Lcom/jcraft/jsch/IdentityFile;-><init>(Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method

.method public static b(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/IdentityFile;
    .locals 0

    .line 1
    invoke-static {p3, p1, p2}, Lcom/jcraft/jsch/KeyPair;->p(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lcom/jcraft/jsch/IdentityFile;

    .line 6
    .line 7
    invoke-direct {p2, p0, p1}, Lcom/jcraft/jsch/IdentityFile;-><init>(Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    .line 8
    .line 9
    return-void
.end method

.method public final getAlgName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getKeyTypeString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getKeyPair()Lcom/jcraft/jsch/KeyPair;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityFile;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPublicKeyBlob()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSignature([B)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPair;->getSignature([B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSignature([BLjava/lang/String;)[B
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/KeyPair;->getSignature([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final isEncrypted()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 4
    .line 5
    return p0
.end method

.method public final setPassphrase([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPair;->decrypt([B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
