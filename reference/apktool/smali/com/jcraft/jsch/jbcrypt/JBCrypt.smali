.class public Lcom/jcraft/jsch/jbcrypt/JBCrypt;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/KDF;


# instance fields
.field public a:Lcom/jcraft/jsch/jbcrypt/BCrypt;

.field public b:[B

.field public c:I


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


# virtual methods
.method public final getKey([BI)[B
    .locals 2

    .line 1
    new-array p2, p2, [B

    .line 2
    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->a:Lcom/jcraft/jsch/jbcrypt/BCrypt;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->b:[B

    .line 6
    .line 7
    iget p0, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->c:I

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, p0, p2}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->pbkdf([B[BI[B)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public final initWithOpenSSHv1KDFOptions([B)V
    .locals 1

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->b:[B

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->c:I

    .line 17
    .line 18
    new-instance p1, Lcom/jcraft/jsch/jbcrypt/BCrypt;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->a:Lcom/jcraft/jsch/jbcrypt/BCrypt;

    .line 24
    .line 25
    return-void
.end method
