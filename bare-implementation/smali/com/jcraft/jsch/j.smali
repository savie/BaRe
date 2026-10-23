.class public final synthetic Lcom/jcraft/jsch/j;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/jcraft/jsch/HostKeyRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/jcraft/jsch/HostKeyRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jcraft/jsch/j;->a:Lcom/jcraft/jsch/HostKeyRepository;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/j;->a:Lcom/jcraft/jsch/HostKeyRepository;

    .line 2
    .line 3
    check-cast p1, Lcom/jcraft/jsch/HostKey;

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->d(Lcom/jcraft/jsch/HostKeyRepository;Lcom/jcraft/jsch/HostKey;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method
