.class Lcom/jcraft/jsch/IdentityRepositoryWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/IdentityRepository;


# instance fields
.field public final a:Lcom/jcraft/jsch/IdentityRepository;

.field public final b:Ljava/util/Vector;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/IdentityRepository;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->b:Ljava/util/Vector;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->a:Lcom/jcraft/jsch/IdentityRepository;

    .line 12
    .line 13
    iput-boolean p2, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->c:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/jcraft/jsch/Identity;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    instance-of v0, p1, Lcom/jcraft/jsch/IdentityFile;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->a:Lcom/jcraft/jsch/IdentityRepository;

    .line 16
    .line 17
    check-cast p1, Lcom/jcraft/jsch/IdentityFile;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/KeyPair;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPair;->forSSHAgent()[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p0, p1}, Lcom/jcraft/jsch/IdentityRepository;->add([B)Z
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    return-void

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->b:Ljava/util/Vector;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final add([B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->a:Lcom/jcraft/jsch/IdentityRepository;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jcraft/jsch/IdentityRepository;->add([B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getIdentities()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/Identity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->b:Ljava/util/Vector;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-ge v2, v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/jcraft/jsch/Identity;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->a:Lcom/jcraft/jsch/IdentityRepository;

    .line 29
    .line 30
    invoke-interface {p0}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge v1, v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/jcraft/jsch/Identity;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->a:Lcom/jcraft/jsch/IdentityRepository;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jcraft/jsch/IdentityRepository;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->a:Lcom/jcraft/jsch/IdentityRepository;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jcraft/jsch/IdentityRepository;->getStatus()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final remove([B)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->a:Lcom/jcraft/jsch/IdentityRepository;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jcraft/jsch/IdentityRepository;->remove([B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final removeAll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->b:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->a:Lcom/jcraft/jsch/IdentityRepository;

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/jcraft/jsch/IdentityRepository;->removeAll()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
