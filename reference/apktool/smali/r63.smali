.class public final Lr63;
.super Lmm2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lsu6;


# direct methods
.method public constructor <init>(Lnr6;Lwm2;Lfi7;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmm2;-><init>(Lnr6;Lwm2;Lfi7;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsu6;

    .line 5
    .line 6
    invoke-virtual {p3}, Lfi7;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, v0, Lsu6;->a:Lwm2;

    .line 14
    .line 15
    iput-object p1, v0, Lsu6;->b:Lnr6;

    .line 16
    .line 17
    iput-object p3, v0, Lsu6;->c:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lr63;->e:Lsu6;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final t0()Lb93;
    .locals 3

    .line 1
    iget-object p0, p0, Lr63;->e:Lsu6;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lb93;

    .line 7
    .line 8
    iget-object v1, p0, Lsu6;->a:Lwm2;

    .line 9
    .line 10
    iget v1, v1, Lvc7;->n:I

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/io/OutputStream;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, v0, Lb93;->b:Z

    .line 17
    .line 18
    iput-object p0, v0, Lb93;->a:Lsu6;

    .line 19
    .line 20
    new-instance p0, La93;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lwn6;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    iput-object v1, v2, Lwn6;->a:[B

    .line 33
    .line 34
    iput-object v2, p0, La93;->b:Lwn6;

    .line 35
    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    iput-wide v1, p0, La93;->a:J

    .line 39
    .line 40
    iput-object p0, v0, Lb93;->c:La93;

    .line 41
    .line 42
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "File{fileId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lmm2;->c:Lnr6;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", fileName=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lmm2;->d:Lfi7;

    .line 19
    .line 20
    invoke-virtual {p0}, Lfi7;->b()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, "\'}"

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
