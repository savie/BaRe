.class public final Lxr1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[B

.field public b:Lru3;

.field public c:Le87;

.field public final d:Ljava/util/UUID;

.field public final e:Ljava/util/EnumSet;

.field public final f:I

.field public g:Lxu6;

.field public h:[B

.field public i:Lwu6;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;ILdi7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxr1;->d:Ljava/util/UUID;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    new-array v0, p1, [B

    .line 8
    .line 9
    iput-object v0, p0, Lxr1;->a:[B

    .line 10
    .line 11
    invoke-virtual {p4}, Ldi7;->a()Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    invoke-static {p4}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    iput-object p4, p0, Lxr1;->e:Ljava/util/EnumSet;

    .line 20
    .line 21
    const/4 p4, 0x1

    .line 22
    iput p4, p0, Lxr1;->f:I

    .line 23
    .line 24
    new-instance p4, Le87;

    .line 25
    .line 26
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p4, Le87;->b:Ljava/lang/String;

    .line 30
    .line 31
    iput p3, p4, Le87;->c:I

    .line 32
    .line 33
    iput-boolean p1, p4, Le87;->a:Z

    .line 34
    .line 35
    iput-object p4, p0, Lxr1;->c:Le87;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lbt6;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxr1;->c:Le87;

    .line 2
    .line 3
    iget-object p0, p0, Le87;->g:Ljava/util/EnumSet;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lxr1;->b:Lru3;

    .line 2
    .line 3
    iget-object v0, v0, Lru3;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lus6;

    .line 6
    .line 7
    sget-object v1, Lus6;->n:Lus6;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lxr1;->i:Lwu6;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    return v2

    .line 19
    :cond_1
    iget-object v0, p0, Lxr1;->e:Ljava/util/EnumSet;

    .line 20
    .line 21
    sget-object v1, Lbt6;->c:Lbt6;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lxr1;->a(Lbt6;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    return v3

    .line 36
    :cond_2
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ConnectionContext{\n  serverGuid="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lxr1;->c:Le87;

    .line 9
    .line 10
    iget-object v1, v1, Le87;->d:Ljava/util/UUID;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ",\n  serverName=\'"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lxr1;->c:Le87;

    .line 21
    .line 22
    iget-object v1, v1, Le87;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "\',\n  negotiatedProtocol="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lxr1;->b:Lru3;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ",\n  clientGuid="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lxr1;->d:Ljava/util/UUID;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ",\n  clientCapabilities="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lxr1;->e:Ljava/util/EnumSet;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ",\n  serverCapabilities="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lxr1;->c:Le87;

    .line 63
    .line 64
    iget-object v1, v1, Le87;->g:Ljava/util/EnumSet;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ",\n  clientSecurityMode="

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v1, p0, Lxr1;->f:I

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ",\n  serverSecurityMode="

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lxr1;->c:Le87;

    .line 85
    .line 86
    iget v1, v1, Le87;->f:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ",\n  server=\'"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lxr1;->c:Le87;

    .line 97
    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p0, "\'\n}"

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0
.end method
