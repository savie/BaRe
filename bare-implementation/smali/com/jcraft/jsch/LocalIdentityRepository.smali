.class Lcom/jcraft/jsch/LocalIdentityRepository;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/IdentityRepository;


# instance fields
.field public final a:Ljava/util/Vector;

.field public final b:Lcom/jcraft/jsch/JSch$InstanceLogger;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
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
    iput-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->b:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_5

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_5

    .line 18
    .line 19
    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Lcom/jcraft/jsch/Identity;

    .line 24
    .line 25
    invoke-interface {v5}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_1
    add-int/lit8 v7, v4, 0x1

    .line 33
    .line 34
    :goto_1
    if-ge v7, v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    check-cast v8, Lcom/jcraft/jsch/Identity;

    .line 41
    .line 42
    invoke-interface {v8}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    if-nez v9, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-static {v6, v9}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_3

    .line 54
    .line 55
    invoke-interface {v5}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    invoke-interface {v8}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-ne v9, v8, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    :goto_4
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ge v3, v1, :cond_6

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, [B

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/LocalIdentityRepository;->remove([B)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    :goto_5
    return-void
.end method

.method public final declared-synchronized add(Lcom/jcraft/jsch/Identity;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    iget-object v3, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 33
    .line 34
    if-ge v1, v2, :cond_3

    .line 35
    .line 36
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/jcraft/jsch/Identity;

    .line 41
    .line 42
    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    iget-object v3, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/jcraft/jsch/Identity;

    .line 67
    .line 68
    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/LocalIdentityRepository;->remove([B)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    .line 85
    .line 86
    :cond_4
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    throw p1
.end method

.method public final declared-synchronized add([B)Z
    .locals 3

    monitor-enter p0

    .line 90
    :try_start_0
    const-string v0, "from remote:"

    iget-object v1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->b:Lcom/jcraft/jsch/JSch$InstanceLogger;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/jcraft/jsch/IdentityFile;->b(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/LocalIdentityRepository;->add(Lcom/jcraft/jsch/Identity;)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    .line 93
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 94
    :catch_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized getIdentities()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/Identity;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/LocalIdentityRepository;->a()V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ljava/util/Vector;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/jcraft/jsch/Identity;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    monitor-exit p0

    .line 36
    return-object v0

    .line 37
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Local Identity Repository"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final declared-synchronized remove([B)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return v0

    .line 7
    :cond_0
    move v1, v0

    .line 8
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_3

    .line 15
    .line 16
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/jcraft/jsch/Identity;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-static {p1, v3}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    monitor-exit p0

    .line 54
    return v0

    .line 55
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p1
.end method

.method public final declared-synchronized removeAll()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->a:Ljava/util/Vector;

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/jcraft/jsch/Identity;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/jcraft/jsch/Identity;->clear()V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw v0
.end method
