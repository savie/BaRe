.class public final synthetic Lcom/jcraft/jsch/q;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;


# instance fields
.field public final synthetic a:Lcom/jcraft/jsch/SignatureWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/jcraft/jsch/SignatureWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jcraft/jsch/q;->a:Lcom/jcraft/jsch/SignatureWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final setPubKey([[B)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/q;->a:Lcom/jcraft/jsch/SignatureWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/jcraft/jsch/SignatureWrapper;->a:Lcom/jcraft/jsch/Signature;

    .line 4
    .line 5
    check-cast p0, Lcom/jcraft/jsch/SignatureECDSA;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aget-object v0, p1, v0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    aget-object p1, p1, v1

    .line 12
    .line 13
    invoke-interface {p0, v0, p1}, Lcom/jcraft/jsch/SignatureECDSA;->setPubKey([B[B)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
