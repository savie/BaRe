.class public final Ldi9;
.super Lse9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lci9;

.field public final b:Ljava/lang/String;

.field public final c:Lbi9;

.field public final d:Lse9;


# direct methods
.method public constructor <init>(Lci9;Ljava/lang/String;Lbi9;Lse9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldi9;->a:Lci9;

    .line 5
    .line 6
    iput-object p2, p0, Ldi9;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Ldi9;->c:Lbi9;

    .line 9
    .line 10
    iput-object p4, p0, Ldi9;->d:Lse9;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object p0, p0, Ldi9;->a:Lci9;

    .line 2
    .line 3
    sget-object v0, Lci9;->d:Lci9;

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
    instance-of v0, p1, Ldi9;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    check-cast p1, Ldi9;

    .line 8
    .line 9
    iget-object v0, p1, Ldi9;->c:Lbi9;

    .line 10
    .line 11
    iget-object v2, p0, Ldi9;->c:Lbi9;

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget-object v0, p1, Ldi9;->d:Lse9;

    .line 17
    .line 18
    iget-object v2, p0, Ldi9;->d:Lse9;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p1, Ldi9;->b:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p0, Ldi9;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object p1, p1, Ldi9;->a:Lci9;

    .line 37
    .line 38
    iget-object p0, p0, Ldi9;->a:Lci9;

    .line 39
    .line 40
    if-eq p1, p0, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Ldi9;->d:Lse9;

    .line 2
    .line 3
    iget-object v1, p0, Ldi9;->a:Lci9;

    .line 4
    .line 5
    const-class v2, Ldi9;

    .line 6
    .line 7
    iget-object v3, p0, Ldi9;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Ldi9;->c:Lbi9;

    .line 10
    .line 11
    filled-new-array {v2, v3, p0, v0, v1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Ldi9;->c:Lbi9;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ldi9;->d:Lse9;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Ldi9;->a:Lci9;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, ", dekParsingStrategy: "

    .line 20
    .line 21
    const-string v4, ", dekParametersForNewKeys: "

    .line 22
    .line 23
    const-string v5, "LegacyKmsEnvelopeAead Parameters (kekUri: "

    .line 24
    .line 25
    iget-object p0, p0, Ldi9;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v5, p0, v3, v0, v4}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, ", variant: "

    .line 32
    .line 33
    const-string v3, ")"

    .line 34
    .line 35
    invoke-static {p0, v1, v0, v2, v3}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
