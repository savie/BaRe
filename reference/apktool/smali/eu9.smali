.class public final Leu9;
.super Lcr9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ldu9;


# direct methods
.method public constructor <init>(IILdu9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Leu9;->a:I

    .line 5
    .line 6
    iput p2, p0, Leu9;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Leu9;->c:Ldu9;

    .line 9
    .line 10
    return-void
.end method

.method public static b()Ll22;
    .locals 3

    .line 1
    new-instance v0, Ll22;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1}, Ll22;-><init>(BI)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Ll22;->b:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v1, v0, Ll22;->c:Ljava/lang/Object;

    .line 13
    .line 14
    sget-object v1, Ldu9;->f:Ldu9;

    .line 15
    .line 16
    iput-object v1, v0, Ll22;->d:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object p0, p0, Leu9;->c:Ldu9;

    .line 2
    .line 3
    sget-object v0, Ldu9;->f:Ldu9;

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

.method public final c()I
    .locals 2

    .line 1
    sget-object v0, Ldu9;->f:Ldu9;

    .line 2
    .line 3
    iget v1, p0, Leu9;->b:I

    .line 4
    .line 5
    iget-object p0, p0, Leu9;->c:Ldu9;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    sget-object v0, Ldu9;->c:Ldu9;

    .line 11
    .line 12
    if-ne p0, v0, :cond_1

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x5

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    sget-object v0, Ldu9;->d:Ldu9;

    .line 18
    .line 19
    if-ne p0, v0, :cond_2

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x5

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    sget-object v0, Ldu9;->e:Ldu9;

    .line 25
    .line 26
    if-ne p0, v0, :cond_3

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x5

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    const-string p0, "Unknown variant"

    .line 32
    .line 33
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Leu9;

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
    check-cast p1, Leu9;

    .line 8
    .line 9
    iget v0, p1, Leu9;->a:I

    .line 10
    .line 11
    iget v2, p0, Leu9;->a:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Leu9;->c()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Leu9;->c()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    iget-object p1, p1, Leu9;->c:Ldu9;

    .line 26
    .line 27
    iget-object p0, p0, Leu9;->c:Ldu9;

    .line 28
    .line 29
    if-ne p1, p0, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Leu9;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Leu9;->b:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Leu9;->c:Ldu9;

    .line 14
    .line 15
    const-class v2, Leu9;

    .line 16
    .line 17
    filled-new-array {v2, v0, v1, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Leu9;->c:Ldu9;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ", "

    .line 8
    .line 9
    const-string v2, "-byte tags, and "

    .line 10
    .line 11
    const-string v3, "AES-CMAC Parameters (variant: "

    .line 12
    .line 13
    iget v4, p0, Leu9;->b:I

    .line 14
    .line 15
    invoke-static {v3, v0, v1, v4, v2}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "-byte key)"

    .line 20
    .line 21
    iget p0, p0, Leu9;->a:I

    .line 22
    .line 23
    invoke-static {v0, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
