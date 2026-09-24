.class public Lcom/jcraft/jsch/jce/Random;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Random;


# instance fields
.field public a:[B

.field public final b:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->a:[B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->b:Ljava/security/SecureRandom;

    .line 12
    .line 13
    new-instance v0, Ljava/security/SecureRandom;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->b:Ljava/security/SecureRandom;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final fill([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jce/Random;->a:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-le p3, v0, :cond_0

    .line 5
    .line 6
    new-array v0, p3, [B

    .line 7
    .line 8
    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->a:[B

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jce/Random;->b:Ljava/security/SecureRandom;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/jcraft/jsch/jce/Random;->a:[B

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/jcraft/jsch/jce/Random;->a:[B

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p0, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
