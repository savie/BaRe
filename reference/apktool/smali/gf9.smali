.class public final Lgf9;
.super Lse9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Lef9;

.field public final f:Lff9;


# direct methods
.method public constructor <init>(IIIILef9;Lff9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lgf9;->a:I

    .line 5
    .line 6
    iput p2, p0, Lgf9;->b:I

    .line 7
    .line 8
    iput p3, p0, Lgf9;->c:I

    .line 9
    .line 10
    iput p4, p0, Lgf9;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lgf9;->e:Lef9;

    .line 13
    .line 14
    iput-object p6, p0, Lgf9;->f:Lff9;

    .line 15
    .line 16
    return-void
.end method

.method public static b()Lfm1;
    .locals 2

    .line 1
    new-instance v0, Lfm1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lfm1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v1, v0, Lfm1;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object v1, v0, Lfm1;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object v1, v0, Lfm1;->e:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v1, v0, Lfm1;->a:Ljava/lang/Object;

    .line 16
    .line 17
    sget-object v1, Lef9;->e:Lef9;

    .line 18
    .line 19
    iput-object v1, v0, Lfm1;->f:Ljava/lang/Object;

    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lgf9;->e:Lef9;

    .line 2
    .line 3
    sget-object v0, Lef9;->e:Lef9;

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lgf9;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lgf9;

    .line 8
    .line 9
    iget v0, p1, Lgf9;->a:I

    .line 10
    .line 11
    iget v2, p0, Lgf9;->a:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p1, Lgf9;->b:I

    .line 16
    .line 17
    iget v2, p0, Lgf9;->b:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget v0, p1, Lgf9;->c:I

    .line 22
    .line 23
    iget v2, p0, Lgf9;->c:I

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget v0, p1, Lgf9;->d:I

    .line 28
    .line 29
    iget v2, p0, Lgf9;->d:I

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    iget-object v0, p1, Lgf9;->e:Lef9;

    .line 34
    .line 35
    iget-object v2, p0, Lgf9;->e:Lef9;

    .line 36
    .line 37
    if-ne v0, v2, :cond_1

    .line 38
    .line 39
    iget-object p1, p1, Lgf9;->f:Lff9;

    .line 40
    .line 41
    iget-object p0, p0, Lgf9;->f:Lff9;

    .line 42
    .line 43
    if-ne p1, p0, :cond_1

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lgf9;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v0, p0, Lgf9;->b:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget v0, p0, Lgf9;->c:I

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget v0, p0, Lgf9;->d:I

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v6, p0, Lgf9;->e:Lef9;

    .line 26
    .line 27
    iget-object v7, p0, Lgf9;->f:Lff9;

    .line 28
    .line 29
    const-class v1, Lgf9;

    .line 30
    .line 31
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lgf9;->e:Lef9;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lgf9;->f:Lff9;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, ", hashType: "

    .line 14
    .line 15
    const-string v3, ", "

    .line 16
    .line 17
    const-string v4, "AesCtrHmacAead Parameters (variant: "

    .line 18
    .line 19
    invoke-static {v4, v0, v2, v1, v3}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "-byte IV, and "

    .line 24
    .line 25
    const-string v2, "-byte tags, and "

    .line 26
    .line 27
    iget v3, p0, Lgf9;->c:I

    .line 28
    .line 29
    iget v4, p0, Lgf9;->d:I

    .line 30
    .line 31
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lgf9;->a:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "-byte AES key, and "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget p0, p0, Lgf9;->b:I

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, "-byte HMAC key)"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
