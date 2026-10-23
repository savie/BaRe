.class public Lqj6$d;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation runtime Lno6;
    name = "Destination"
.end annotation


# instance fields
.field private a:Lqj6$a;
    .annotation runtime Lat2;
        name = "AccessControlTranslation"
        required = false
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Account"
        required = false
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Bucket"
    .end annotation
.end field

.field private d:Lqj6$e;
    .annotation runtime Lat2;
        name = "EncryptionConfiguration"
        required = false
    .end annotation
.end field

.field private e:Lqj6$g;
    .annotation runtime Lat2;
        name = "Metrics"
        required = false
    .end annotation
.end field

.field private f:Lqj6$i;
    .annotation runtime Lat2;
        name = "ReplicationTime"
        required = false
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "StorageClass"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqj6$a;Ljava/lang/String;Ljava/lang/String;Lqj6$e;Lqj6$g;Lqj6$i;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lqj6$a;
        .annotation runtime Lat2;
            name = "AccessControlTranslation"
            required = false
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "Account"
            required = false
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "Bucket"
        .end annotation
    .end param
    .param p4    # Lqj6$e;
        .annotation runtime Lat2;
            name = "EncryptionConfiguration"
            required = false
        .end annotation
    .end param
    .param p5    # Lqj6$g;
        .annotation runtime Lat2;
            name = "Metrics"
            required = false
        .end annotation
    .end param
    .param p6    # Lqj6$i;
        .annotation runtime Lat2;
            name = "ReplicationTime"
            required = false
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "StorageClass"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqj6$d;->a:Lqj6$a;

    .line 5
    .line 6
    iput-object p2, p0, Lqj6$d;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string p1, "Bucket ARN must not be null"

    .line 9
    .line 10
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iput-object p3, p0, Lqj6$d;->c:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lqj6$d;->d:Lqj6$e;

    .line 16
    .line 17
    iput-object p5, p0, Lqj6$d;->e:Lqj6$g;

    .line 18
    .line 19
    iput-object p6, p0, Lqj6$d;->f:Lqj6$i;

    .line 20
    .line 21
    iput-object p7, p0, Lqj6$d;->g:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a()Lqj6$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$d;->a:Lqj6$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$d;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Lqj6$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$d;->d:Lqj6$e;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Lqj6$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$d;->e:Lqj6$g;

    .line 2
    .line 3
    return-object p0
.end method

.method public f()Lqj6$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$d;->f:Lqj6$i;

    .line 2
    .line 3
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$d;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lqj6$d;->a:Lqj6$a;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lqj6$d;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lqj6$d;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lqj6$d;->d:Lqj6$e;

    .line 20
    .line 21
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lqj6$d;->e:Lqj6$g;

    .line 26
    .line 27
    invoke-static {v4}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lqj6$d;->f:Lqj6$i;

    .line 32
    .line 33
    invoke-static {v5}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object p0, p0, Lqj6$d;->g:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v6, ", account="

    .line 44
    .line 45
    const-string v7, ", bucketArn="

    .line 46
    .line 47
    const-string v8, "Destination{accessControlTranslation="

    .line 48
    .line 49
    invoke-static {v8, v0, v6, v1, v7}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, ", encryptionConfiguration="

    .line 54
    .line 55
    const-string v6, ", metrics="

    .line 56
    .line 57
    invoke-static {v0, v2, v1, v3, v6}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, ", replicationTime="

    .line 61
    .line 62
    const-string v2, ", storageClass="

    .line 63
    .line 64
    invoke-static {v0, v4, v1, v5, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v1, "}"

    .line 68
    .line 69
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method
